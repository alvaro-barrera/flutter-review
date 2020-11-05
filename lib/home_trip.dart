import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrip extends StatelessWidget {
  String descriptionDummy = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id eros urna. Aliquam vitae enim quis magna hendrerit venenatis. Nullam id quam consequat, lacinia quam eget, iaculis neque. Maecenas vestibulum sagittis sapien sit amet fringilla. Mauris dictum velit quis varius pharetra.";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Titulo item", descriptionDummy, 4),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}