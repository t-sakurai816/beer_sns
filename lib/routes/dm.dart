import 'package:flutter/material.dart';
import '../header.dart';

class Dm extends StatelessWidget {
  final String screenName = 'DM'; //headerに表示される名前
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(headerTitle: screenName),
      body: Center(
        child: Text(screenName),
      ),
    );
  }
}