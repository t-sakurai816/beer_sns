import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  final String headerTitle;
  Header({this.headerTitle}); //ヘッダータイトルを変更できるようにする
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(headerTitle),
      actions: [
        IconButton(
          icon: Icon(MdiIcons.accountCircleOutline),
          onPressed: () {
            //押したときの処理
          },
        )
      ],
    );
  }
}
