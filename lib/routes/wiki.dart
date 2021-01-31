import 'package:flutter/material.dart';
import '../header.dart';

class Wiki extends StatelessWidget {
  final String screenName = 'wiki'; //headerに表示される名前
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(headerTitle: screenName),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(50, (index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.network(
                'https://pbs.twimg.com/profile_images/1348572281681760262/sVPExbGK.jpg',
              ),
            ),
          );
        }),
      ),
    );
  }
}
