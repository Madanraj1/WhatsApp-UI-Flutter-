import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/screens/homepage.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp",
      theme: ThemeData(
          primaryColor: Color(0xff075E54),
          accentColor: Color(0Xff25D366),
          tabBarTheme: TabBarTheme(
            labelColor: Colors.white,
          ),
          textTheme: TextTheme(
              title: TextStyle(color: Colors.white, fontSize: 16),
              body1: TextStyle(color: Colors.black),
              button: TextStyle(color: Colors.white)),
          bottomAppBarColor: Colors.white),
      home: HomaePage(
        camera: cameras,
      ),
    );
  }
}
