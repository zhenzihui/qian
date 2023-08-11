import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/component/common/common.dart';
import 'package:qian/model/local/goods.dart';

import 'logic.dart';

class CategoryDetailPage extends StatelessWidget {
  CategoryDetailPage({Key? key}) : super(key: key);

  final logic = Get.put(CategoryDetailLogic());

  @override
  Widget build(BuildContext context) {
    final id = Get.parameters[CategoryDetailLogic.paramCategoryId];
    final name = Get.parameters[CategoryDetailLogic.paramCategoryName];

    if (id == null) {
      return Container();
    }
    logic
        .findGoods(logic.searchReq.value)
        .then((value) => logic.dataList.addAll(value));
    logic.initScrollControl();
    return Scaffold(
        floatingActionButton: TextButton.icon(
            onPressed: () => logic.scrollCtl
                .animateTo(-10, duration: 0.5.seconds, curve: Curves.bounceIn),
            icon: Icon(CupertinoIcons.arrow_up_circle_fill),
            label: Text("回")),
        appBar: getAppBar(title: name),
        body: Obx(() {
          return FutureBuilder(
              future: logic.findGoods(logic.searchReq.value),
              builder: (context, snapshot) {
                final incomingData = snapshot.data ?? [];

                logic.dataList.addAll(incomingData);
                return CustomScrollView(controller: logic.scrollCtl, slivers: [
                  SliverGrid(
                      delegate:
                          SliverChildListDelegate.fixed(logic.dataList.map((e) {
                        return Text(e.shortName);
                      }).toList()),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2)),
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    automaticallyImplyLeading: false,
                    title: snapshot.connectionState == ConnectionState.done &&
                            incomingData.isEmpty
                        ? Divider()
                        : CupertinoActivityIndicator(),
                  )
                ]);
              });
        }));
  }
}
