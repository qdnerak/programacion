import 'package:flutter/material.dart';
import 'package:hikeplaces/profile_places.dart';
import 'package:hikeplaces/searh_places.dart';

import 'home.dart';

class Places extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Places();

  }
}
class _Places extends State<Places>{
  int currentIndex = 0;
  List<Widget> pantallas = <Widget> [
    MyHome(),
    SearchPlaces(),
    ProfilePlaces()
  ];

  void cambiarPantalla(int index){
  //setState() actualiza nuestro widget
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold(
    bottomNavigationBar: Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
        primaryColor: Color(0xFF574ACF)
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color:Color(0xFF574ACF)
              ),
              title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.search,
                  color:Color(0xFF574ACF)
              ),
              title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.person,
                  color:Color(0xFF574ACF)
              ),
              title: Text("")
          ),
        ],
        onTap: cambiarPantalla,
      ),
    ),
      body: pantallas[currentIndex],
    );
    return scaffold;
  }
  
}
