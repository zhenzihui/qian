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
    required this.pageTitle,
    required this.cardTitle,
    required this.categoryTitle,
    required this.priceText,
    required this.specialPriceText,
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

  static MyThemeWidget withDefaultValue(Widget child) {
    return MyThemeWidget(
      pageTitle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      cardTitle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      priceText: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      categoryTitle:
          const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
      specialPriceText: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.deepOrange),
      child: child,
    );
  }
}
