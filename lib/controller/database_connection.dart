import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseConnection{
  Future<Database> setDatabase() async{
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path,'budget_tracker');
    var database = await openDatabase(path,version: 1,onCreate: _createDatabase);
    return database;
  }

  Future<void> _createDatabase(Database database ,int version) async{
    String sql =  "CREATE TABLE users (id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,email TEXT, password TEXT)";

  await database.execute(sql);
  }


}