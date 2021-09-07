
import 'package:flutter/material.dart';
import 'package:hikeplaces/card_image.dart';
import 'package:hikeplaces/gradient_back.dart';
import 'package:hikeplaces/home_app_Bar.dart';
import 'package:hikeplaces/review.dart';
import 'package:hikeplaces/review_list.dart';

import 'description_place.dart';


class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final descriptionPlace = Container(
    margin: EdgeInsets.only(
      top: 300,
      left: 20,
      right: 20,
    ),
    child: DescriptionPlace("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default  ","Uyuni",4),
    );
    final reviewList = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: ReviewList()
    );


    final boton = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 200,
      ),
      child: MaterialButton(
        minWidth: 200,
        height: 50,
        onPressed: () {},
        color: Colors.blueAccent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
        ),
        child: Text('Navigate', style: TextStyle(color: Colors.white)),
      ),
    );
    final listView = ListView(
      children: <Widget>[
        descriptionPlace,

        reviewList,
      ],
    );


    return Scaffold(
      //appBar: AppBar(
      //  title: Text("My Places"),
      //)
      body: Stack(

        children: <Widget>[
          listView,
          HomeAppBar("Popular")

        ],
      )
    );
  }

}