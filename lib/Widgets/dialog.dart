import 'package:covid19_detector/Widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

//Cognito User Pool Config

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(deviceHeight * .04),
      ),
      child: Container(
        height: deviceHeight * 0.18,
        width: deviceWidth * 0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Select X-Ray Image',
              style: TextStyle(
                fontSize: deviceWidth * 0.05,
                color: Color(0xff7059FB),
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.04,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: deviceWidth * 0.035),
              //color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      // color: Colors.pink,
                      child: DialogButton(
                        onPressed: () {},
                        text: 'Camera',
                      ),
                    ),
                  ),
                  Expanded(
                    child: DialogButton(
                      onPressed: () {},
                      text: 'Gallery',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

signOut() async {
  //await cognitoUser.signOut();
}
