import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../commmon widget/navigartion_bar_with_start.dart';
import '../commmon widget/navigation_bar.dart';
import 'milestone/create_milestone.dart';
import 'widgets/site_weather.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisSize: MainAxisSize.min,
        children: [
          //topbar
          Container(
            height: 50.0,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 235, 235, 235),
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (isDesktop(context))
                  Container(
                    child: Row(
                      children: [
                        Container(
                          color: Color.fromARGB(255, 204, 228, 246),
                          child: Icon(
                            Ionicons.hammer_outline,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Build',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          AntDesign.caretdown,
                          color: Colors.black,
                          size: 8,
                        ),
                      ],
                    ),
                  ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Fontisto.bell,
                        color: Color.fromARGB(255, 88, 90, 94),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Sample Project - Seaport Civic Center',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Fontisto.earth,
                          size: 12,
                        ),
                      ),
                      Icon(
                        FontAwesome.caret_down,
                        size: 12,
                      ),
                      Icon(
                        Icons.stars,
                        color: Color(0xFF50D2C1),
                        size: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text('21 days remaining on 2 of your trials'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.blue,
                      child: Text("View buying options "),
                    ),
                    Icon(
                      FontAwesome.question_circle,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Techzo Unity'),
                    ),
                    Icon(
                      FontAwesome.caret_down,
                      size: 12,
                    ),
                  ],
                ),
              ],
            ),
          ),

          //body

          Expanded(
            child: Row(
              children: [
                if (isDesktop(context))
                  Expanded(
                    flex: 1,
                    child: ListView(
                      children: <Widget>[
                        NavigationBarLeft(
                            color: Colors.white,
                            icon: SimpleLineIcons.home,
                            title: 'Home',
                            active: true),
                        NavigationBarLeftWithStar(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: AntDesign.codesquareo,
                            title: 'Sheets'),
                        NavigationBarLeftWithStar(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: Feather.file,
                            title: 'Files'),
                        NavigationBarLeft(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: AntDesign.checkcircleo,
                            title: 'Issues',
                            active: false),
                        NavigationBarLeft(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: Foundation.clipboard_notes,
                            title: 'Forms',
                            active: false),
                        NavigationBarLeft(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: Ionicons.images_outline,
                            title: 'Photos',
                            active: false),
                        NavigationBarLeft(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: MaterialCommunityIcons.message_alert_outline,
                            title: 'RFIs',
                            active: false),
                        NavigationBarLeft(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: MaterialCommunityIcons.stamper,
                            title: 'Submittals',
                            active: false),
                        NavigationBarLeft(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: MaterialCommunityIcons.account_group_outline,
                            title: 'Meetings',
                            active: false),
                        NavigationBarLeft(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: MaterialCommunityIcons.chart_timeline,
                            title: 'Schedule',
                            active: false),
                        NavigationBarLeft(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: AntDesign.gift,
                            title: 'Assets',
                            active: false),
                        NavigationBarLeft(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: Entypo.text_document,
                            title: 'Reports',
                            active: false),
                        NavigationBarLeft(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: MaterialIcons.group,
                            title: 'Members',
                            active: false),
                        NavigationBarLeft(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: Ionicons.swap_horizontal_outline,
                            title: 'Bridge',
                            active: false),
                        NavigationBarLeft(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: SimpleLineIcons.settings,
                            title: 'Settings',
                            active: false),
                        Divider(
                          height: 1.5,
                          color: Color.fromARGB(255, 153, 151, 151),
                        ),
                        NavigationBarLeft(
                            color: Color.fromARGB(255, 245, 245, 245),
                            icon: MaterialCommunityIcons.arrow_collapse_left,
                            title: '',
                            active: false),
                      ],
                    ),
                  ),
                Expanded(
                  flex: 6,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Welcome, Teczo',
                                      style: TextStyle(
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      '''Here's what's happening on your project today.''',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 68, 66, 66)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/body_image.svg',
                                    theme: SvgTheme(currentColor: Colors.green),
                                    fit: BoxFit.none,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/body_image1.svg',
                                    fit: BoxFit.none,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('300 Mission Street'),
                                    Text('San Francisco, CA'),
                                    Text('94105 United States'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch, 
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CreateMileStone(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Quick Links',
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Divider(
                                                  height: 1.5,
                                                  color: Color.fromARGB(
                                                      255, 224, 224, 224),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Icon(MaterialCommunityIcons
                                                                .google_spreadsheet),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                              '0',
                                                              style: TextStyle(
                                                                fontSize: 22,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        92,
                                                                        91,
                                                                        91),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            235,
                                                                            235,
                                                                            235),
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        15),
                                                            child: Row(
                                                              children: [
                                                                Icon(Icons.add),
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Text('Sheet'),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                      ],
                                                    ),
                                                    VerticalDivider(
                                                      color: Colors.black,
                                                      thickness: 2,
                                                    ),
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Icon(
                                                                AntDesign.team),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                              '1',
                                                              style: TextStyle(
                                                                fontSize: 22,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        92,
                                                                        91,
                                                                        91),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            235,
                                                                            235,
                                                                            235),
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        15),
                                                            child: Row(
                                                              children: [
                                                                Icon(Icons.add),
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Text('Members'),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color.fromARGB(
                                                    255, 235, 235, 235),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Siteweather(),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'work status',
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Divider(
                                                  height: 1.5,
                                                  color: Color.fromARGB(
                                                      255, 224, 224, 224),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                      "No Project work created"),
                                                ),
                                              ],
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color.fromARGB(
                                                    255, 235, 235, 235),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          height: 200,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Bridge',
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Divider(
                                                  height: 1.5,
                                                  color: Color.fromARGB(
                                                      255, 224, 224, 224),
                                                ),
                                                Text(
                                                  "view more",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color.fromARGB(
                                                    255, 235, 235, 235),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          height: 200,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              flex: 2,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Recent Activity',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Divider(
                                        height: 1.5,
                                        color:
                                            Color.fromARGB(255, 224, 224, 224),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        width: double.infinity,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('View All'),
                                            Icon(
                                              MaterialIcons.keyboard_arrow_down,
                                              size: 18,
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 235, 235, 235),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      SizedBox(
                                        height: 80,
                                      ),
                                      Center(
                                          child: Text(
                                              'No Project Activity to Diaplay')),
                                      SizedBox(
                                        height: 80,
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
                              ),
                              flex: 1,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
