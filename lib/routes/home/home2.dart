import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  final String screenName = 'ホーム2'; //headerに表示される名前
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(screenName),
      ),
    );
  }
}
