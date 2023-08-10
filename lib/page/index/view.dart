import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/component/bottom_nav_bar/view.dart';
import 'package:qian/model/local/global.dart';
import 'package:qian/page/category/view.dart';
import 'package:qian/util/adaptor.dart';

import 'logic.dart';

class IndexPage extends StatelessWidget {
  IndexPage({Key? key}) : super(key: key);
  final logic = Get.put(IndexLogic(), tag: "index");

  late List<NavBarData> navBarDataList = NavBarData.defaultList();

  Widget _switchBodyByIndex(int index) {
    switch (index) {
      case NavBarData.indexCategories:
        return const CategoryPage();
      case _: return Text("${logic.navBarIndex}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      bottomNavigationBar: BottomNavBarComponent(
        navBarDataList: navBarDataList,
        onIndexChange: (index) {
          logic.navBarIndex.value = index;
        },
      ),
      body: Obx(() {
        return _switchBodyByIndex(logic.navBarIndex.value);
      }),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      centerTitle: false,
      shape: Border.all(color: SU.theme.focusColor),
      title: ListenableBuilder(
          listenable: SU.appBarTitle,
          builder: (context, _) => Text(SU.appBarTitle.value)
      ),
    );
  }
}
