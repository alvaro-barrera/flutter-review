import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/pleople.jpg";
  String name = "Juan";
  String info = "1 review 5 photos";
  String comment = "Esto es un comentario de prueba";

  Review(this.pathImage, this.name, this.info, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13,
          fontWeight: FontWeight.w900
          // color: Color(0xFFa3a5a7),
        ),
      ),
    );
    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20
      ),
      child: Text(
        info,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13,
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17,
        ),
      ),
    );

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment,
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20
      ),
      width: 80,
      height: 80,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetail,
      ],
    );
  }
}