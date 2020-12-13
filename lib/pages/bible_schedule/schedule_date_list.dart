import 'package:flutter/material.dart';

import 'show_bible_verses.dart';
import 'bible_scheduledb.dart';
import 'bible_schedule_models.dart';

class DataVerses{
  String months;
  dynamic monthVerses;

  DataVerses({@required this.months, @required this.monthVerses});

}

class ScheduleDateList extends StatefulWidget {
  const ScheduleDateList({Key key}) : super(key : key);

  @override 
  _ScheduleDateList createState() => _ScheduleDateList();
}

class _ScheduleDateList extends State<ScheduleDateList> {
  final loadmonth = loadMonth();
  final loadsearched = searchList().month.toList();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Le programme de lecture de la bible'),
        backgroundColor: Colors.blueGrey,
      ),

      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: loadsearched.length,
            itemBuilder: (context, index){
            final verses = loadsearched[index];
            return  Card(
                elevation: 1.0,
                child: ListTile(
                      title: Text('$verses'),
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Verses(),
                            settings: RouteSettings(
                              arguments: DataVerses(months: verses, monthVerses: loadMonth()[verses][0])
                            )
                          )
                        );
                      },
                    ),
                );
            }
            ,
          ),
        ),
      ),
    );
  }
}


class VersesList {
  dynamic month;
  dynamic monthData;

  VersesList({this.month, this.monthData}); //this.monthData);

  Map<String, dynamic> toMap(){
    return {
      'month': month,
      'monthData': monthData,
    };
  }
 
  VersesList.fromMap(Map<String, dynamic> maps){
    this.month = maps['month'];
    //this.monthData = maps['monthData'];
  }
}

loadMonth(){
  DateTime _datetime = DateTime.now();
  var biblepro = DbBibleSchedule();
  final pickYear = _datetime.year;

  if(biblepro.isLeapYear(pickYear) == true){
    var books;
    for(var map in nonleapDB){
      books = map;
      return books;
    }
  }

  if(biblepro.isLeapYear(pickYear) == false){
    var books;
    for(var map in leapDB){
      books = map;
      return books;
    }
  }

}

searchList(){
  var booklist = loadMonth();
  return VersesList(month: booklist.keys);
}

