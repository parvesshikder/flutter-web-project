import 'package:flutter/material.dart';

class NavigationBarLeft extends StatelessWidget {
  Color color;
  IconData icon;
  String title;
  bool active;

  NavigationBarLeft({ required this.color, required this.icon, required this.active, required this.title});

 

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      // ignore: prefer_const_constructors

      style: ButtonStyle(
          alignment: Alignment.centerLeft,
          padding:
              MaterialStateProperty.all(EdgeInsets.all(20)),
          elevation: MaterialStateProperty.all(0),
          backgroundColor:
              MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<
              RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ))),
      onPressed: () {},

      icon: active == true ? Icon(
        icon,
        color: Colors.blue,
        size: 24.0,
      ): Icon(
        icon,
        color: Colors.black,
        size: 24.0,
      ),
      label: active == true ? Text(
        title,
        style: TextStyle(color: Colors.blue),
      ): Text(
        title,
        style: TextStyle(color: Colors.black),
      ),// <-- Text
    );
  }
}
