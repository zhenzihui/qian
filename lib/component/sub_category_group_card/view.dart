import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/component/category_with_pic/view.dart';
import 'package:qian/model/local/category.dart';
import 'package:qian/page/category_detail/logic.dart';
import 'package:qian/util/adaptor.dart';

import 'logic.dart';

//一个小类的集合
class SubCategoryGroupCard extends StatefulWidget {
  final CategoryItem data;
  final List<SubCategoryItem> dataList;

  SubCategoryGroupCard({Key? key, required this.data})
      : dataList = data.subCategories,
        super(key: key);

  @override
  State<StatefulWidget> createState() => SubCategoryGroupCardState();
}

class SubCategoryGroupCardState extends State<SubCategoryGroupCard> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> categoryList = widget.dataList
        .map((sub) => CategoryWithPicComponent(
              categoryName: sub.title,
              imageUrl: sub.imageUrl,
              padding: EdgeInsets.all(SU.rpx(8)),
              imageWidth: SU.rpx(48),
              onTap: () => Get.toNamed("category-detail", parameters: {
                CategoryDetailLogic.paramCategoryId: "${sub.parentId}",
                CategoryDetailLogic.paramCategoryName: widget.data.title
              }),
            ))
        .toList();

    return Padding(
      padding: EdgeInsets.all(SU.rpx(10)),
      child: Container(
        height: SU.rpx(296),
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.all(Radius.circular(SU.rpx(8)))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: SU.rpx(20), right: SU.rpx(20), top: SU.rpx(10)),
              child: Text(widget.data.title),
            ),
            Expanded(
              child: GridView(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: categoryList),
            )
          ],
        ),
      ),
    );
  }
}

class SubCategoryGroupCardComponent extends StatelessWidget {
  final CategoryItem data;
  final List<SubCategoryItem> dataList;

  SubCategoryGroupCardComponent({Key? key, required this.data})
      : dataList = data.subCategories,
        super(key: key);

  final logic = Get.put(SubCategoryGroupCardLogic());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SU.rpx(296),
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.all(Radius.circular(SU.rpx(8)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data.title),
          Expanded(
            child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: dataList
                    .map((data) => CategoryWithPicComponent(
                          categoryName: data.title,
                          imageUrl: data.imageUrl,
                          padding: EdgeInsets.all(SU.rpx(8)),
                          imageWidth: SU.rpx(48),
                        ))
                    .toList()),
          )
        ],
      ),
    );
  }
}
