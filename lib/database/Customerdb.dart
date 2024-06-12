import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:tb3_appmobi/modelo/customer.dart';

class CustomerDB {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'dbCustomer.db'),
      onCreate: (database, version) async {
        await database.execute(
          'CREATE TABLE customers(id INTEGER PRIMARY KEY AUTOINCREMENT, nombreCompleto TEXT, apellidoPaterno TEXT, apellidoMaterno TEXT, telefono TEXT, direccion TEXT, correo TEXT, password TEXT, imagenUrl TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<void> insertarCustomer(Customer customer) async {
    final db = await initializeDB();
    await db.insert('customers', customer.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Customer>> listAll() async {
    final db = await initializeDB();
    final List<Map<String, dynamic>> query = await db.query('customers');
    return query.map((e) => Customer.fromMap(e)).toList();
  }

  Future<void> deleteCustomer(int id) async {
    final db = await initializeDB();
    await db.delete('customers', where: 'id=?', whereArgs: [id]);
  }
}