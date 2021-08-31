import 'package:flutter/material.dart';
import 'package:hikeplaces/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final reviewList = Column(
      children: <Widget>[
        Review("assets/images/foto.jpg","Laura Torrez","1 review-4 fotos",4,"muy buen lugar para visitar"),
        Review("assets/images/foto2.jpg","Mariana Flores","5 review-2 fotos",5,"el lugar estuvo hermoso"),
        Review("assets/images/foto3.jpg","Susan Tola","2 review-7 fotos",2,"no me gusto mucho el clima"),
        Review("assets/images/foto4.jpg","Raquel Morales","4 review-3 fotos",4,"fue una gran experiencia"),
        Review("assets/images/foto5.jpg","Daniela Gantier","3 review-5 fotos",3,"me gusto la comida del lugar"),

      ],
    );
    return reviewList;
  }
}