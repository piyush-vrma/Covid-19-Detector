import 'dart:io';
import 'package:covid19_detector/screens/welcome_screen.dart';
import 'package:covid19_detector/screens/main_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid 19 Detector',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
