import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/ext/extendable_theme.dart';
import 'package:qian/model/local/goods.dart';

import 'logic.dart';

//单个商品item
class GoodsComponent extends StatelessWidget {
  final BaseGoods goods;
  final VoidCallback? onTap;

  GoodsComponent({Key? key, required this.goods, this.onTap}) : super(key: key);
  final logic = Get.put(GoodsLogic());

  @override
  Widget build(BuildContext context) {
    final theme = MyThemeWidget.of(context)!;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: theme.smallBorderRadius),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: theme.smallRadius, topRight: theme.smallRadius),
              child: Image.network(
                goods.goodsImg,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: theme.paddingDefault, right: theme.paddingDefault),
              child: Text(
                goods.shortName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: theme.paddingDefault,
                  right: theme.paddingDefault,
                  bottom: theme.paddingDefault),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "预计劵后",
                        style: theme.specialPriceText,
                      ),
                      Text(
                        "¥${goods.finalPrice}",
                        style: theme.specialPriceText,
                      ),
                    ],
                  ),
                  Text(
                    "¥${goods.goodsPrice}",
                    style: theme.priceText
                        .copyWith(decoration: TextDecoration.lineThrough),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
