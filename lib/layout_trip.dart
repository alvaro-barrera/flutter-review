import 'package:flutter/material.dart';
import 'file:///D:/platzi_trips_app/lib/User/ui/screens/profile_trip.dart';
import 'file:///D:/platzi_trips_app/lib/Place/ui/screens/search_trip.dart';

import 'Place/ui/screens/home_trip.dart';

class LayoutTrip extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LayoutTrip();
  }
}

class _LayoutTrip extends State<LayoutTrip> {
  int indexTap = 0;
  final List <Widget> widgetsChildren = [
    HomeTrip(),
    SearchTrip(),
    ProfileTrip(),
  ];
  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        body: widgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: ""
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: ""
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: ""
                ),
              ]
          ),
        ),
    );
  }
}