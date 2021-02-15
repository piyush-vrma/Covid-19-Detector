import 'dart:io';
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
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _isLoading = false;
  File _image;
  List _output;

  @override
  void initState() {
    _isLoading = true;
    loadModel().then((val) {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid 19 Detector'),
      ),
      body: _isLoading
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            )
          : Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 16.0,
                  ),
                  _image == null
                      ? Container()
                      : Image.file(
                          _image,
                          fit: BoxFit.fill,
                        ),
                  SizedBox(
                    height: 16.0,
                  ),
                  _output == null ? Text("") : Text("${_output[0]['label']}"),
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.image),
        onPressed: () {
          chooseImage();
        },
      ),
    );
  }

  chooseImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _isLoading = true;
        _image = image;
      });
    }
    runModelOnImage(_image);
  }

  runModelOnImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      imageMean: 127.5,
      imageStd: 127.5,
      threshold: 0.5,
    );
    setState(() {
      _isLoading = false;
      _output = output;
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: 'assets/model_unquant.tflite',
      labels: 'assets/labels.txt',
    );
  }
}
