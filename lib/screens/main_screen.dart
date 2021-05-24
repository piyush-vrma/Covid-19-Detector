import 'dart:io';
import 'package:covid19_detector/Widgets/backgroundWallpapers.dart';
import 'package:covid19_detector/Widgets/custom_buttons.dart';
import 'package:covid19_detector/Widgets/scrollBehaviour.dart';
import 'package:covid19_detector/screens/faq.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share/share.dart';
import 'package:tflite/tflite.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _isLoading = false;
  File _image;
  List _output;
  String result;

  String covidMessage = 'I am covid Positive';
  String normalMessage = 'I am covid negative';

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
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFEF6E3),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Covid 19 Detector'),
        centerTitle: true,
      ),
      body: _isLoading
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            )
          : ScrollConfiguration(
              behavior: AppScrollBehavior(),
              child: SingleChildScrollView(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 16.0,
                      ),
                      _image == null
                          ? Container(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(16.0),
                                    child: Text(
                                      'Click on the button to select X-Ray image.',
                                      style: TextStyle(fontSize: 30.0),
                                    ),
                                  ),
                                  Image.asset('assets/images/img6.jpg'),
                                  Image.asset('assets/images/img7.jpg'),
                                ],
                              ),
                            )
                          : Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                  Container(
                                    clipBehavior: Clip.hardEdge,
                                    height: deviceHeight * 0.5,
                                    width: deviceWidth * 0.9,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Image.file(
                                      _image,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  _output == null
                                      ? Text("")
                                      : Text(
                                          "Result : ${result.trim()}",
                                          style: TextStyle(
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold,
                                            color: '${result.trim()}' == 'Covid'
                                                ? Colors.red
                                                : Colors.teal,
                                          ),
                                        ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 20.0,
                                      bottom: 20.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        LoginPageButton(
                                          text: 'Share',
                                          onPressed: () {
                                            if ('${result.trim()}' == 'Covid')
                                              Share.share(covidMessage);
                                            else
                                              Share.share(normalMessage);
                                          },
                                        ),
                                        LoginPageButton(
                                          text: 'FAQs',
                                          onPressed: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) => FAQPage(),
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  //Image.asset('assets/images/img9.jpg'),
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
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
    var image = await ImagePicker().getImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _isLoading = true;
        _image = File(image.path);
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
      result = _output[0]['label']
          .toString()
          .replaceAll('0', "")
          .replaceAll('1', "");
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: 'assets/model_unquant.tflite',
      labels: 'assets/labels.txt',
    );
  }
}