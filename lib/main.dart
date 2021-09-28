import 'package:flutter/material.dart';
import 'package:hikeplaces/places.dart';
import 'package:hikeplaces/places_cupertino.dart';
import 'home.dart';

void main(){
  runApp(MyApp());
}
class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "places",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: PlacesCupertino(),
    );

  }
}