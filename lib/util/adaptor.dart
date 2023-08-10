import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SU {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double rpxRatio;
  static late ThemeData theme;

  static ValueNotifier<String> appBarTitle = ValueNotifier("home");


  static void initialize(BuildContext context, {uiWidth = 750}) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    rpxRatio = screenWidth / uiWidth;
    theme = Theme.of(context);
  }

  static double rpx(double size) => rpxRatio * size;
}

class Config {
  static late String apiKey;
  static late String pubId;

  static Future<void> initialize() async {
    final plainText = await rootBundle.loadString("assets/plain/key.exe");
    debugPrint("读取配置文件内容：$plainText");
    final json = jsonDecode(plainText);
    apiKey = json['apikey'];
    pubId = json['pubid'];
  }
}

// extension on int {
//   double get rpx => ScreenUtil.getRpx(toDouble());
// }
