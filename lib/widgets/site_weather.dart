import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Siteweather extends StatefulWidget {
  const Siteweather({super.key});

  @override
  State<Siteweather> createState() => _SiteweatherState();
}

class _SiteweatherState extends State<Siteweather> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Site weather',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              height: 1.5,
              color: Color.fromARGB(255, 224, 224, 224),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  MaterialCommunityIcons.weather_partly_cloudy,
                  size: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Partly cloudy', style: TextStyle(fontSize: 18)),
                    SizedBox(
                      height: 5,
                    ),
                    Text('High: 62 °F',
                        style: TextStyle(fontSize: 10, color: Colors.grey)),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Low: 62 °F',
                        style: TextStyle(fontSize: 10, color: Colors.grey)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Wind: 5 MPS, WSW',
                        style: TextStyle(fontSize: 10, color: Colors.grey)),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Humidity: 77%',
                        style: TextStyle(fontSize: 10, color: Colors.grey)),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Precipitions: 0.0 in',
                        style: TextStyle(fontSize: 10, color: Colors.grey)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 1.5,
              color: Color.fromARGB(255, 224, 224, 224),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Show More',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
                Icon(
                  MaterialIcons.keyboard_arrow_down,
                  size: 18,
                  color: Colors.blue,
                )
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 235, 235, 235),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(4)),
    );
  }
}
