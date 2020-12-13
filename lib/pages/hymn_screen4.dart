import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'only_believe.dart';



 class Hymn extends StatefulWidget {
  const Hymn({Key key,}) : super(key: key);
  
  @override 
 
  _Hymn createState() => _Hymn();

 }

 class _Hymn extends State<Hymn> {
 @override 
 Widget build(BuildContext context) {
   //this variable allow us to get data from the previews screens
   final HymnList hymns = ModalRoute.of(context).settings.arguments;
   return Scaffold(
     appBar: AppBar(
       title: Text(hymns.title),
       backgroundColor: Colors.blueGrey,
     ),

     body: Padding( 
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Text(
              hymns.hymn,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
              ),
              ) 
          ]//here we access the the hymns from previews screen
        )
      )
   );
 }
}