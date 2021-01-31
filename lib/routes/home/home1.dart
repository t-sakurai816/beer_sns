import 'package:flutter/material.dart';

import 'tweet_card.dart';

class Home1 extends StatelessWidget {
  final String screenName = 'ホーム1'; //headerに表示される名前

  @override
  Widget build(BuildContext context) {
    return TweetCard();
  }
}
