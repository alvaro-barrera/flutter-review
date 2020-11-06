import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'file:///D:/platzi_trips_app/lib/User/ui/screens/profile_trip.dart';
import 'file:///D:/platzi_trips_app/lib/Place/ui/screens/search_trip.dart';

import 'Place/ui/screens/home_trip.dart';

class LayoutTripCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
                BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.indigo),
                label: ""
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.indigo),
                label: ""
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.indigo),
                label: ""
                ),
              ]
          ),
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrip(),
                );
                break;
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => SearchTrip(),
                );
                break;
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => ProfileTrip(),
                );
                break;
            }
          },
        ),
    );
  }

}