import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  final String screenName = 'ホーム1'; //headerに表示される名前
  final int _tweetsNum = 10;

  final Map _tweetsData = {
    'Name': 'ツイート太郎',
    'text': 'ビールがうまい',
    'timestamp': '3m'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  // NetworkImageでURLの画像を取得
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1348572281681760262/sVPExbGK.jpg'),
                ),
                title: Text(_tweetsData['Name']), //ユーザーの名前
                subtitle: Text(_tweetsData['text']), //投稿の本文(勝手に縦幅が変わる)
                trailing: Text(_tweetsData['timestamp']),
                isThreeLine: true, // Three-lineを使用する
              ),
            );
          },
          itemCount: _tweetsNum,
        ),
      ),
    );
  }
}
