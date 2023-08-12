import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/util/adaptor.dart';

PreferredSizeWidget getAppBar({String? title}) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: false,
    shape: Border.all(color: SU.theme.focusColor),
    title: title != null
        ? Text(title)
        : ListenableBuilder(
        listenable: SU.appBarTitle,
        builder: (context, _) => Text(SU.appBarTitle.value)),
  );
}


get defaultPagePadding => EdgeInsets.only(left: SU.rpx(8), right: SU.rpx(8));