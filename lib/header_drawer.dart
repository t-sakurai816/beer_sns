import 'package:flutter/material.dart';

class HeaderDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('hoge'),
          )
        ],
      ),
    );
  }
}
