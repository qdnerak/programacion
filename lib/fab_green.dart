import 'package:flutter/material.dart';

class FabGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FabGreen();
  }
}
class _FabGreen extends State <FabGreen> {
  var _FabIcon = Icons.favorite_border;
  void onPresedFav (){
    //setState Actualiza el estado del widget
    setState(() {
      if(_FabIcon == Icons.favorite_border){
        _FabIcon = Icons.favorite;
      }
      else{
        _FabIcon = Icons.favorite_border;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final fabGreen = FloatingActionButton(
      backgroundColor: Color(0xFF16db58),
      mini: true,
      tooltip: "Fab",
      child: Icon(
        _FabIcon,
      ),
      onPressed: onPresedFav,
    );
    return fabGreen;
  }
}
