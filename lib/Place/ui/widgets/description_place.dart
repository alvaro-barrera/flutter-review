import 'package:flutter/material.dart';
import 'file:///D:/platzi_trips_app/lib/widgets/button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace, descriptionPlace;
  int starts;
  String descriptionDummy = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id eros urna. Aliquam vitae enim quis magna hendrerit venenatis. Nullam id quam consequat, lacinia quam eget, iaculis neque. Maecenas vestibulum sagittis sapien sit amet fringilla. Mauris dictum velit quis varius pharetra.";

  DescriptionPlace(this.namePlace, this.descriptionPlace, this.starts);

  @override
  Widget build(BuildContext context) {
    // TODO: implement

    // ESTRELLAS VACÍAS
    final star_border = Container(
      margin: EdgeInsets.only(
          top: 323,
          right: 3
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFd2C611),
      ),
    );
    // ESTRELLAS INCOMPLETAS
    final star_half = Container(
      margin: EdgeInsets.only(
          top: 323,
          right: 3
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFd2C611),
      ),
    );
    // ESTRELLAS COMPLETAS
    final star = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFd2C611),
      ),
    );
    // TÍTULO ITEM AL LADO DE ESTRELLAS
    final title_star = Row (
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320,
            left: 20,
            right: 20
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_border,
          ],
        )
      ],
    );
    // DESCRIPCION DE ITEM
    final description = Container(
      margin: new EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20
      ),
      child: new Text(
        descriptionPlace,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );



    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        title_star,
        description,
        ButtonPurple("Navegar")
      ],
    );
    
    
  }
}