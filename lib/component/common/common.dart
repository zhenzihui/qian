import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/ext/extendable_theme.dart';
import 'package:qian/util/adaptor.dart';

PreferredSizeWidget getAppBar(BuildContext context, {String? title}) {
  final myTheme = MyThemeWidget.of(context)!;

  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: false,
    shape: Border.all(color: SU.theme.focusColor),
    title: title != null
        ? Text(title, style: myTheme.pageTitle)
        : ListenableBuilder(
        listenable: SU.appBarTitle,
        builder: (bc, _) => Text(SU.appBarTitle.value, style: myTheme.pageTitle)),
  );
}


get defaultPagePadding => EdgeInsets.only(left: SU.rpx(8), right: SU.rpx(8));