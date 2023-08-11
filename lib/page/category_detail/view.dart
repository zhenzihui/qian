import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/component/common/common.dart';
import 'package:qian/component/goods/view.dart';
import 'package:qian/model/local/goods.dart';
import 'package:qian/model/remote/json_data.dart';
import 'package:qian/util/adaptor.dart';

import 'logic.dart';

class CategoryDetailPage extends StatelessWidget {
  CategoryDetailPage({Key? key}) : super(key: key);

  final logic = Get.put(CategoryDetailLogic());

  @override
  Widget build(BuildContext context) {
    final id = Get.parameters[CategoryDetailLogic.paramCategoryId];
    final name = Get.parameters[CategoryDetailLogic.paramCategoryName];
    final search = Get.parameters[CategoryDetailLogic.paramGoodsSearch];

    if (id == null) {
      return Container();
    }
    logic.initRequest(GoodsRequest.page(1, 20, goodsType: id, keyword: search));
    logic
        .findGoods(logic.searchReq.value)
        .then((value) => logic.dataList.addAll(value));
    logic.initScrollControl();
    return Scaffold(
        floatingActionButton: TextButton.icon(
            onPressed: () => logic.scrollCtl
                .animateTo(0, duration: 0.5.seconds, curve: Curves.bounceIn),
            icon: Icon(CupertinoIcons.arrow_up_circle_fill),
            label: Text("回")),
        appBar: getAppBar(title: name),
        body: Padding(
          padding: defaultPagePadding,
          child: Obx(() {
            return FutureBuilder(
                future: logic.findGoods(logic.searchReq.value),
                builder: (context, snapshot) {
                  final incomingData = snapshot.data ?? [];

                  logic.dataList.addAll(incomingData);
                  return CustomScrollView(controller: logic.scrollCtl, slivers: [
                    SliverGrid(
                        delegate:
                            SliverChildListDelegate.fixed(logic.dataList.map((e) {
                          return GoodsComponent(goods: e,);
                        }).toList()),
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                mainAxisExtent: SU.rpx(238),
                                crossAxisCount: 2)),
                    SliverAppBar(
                      centerTitle: true,
                      backgroundColor: Colors.transparent,
                      automaticallyImplyLeading: false,
                      title: snapshot.connectionState == ConnectionState.done &&
                              incomingData.isEmpty
                          ? const Divider()
                          : const CupertinoActivityIndicator(),
                    )
                  ]);
                });
          }),
        ));
  }
}
