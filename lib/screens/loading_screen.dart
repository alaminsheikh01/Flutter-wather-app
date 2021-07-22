import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(position);
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    String myMargin =
        'abc'; // I have parese this value as a double so here need to int value as a string. Otherwise this is false value.
    double myMarginAsAdobule;

    try {
      myMarginAsAdobule = double.parse(myMargin);
    } catch (e) {
      // if try block is false then catch block will run.
      print(e);
      //myMarginAsAdobule = 20.0;
    }

    return Scaffold(
      body: Container(
        // if myMarginAsadouble is not true then 100 will run as a margin.
        margin: EdgeInsets.all(myMarginAsAdobule ?? 100.0),
        color: Colors.red,
      ),
    );
  }
}
