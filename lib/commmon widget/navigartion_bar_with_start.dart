import 'package:flutter/material.dart';

class NavigationBarLeftWithStar extends StatelessWidget {
  Color color;
  IconData icon;
  String title;

  NavigationBarLeftWithStar({ required this.color, required this.icon, required this.title});

 

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

      icon: Icon(
        icon,
        color: Colors.black,
        size: 24.0,
      ),
      label: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(width: 20,),
          Icon(Icons.stars, color: Color(0xFF50D2C1), size: 20,),
        ],
      ), // <-- Text
    );
  }
}
