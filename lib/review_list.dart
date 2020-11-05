import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/people.jpg", "User test", "1 review", "Cool comment"),
        Review("assets/img/people.jpg", "User test", "1 review", "Cool comment"),
        Review("assets/img/people.jpg", "User test", "1 review", "Cool comment"),
        Review("assets/img/people.jpg", "User test", "1 review", "Cool comment"),
      ],
    );
  }
}