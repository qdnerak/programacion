import 'package:flutter/material.dart';
import 'package:hikeplaces/card_image.dart';
import 'package:hikeplaces/card_image_list.dart';
import 'package:hikeplaces/gradient_back.dart';

class HomeAppBar extends StatelessWidget{
  String textoTitulo;
  HomeAppBar(this.textoTitulo);
  @override
  Widget build(DisposableBuildContext){
    //titulo
    final titulo = Container(
      margin: EdgeInsets.only(
        top: 40,
        left: 30,
      ),
      child: Text(
        textoTitulo,
        style: TextStyle(
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    );
    //appBar
    final appBar = Stack(
      children: <Widget>[
        GradientBack(),
        titulo,
        CardImageList()
      ]
    );
    return appBar;
  }
}