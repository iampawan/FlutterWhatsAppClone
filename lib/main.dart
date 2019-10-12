import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutterwhatsapp/whatsapp_home.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
        backgroundColor: Colors.black54,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        primaryColor: Color(0xff004242),
        accentColor: Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(cameras:cameras),
    );
  }
}
