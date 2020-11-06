import 'package:flutter/material.dart';
import 'file:///D:/platzi_trips_app/lib/Place/ui/widgets/card_image_list.dart';
import 'file:///D:/platzi_trips_app/lib/widgets/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        GradientBack("Bienvenido"),
        CardImageList()
      ],
    );
  }
}