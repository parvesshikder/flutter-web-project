import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'homepage.dart';

Future<void> main() async {
  // this function makes application always run in portrait mode
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDCQfg4OT930qM7LH8NDPHUkInjlC7JCZE",
      projectId: "flutter-web-project-e4713",
      messagingSenderId: "881903593995",
      appId: "1:881903593995:web:9afb99335b7cbb75a1350e"
    ),
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          primarySwatch: Colors.deepPurple, fontFamily: 'ArtifaktElement'),
    );
  }
}
