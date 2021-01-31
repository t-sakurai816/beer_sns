import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  final String screenName = 'ホーム1'; //headerに表示される名前
  final int _tweetsNum = 10;

  final Map _tweetsData = {
    'Name': 'ツイート太郎',
    'text':
        'ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。ビールがうまい。',
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
                                'https://pbs.twimg.com/profile_images/1348572281681760262/sVPExbGK.jpg'),
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
                      child: NewWidget(),
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

class NewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; //画面サイズを取得
    return Container(
      width: size.width * 0.75, //アイコンの横幅
      child: ButtonBar(
          buttonPadding: EdgeInsets.all(0.0),
          alignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.chat_bubble_outline),
                  iconSize: 18.0,
                  onPressed: () {},
                ),
                Text(''),
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.cached),
                  iconSize: 18.0,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  iconSize: 18.0,
                  onPressed: () {},
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.share),
              iconSize: 18.0,
              onPressed: () {},
            ),
          ]),
    );
  }
}
