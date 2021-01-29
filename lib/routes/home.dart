import 'package:flutter/material.dart';
import '../header.dart';
import 'home2.dart';

// import '../header_drawer.dart';
// class TabInfo {
//   String label;
//   Widget widget;
//   TabInfo(this.label, this.widget);
// }

// final List<TabInfo> _tabs = [
//   TabInfo("HOME1", Home()),
//   TabInfo("HOME2", Home2()),
// ];

final List<Tab> myTabs = <Tab>[
  Tab(text: 'LEFT'),
  Tab(text: 'RIGHT'),
];

class Home extends StatelessWidget {
  final String screenName = 'ホーム'; //headerに表示される名前
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        // drawer: HeaderDrawer(),
        appBar: AppBar(
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            final String label = tab.text.toLowerCase();
            return Center(
              child: Text(
                'This is the $label tab',
                style: const TextStyle(fontSize: 36),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
