import 'dart:ui';
import 'package:flutter/material.dart';
import "package:only_believe/pages/home.dart";


void main ()  => runApp(OnlyBelieveApp());



class OnlyBelieveApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Only Believe',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      home: Home()
    );
  }
}