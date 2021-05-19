import 'package:flutter/material.dart';

class LoginPageButton extends StatelessWidget {
  const LoginPageButton({
    this.text,
    this.onPressed,
  });
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.all(0),
          elevation: 10,
        ),
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 50,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF8E7CFC),
                  Color(0xFF5C41FF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0]),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    this.text,
    this.onPressed,
  });
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.all(0),
          elevation: 10,
        ),
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 45,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF8E7CFC),
                  Color(0xFF5C41FF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0]),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({
    this.text,
    this.onPressed,
  });
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.all(0),
          elevation: 10,
        ),
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 25,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF8E7CFC),
                  Color(0xFF5C41FF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0]),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.text,
    this.onPressed,
  });
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.all(0),
          elevation: 10,
        ),
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: deviceHeight * 0.021,
            horizontal: deviceWidth * 0.275,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF8E7CFC),
                  Color(0xFF5C41FF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0]),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class UpdateProfileButton extends StatelessWidget {
  const UpdateProfileButton({
    this.text,
    this.onPressed,
  });
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.all(0),
          elevation: 10,
        ),
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: deviceHeight * 0.022,
            horizontal: deviceWidth * 0.25,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF8E7CFC),
                  Color(0xFF5C41FF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0]),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class ChangePasswordButton extends StatelessWidget {
  const ChangePasswordButton({
    this.text,
    this.onPressed,
  });
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.all(0),
          elevation: 10,
        ),
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: deviceHeight * 0.022,
            horizontal: deviceWidth * 0.24,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF8E7CFC),
                  Color(0xFF5C41FF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0]),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class OtpButton extends StatelessWidget {
  const OtpButton({
    this.text,
    this.onPressed,
  });
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.all(0),
          elevation: 10,
        ),
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: deviceHeight * 0.021,
            horizontal: deviceWidth * 0.20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF8E7CFC),
                  Color(0xFF5C41FF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0]),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class DialogButton extends StatelessWidget {
  DialogButton({
    this.text,
    this.onPressed,
  });
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.all(0),
          elevation: 10,
        ),
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: deviceHeight * 0.02,
            horizontal: deviceWidth * 0.1,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF8E7CFC),
                  Color(0xFF5C41FF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0]),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: deviceWidth * 0.032,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
