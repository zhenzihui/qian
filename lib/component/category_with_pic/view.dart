import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logic.dart';
import 'package:qian/util/adaptor.dart';
//分类item，上面是图片下面是文字
class CategoryWithPicComponent extends StatelessWidget {
  final String categoryName;
  final String imageUrl;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final double? imageWidth;
  final VoidCallback? onTap;

  CategoryWithPicComponent(
      {Key? key,
      required this.categoryName,
      required this.imageUrl,
      this.backgroundColor,
      this.padding,
      this.imageWidth, this.onTap})
      : super(key: key);

  final logic = Get.put(CategoryWithPicLogic());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(color: backgroundColor),
        width: SU.rpx(83),
        // height: SU.rpx(93),
        child: Column(
          children: [
            Image.network(
              imageUrl,
              width: imageWidth,

            ),
            Text(
              categoryName,
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
