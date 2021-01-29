import 'package:flutter/material.dart';
import '../header.dart';

class Notice extends StatelessWidget {
  final String screenName = '通知'; //headerに表示される名前
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