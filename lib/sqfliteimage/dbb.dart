import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Database? _database;
List WholeDataList = [];

class LocalDatabase {
  Future get database async {
    if (_database != null) return _database;
    _database = await _initializedDB('Local.db');
    return _database;
  }

  Future _initializedDB(String filepath) async {
    final dbpath = await getDatabasesPath();
    final path = join(dbpath, filepath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
CREATE TABLE Localdata(id INTEGER PRIMARY KEY,
DummyData JSON NOT NULL
)
''');
  }

  Future addDataLocally({wholedata}) async {
    final db = await database;
    await db.insert("Localdata", {"DummyData": wholedata});
    print('${wholedata}Added To database Successfully');
    return 'added';
  }

  Future readalldata() async {
    final db = await database;
    final alldata = await db!.query("Localdata");
    WholeDataList = alldata;
    print(WholeDataList);
    return 'succesfully read';
  }
}