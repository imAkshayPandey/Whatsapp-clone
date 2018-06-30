import 'package:flutter/material.dart';
import 'home.dart';
import 'package:camera/camera.dart';
import 'dart:async';


List<CameraDescription> cameras;
Future<Null> main() async{
   cameras=await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xff028c7e),
          accentColor: Color(0xff075e54)), 
          //0xff128c7e
      home: new WhatsAppHome(cameras),
      debugShowCheckedModeBanner: false,
      color: Theme.of(context).primaryColor

      

      // 0xff075e54
    );
  }
}
