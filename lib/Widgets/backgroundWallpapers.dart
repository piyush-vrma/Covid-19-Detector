import 'package:flutter/material.dart';

class BackgroundWallpaper extends StatelessWidget {
  final link;

  BackgroundWallpaper({@required this.link});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(link),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
