
import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/button_green.dart';
import 'package:platzi_trips_app/widgets/gradient_back.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }

}
class _SignInScreen extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return signInGoogleUI();
  }

  Widget signInGoogleUI(){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack("", null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 37,
                  fontFamily: "Lato",
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              ButtonGreen(text: "Login with gmail",
                  onPressed: (){

                  },
                width: 300,
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }

}