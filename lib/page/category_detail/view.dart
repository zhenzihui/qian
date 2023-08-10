import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/component/common/common.dart';
import 'package:qian/model/local/goods.dart';
import 'package:qian/model/remote/json_data.dart';

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
        .findGoods(GoodsRequest())
        .then((value) => logic.dataList.addAll(value));

    return Scaffold(
      appBar: getAppBar(title: name),
      body: CustomScrollView(
        slivers: [
          Obx(() {
            return SliverGrid(
                delegate: SliverChildListDelegate.fixed(logic.dataList.map((e) {
                  e as BaseGoods;
                  return Text(e.shortName);
                }).toList()),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2));
          }),

        ],
      ),
    );
  }
}
