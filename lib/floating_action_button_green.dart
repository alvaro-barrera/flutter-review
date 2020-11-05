import 'package:flutter/material.dart';

class FloattingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloattingActionButtonGreen();
  }

}

class _FloattingActionButtonGreen extends State<FloattingActionButtonGreen> {
  void onPressedFav(){
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Agregaste a Favoritos"),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        Icons.favorite_border
      ),
    );
  }
}