import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:tb3_appmobi/modelo/company.dart';

class CompanyDB {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'dbCompany.db'),
      onCreate: (database, version) async {
        await database.execute(
          'CREATE TABLE companies(id INTEGER PRIMARY KEY AUTOINCREMENT, nombreEmpresa TEXT, correoEmpresa TEXT, direccion TEXT, telefono TEXT, password TEXT, imagenUrl TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<void> insertarCompany(Company company) async {
    final db = await initializeDB();
    await db.insert('companies', company.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Company>> listAll() async {
    final db = await initializeDB();
    final List<Map<String, dynamic>> query = await db.query('companies');
    return query.map((e) => Company.fromMap(e)).toList();
  }

  Future<void> deleteCompany(int id) async {
    final db = await initializeDB();
    await db.delete('companies', where: 'id=?', whereArgs: [id]);
  }
}
