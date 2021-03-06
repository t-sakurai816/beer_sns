import 'package:flutter/material.dart';
import '../header.dart';

class Wiki extends StatelessWidget {
  final String screenName = 'wiki'; //headerに表示される名前
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(headerTitle: screenName),
      body: Column(
        children: [
          //検索バーをつける
          Placeholder(
            fallbackHeight: 30,
            color: Colors.red,
          ),
          //タグを表示する
          Placeholder(
            fallbackHeight: 20,
            color: Colors.blue,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(50, (index) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GestureDetector(
                      onTap: () {
                        // タップで反応
                        print('画像をタップ');
                      },
                      child: Image.network(
                        'https://pbs.twimg.com/profile_images/1356263946638950410/s72cF6s2.jpg',
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
