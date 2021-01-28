import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/footer_model.dart';
import 'routes/home.dart';
import 'routes/wiki.dart';
import 'routes/dm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _primaryColor = Colors.amber[100]; //primaryColorを指定
  final _primaryAccentColor = Colors.orangeAccent; //primaryAccentColorを指定

  final List _pageList = [
    Home(),
    Wiki(),
    Dm(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BeerSNS',
        theme: ThemeData(primaryColor: _primaryColor),
        home: ChangeNotifierProvider<FooterModel>(
          create: (_) => FooterModel(),
          child: Consumer<FooterModel>(builder: (context, model, child) {
            return Scaffold(
              // appBar: Header(headerTitle: 'beer'), //各画面で描画するのでいらない
              body: _pageList[model.currentIndex], //中身を描画
              bottomNavigationBar: buildBottomNavigationBar(model),
            );
          }),
        ));
  }

  BottomNavigationBar buildBottomNavigationBar(FooterModel model) {
    return BottomNavigationBar(
      //footer部分
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '', //home
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book_outlined),
          label: '', //wiki
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.email_outlined),
          label: '', //DM
        ),
      ],
      currentIndex: model.currentIndex,
      onTap: (index) {
        model.currentIndex = index;
      },
      selectedItemColor: _primaryAccentColor, //選んだ物の色
      unselectedItemColor: Colors.black45, //選んでない物の色
      backgroundColor: _primaryColor, //footer背景色
    );
  }
}
