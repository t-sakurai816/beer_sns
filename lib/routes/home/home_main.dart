import 'package:flutter/material.dart';

import 'home_header.dart';
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

class HomeMain extends StatelessWidget {
  final String screenName = 'ホーム'; //headerに表示される名前
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: HomeHeader(),
        body: TabBarView(children: _tabs.map((tab) => tab.widget).toList()),
      ),
    );
  }
}
