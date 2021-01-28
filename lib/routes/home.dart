import 'package:flutter/material.dart';
import '../header.dart';
import '../header_drawer.dart';

class Home extends StatelessWidget {
  final String screenName = 'ホーム'; //headerに表示される名前
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HeaderDrawer(),
      appBar: Header(headerTitle: screenName),
      body: Center(
        child: Text(screenName),
      ),
    );
  }
}
