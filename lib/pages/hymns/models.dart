
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbAllHymns {
  Database _database ;

  Future openDb() async{

     var databasesPath = await getDatabasesPath();
     var path = join(databasesPath, "christianhymns.db");

     //delete existing if any
     await deleteDatabase(path);

     //Make sure the parent directory exists
     try {
       await Directory(dirname(path)).create(recursive: true);
     } catch (_) {}

    // Copy from asset
    ByteData data = await rootBundle.load(join("assets", "christianhymns.db"));
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await new File(path).writeAsBytes(bytes, flush: true);

    // open the database
    _database = await openDatabase(path, readOnly: false);
  }

  //This function retrieve data from db
   Future<List<AllHymns>> getCantiqueInpiresList() async {
     await openDb();
     final List<Map<String, dynamic>> maps =
         await _database.query('cantiqueinspire');
     return List.generate(maps.length, (i) {
       return AllHymns(
         id: maps[i]['id'],
         title: maps[i]['title'],
         hymn: maps[i]['hymn'],
       );
     });
   }

   Future<List<AllHymns>> getCroiSeulementList() async {
     await openDb();
     final List<Map<String, dynamic>> maps =
         await _database.query('croiseulement');
     return List.generate(maps.length, (i) {
       return AllHymns(
         id: maps[i]['id'],
         title: maps[i]['title'],
         hymn: maps[i]['hymn'],
       );
     });
   }
   
   Future<List<AllHymns>> getNyimboList() async {
     await openDb();
     final List<Map<String, dynamic>> maps =
         await _database.query('nyimbozaokovu');
     return List.generate(maps.length, (i) {
       return AllHymns(
         id: maps[i]['id'],
         title: maps[i]['title'],
         hymn: maps[i]['hymn'],
       );
     });
   }


   Future<List<AllHymns>> getOnlyBelieveList() async {
     await openDb();
     final List<Map<String, dynamic>> maps =
         await _database.query('onlybelieve');
     return List.generate(maps.length, (i) {
       return AllHymns(
         id: maps[i]['id'],
         title: maps[i]['title'],
         hymn: maps[i]['hymn'],
       );
     });
   }
  Future closeDb() async{
    await openDb();
    //_database.close();
  }
}


class AllHymns {
  int id;
  String title;
  String hymn;

  AllHymns({@required this.hymn, @required this.title, this.id});
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'hymn': hymn,
    };
  }

  AllHymns.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.title = map['title'];
    this.hymn = map['hymn'];
  }

}


// Build the list facilitate the retrieve of data from database
