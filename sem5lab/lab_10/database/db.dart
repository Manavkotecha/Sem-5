import 'package:sem_5/sem5lab/lab_10/utils/import_export.dart';

class DatabaseHelper{
  static final DatabaseHelper _instance = DatabaseHelper._();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._();

  static Database? _database;

  Future<Database> get database async{
    return _database ??= await initDB();
  }

  Future<Database> initDB() async{
    String path = join(await getDatabasesPath(), 'student.db');
    return await openDatabase(
      path,
      version:1,
      onCreate:(db,version) async {
        await db.execute('''
          CREATE TABLE students (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL UNIQUE,
            email TEXT NOT NULL UNIQUE
          )
        ''');
      }
    );
  }

  Future<void> insertStudent(Student student) async {
    final db = await database;
    await db.insert('students', student.toMap());
  }

  Future<List<Student>> getAllStudents() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('students');
    return maps.map((e) => Student.fromMap(e)).toList();
  }

  Future<void> updateStudent(Student student) async {
    final db = await database;
    await db.update('students', student.toMap(), where: 'id = ?', whereArgs: [student.id]);
  }
  Future<void> deleteStudent(int id) async {
    final db = await database;
    await db.delete('students', where: 'id = ?', whereArgs: [id]);
  }
}