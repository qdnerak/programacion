import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hikeplaces/fab_green.dart';

class CardImage extends StatelessWidget{
  String path;
  CardImage(this.path);

  @override
  Widget build(BuildContext context){
    //cardimage
    final cardImage = Padding(
      padding: EdgeInsets.only(
        top: 100,
        right: 15,
        bottom: 30
      ),
      child: Container(
        width: 200,
        padding: EdgeInsets.only(
            top: 60
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  path,
                ),
                fit: BoxFit.cover
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black45,
                  blurRadius: 15,
                  offset: Offset(
                      0, 10
                  )
              )
            ]
        ),
      ),
    );
    //satack
    final stackCardImage = Stack(
      alignment: Alignment(0.7 , 0.95),
      children: <Widget>[
        cardImage,
        FabGreen(),

      ],
    );

    return stackCardImage;
  }
}