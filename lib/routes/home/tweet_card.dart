import 'package:flutter/material.dart';

class TweetCard extends StatelessWidget {
  final int _tweetsNum = 10;

  final Map _tweetsData = {
    'Name': 'ツイート太郎',
    'text':
        'ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。',
    'commentNum': '3',
    'retweetNum': '2',
    'likeNum': '5',
    'timestamp': '3m'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child: Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            // NetworkImageでURLの画像を取得
                            backgroundImage: NetworkImage(
                                'https://pbs.twimg.com/profile_images/1356263946638950410/s72cF6s2.jpg'),
                          ),
                          title: Text(_tweetsData['Name']), //ユーザーの名前
                          subtitle:
                              Text(_tweetsData['text']), //投稿の本文(勝手に縦幅が変わる)
                          trailing: Text(_tweetsData['timestamp']),
                          isThreeLine: true, // Three-lineを使用する
                          onTap: () {
                            print('タップしたよ');
                          },
                          onLongPress: () {
                            print('長押ししたよ');
                          },
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        width:
                            MediaQuery.of(context).size.width * 0.8, //アイコンの横幅
                        child: ButtonBar(
                            buttonPadding: EdgeInsets.all(0.0),
                            alignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.chat_bubble_outline),
                                    iconSize: 18.0,
                                    onPressed: () {
                                      print('コメントをタップ');
                                    },
                                  ),
                                  Text(_tweetsData['commentNum']),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.cached),
                                    iconSize: 18.0,
                                    onPressed: () {
                                      print('リツイートをタップ');
                                    },
                                  ),
                                  Text(_tweetsData['retweetNum']),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.favorite_border),
                                    iconSize: 18.0,
                                    onPressed: () {
                                      print('いいねをタップ');
                                    },
                                  ),
                                  Text(_tweetsData['likeNum']),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.share),
                                    iconSize: 18.0,
                                    onPressed: () {
                                      print('シェアマークをタップ');
                                    },
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: _tweetsNum,
        ),
      ),
    );
  }
}
