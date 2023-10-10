import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper{
  static final DbHelper _instance = DbHelper._internal();
  factory DbHelper() {
    return _instance;
  }
  DbHelper._internal();

  static Database? _database;
  static const String _dbPath = "Trans.db";
  Future<Database> _initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _dbPath);
    return await openDatabase(path,
        version: 1);
  }





}