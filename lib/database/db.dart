import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tb3_appmobi/home.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'empresa_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE empresas(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nombre TEXT,
        servicios TEXT,
        ubicacion TEXT,
        contacto TEXT,
        calificacion REAL
      )
    ''');
  }

  Future<void> insertEmpresa(Empresa empresa) async {
    final db = await database;
    await db.insert('empresas', empresa.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Empresa>> getEmpresas() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('empresas');
    return List.generate(maps.length, (i) {
      return Empresa(
        id: maps[i]['id'],
        nombre: maps[i]['nombre'],
        servicios: maps[i]['servicios'],
        ubicacion: maps[i]['ubicacion'],
        contacto: maps[i]['contacto'],
        calificacion: maps[i]['calificacion'],
      );
    });
  }
}
