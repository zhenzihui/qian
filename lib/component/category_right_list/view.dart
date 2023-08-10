import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/component/select_category/view.dart';
import 'package:qian/component/sub_category_group_card/view.dart';
import 'package:qian/model/local/category.dart';
import 'dart:math' as math;

import 'package:qian/util/adaptor.dart';

class CategoryRightListComponent extends StatefulWidget {
  final List<CategoryItem> dataList;
  final CategoryController controller;
  final double changeOffset;

  const CategoryRightListComponent({Key? key,
    required this.dataList,
    required this.controller,
    this.changeOffset = 80})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => CategoryRightListState();
}

class CategoryRightListState extends State<CategoryRightListComponent> {
  final scrollController = ScrollController();

  late Map<int, GlobalKey<State<StatefulWidget>>> keyMap;

  double? _singleChildHeight;
  late List<CategoryItem> dataList = widget.dataList;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    keyMap = dataList
        .map((d) => {d.id: GlobalKey(debugLabel: "id:${d.id}")})
        .reduce((a, b) => a..addAll(b));


    return ListenableBuilder(
        listenable: widget.controller,
        builder: (context, _) {
          final dataList = widget.dataList;
          final cardList = dataList
              .map((d) => SubCategoryGroupCard(key: keyMap[d.id], data: d))
              .toList();

          return ListView.builder(
            controller: scrollController,
            itemBuilder: (context, index) => cardList[index],
            itemCount: cardList.length,
            // itemExtent: SU.rpx(296),
          );
        });
  }


}
