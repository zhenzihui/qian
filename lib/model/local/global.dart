import 'package:flutter/cupertino.dart';

//导航栏数据模型
class NavBarData {
  final String title;
  final IconData iconData;

  static const int indexHome = 0;
  static const int indexCategories = 1;
  static const int indexSearch = 2;
  static const int indexMy = 3;

  NavBarData(
      {required this.title, required this.iconData});

  static defaultList() {
    return [
      NavBarData(title: "home", iconData: CupertinoIcons.home),
      NavBarData(title: "Categories", iconData: CupertinoIcons.list_bullet_below_rectangle),
      NavBarData(title: "Search", iconData: CupertinoIcons.search),
      NavBarData(title: "My", iconData: CupertinoIcons.profile_circled),
    ];
  }
}
