import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qian/util/adaptor.dart';

class MyThemeWidget extends InheritedWidget {
  /// 定义字体
  // 页面标题
  final TextStyle pageTitle;

  // card标题
  final TextStyle cardTitle;

  // category 标题
  final TextStyle categoryTitle;

  // 价格
  final TextStyle priceText;

  // 醒目价格
  final TextStyle specialPriceText;



  /// 定义字体 end

  /// 定义形状
  final Radius smallRadius ;
  final BorderRadius smallBorderRadius;

  /// 定义形状 end

  /// 定义布局
  final double paddingDefault = SU.rpx(5);
  /// 定义布局 end

  MyThemeWidget({
    Key? key,
    required child,
    this.pageTitle = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    this.cardTitle = const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    this.categoryTitle = const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    this.priceText = const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    this.specialPriceText = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepOrange),
  })  : smallBorderRadius = BorderRadius.circular(5),
        smallRadius = const Radius.circular(5),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant MyThemeWidget oldWidget) {
    return oldWidget.pageTitle != pageTitle ||
        oldWidget.cardTitle != cardTitle ||
        oldWidget.categoryTitle != categoryTitle ||
        oldWidget.priceText != priceText;
  }

  static MyThemeWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyThemeWidget>();
  }

}
