import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutterwhatsapp/whatsapp_home.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WhatsApp Clone Using Flutter",
      theme: new ThemeData(
        primaryColor: new Color(0xff078E54),
        accentColor: new Color(0xff25D966),
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(cameras:cameras),
    );
  }
}
