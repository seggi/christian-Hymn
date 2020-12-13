import 'dart:ui';

import 'package:flutter/material.dart';
import 'schedule_date_list.dart';

class Verses extends StatefulWidget {
  const Verses({Key key}) : super(key : key);
  @override 
  _Verses createState() => _Verses();
}


class _Verses extends State<Verses> {

  @override 
  Widget build(BuildContext context){
    final DataVerses verses = ModalRoute.of(context).settings.arguments;
    final chapter = verses.monthVerses.entries.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('${verses.months}'),
        backgroundColor: Colors.blueGrey,
      ),

      body: ListView.builder(
        itemCount: chapter.length,//verses.monthVerses.length,
        itemBuilder: (context, index){
          final verselist = chapter[index];
          return ListTile(
            title: RichText(
              text: TextSpan(
                text: '${verselist.key} ',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              children: <TextSpan>[
                  TextSpan(
                    text: ' ${verselist.value}',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    )
                  )
                ]
              ),
            ),
          );
        }
      ),
    );
  }
}