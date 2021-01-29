import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'home1.dart';
import 'home2.dart';

class TabInfo {
  String label;
  Widget widget;
  TabInfo(this.label, this.widget);
}

final List<TabInfo> _tabs = [
  TabInfo("HOME1", Home1()),
  TabInfo("HOME2", Home2()),
];

class HomeHeader extends StatelessWidget with PreferredSizeWidget {
  final String headerTitle;
  HomeHeader({this.headerTitle}); //ヘッダータイトルを変更できるようにする
  @override
  // Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Size get preferredSize => Size.fromHeight(66.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('homeですぞ'),
      actions: [
        IconButton(
          icon: Icon(MdiIcons.accountCircleOutline),
          onPressed: () {
            //押したときの処理
            print('アイコンをタップしたよ');
          },
        )
      ],
      bottom: buildTabBar(context),
    );
  }

  TabBar buildTabBar(BuildContext context) {
    return TabBar(
      isScrollable: true,
      tabs: _tabs.map((TabInfo tab) {
        return Container(
          height: 20.0,
          width: MediaQuery.of(context).size.width * 0.4, //TabBar幅
          child: Tab(text: tab.label), //TabBarラベル
        );
      }).toList(),
    );
  }
}
