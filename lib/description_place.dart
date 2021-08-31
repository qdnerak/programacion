
import 'package:flutter/material.dart';
import 'package:hikeplaces/rounded_button.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget{
  //variables
  String textoTitulo;
  int cantidadEstreellas;
  String textoDescripcion;

  DescriptionPlace(this.textoDescripcion,this.textoTitulo,this.cantidadEstreellas);

  @override
  Widget build(BuildContext context) {
    final titulo = Container(
      margin: EdgeInsets.only(
        right: 18,
      ),
      child: Text(
        textoTitulo,
            style: TextStyle(
              fontFamily: "Lato",
          fontSize: 40,
              fontWeight: FontWeight.bold
      ),
      ),
    );

    final estrella = Container(
      margin: EdgeInsets.only(
        right: 5,

      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final estrellaBorde= Container(
      child: Icon(
        Icons.star_border,
        color: Colors.black54,
      ),


    );
   //fila estrellas
    List<Container> estrellas = new List();
    for(int i=0; i<5; i++){
      if(i<cantidadEstreellas){
        estrellas.add(estrella);
      }
      else{
        estrellas.add(estrellaBorde);

      }
    }
    final filaEstrellas = Row(
      children: estrellas
    );

    final filaTitulo = Row(
      children: <Widget>[
        titulo,
        filaEstrellas,

      ],

    );
    final descripcion = Container(
      margin:  EdgeInsets.only(
        top: 10
      ),
      child: Text(
        textoDescripcion,
        style: TextStyle(
          fontFamily: "Lato",
          color: Colors.black54,
      ),
      ),
    );

    final descriptionPlace = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        filaTitulo,
        descripcion,
        RoundedButton("Navigate")
      ],
    );
    return descriptionPlace;
  }


}