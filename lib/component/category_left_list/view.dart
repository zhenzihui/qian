import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/component/category_with_pic/view.dart';
import 'package:qian/component/select_category/view.dart';
import 'package:qian/model/local/category.dart';
import 'package:qian/util/adaptor.dart';

import 'logic.dart';

//分类-左边的大类选单
class CategoryLeftListComponent extends StatelessWidget {
  final List<CategoryItem> dataList;
  final CategoryController controller;

  CategoryLeftListComponent(
      {Key? key, required this.dataList, required this.controller})
      : super(key: key);

  final logic = Get.put(CategoryLeftListLogic());

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();

    return Container(
        decoration: const BoxDecoration(color: Color(0xffF5F5FA)),
        child: ListView.builder(
          controller: scrollController,
          itemBuilder: (context, index) {
            final cate = dataList[index];
            return ListenableBuilder(
                listenable: controller,
                builder: (context, _) {
                  return CategoryWithPicComponent(
                    key: ValueKey(cate.id),
                    backgroundColor:
                        cate.id == controller.selectId ? Colors.white : null,
                    categoryName: cate.title,
                    imageUrl: cate.imageUrl,
                    imageWidth: SU.rpx(24),
                    padding: EdgeInsets.all(SU.rpx(10)),
                    onTap: () {
                      controller.destinationId = cate.id;
                      controller.selectId = cate.id;
                    } ,
                  );
                });
          },
          itemCount: dataList.length,
          itemExtent: SU.rpx(59),
        ));
  }
}
