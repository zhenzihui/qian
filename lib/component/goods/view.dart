import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/model/local/goods.dart';

import 'logic.dart';

class GoodsComponent extends StatelessWidget {
  final BaseGoods goods;
  final VoidCallback? onTap;

  GoodsComponent({Key? key, required this.goods, this.onTap}) : super(key: key);
  final logic = Get.put(GoodsLogic());

  static const dimColor = Colors.deepOrange;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Image.network(
              goods.goodsImg,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            goods.shortName,
            maxLines: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "预计劵后",
                    style: TextStyle(fontSize: 14, color: dimColor),
                  ),
                  Text(
                    "¥${goods.finalPrice}",
                    style: const TextStyle(fontSize: 18, color: dimColor),
                  ),
                ],
              ),
              Text(
                "¥${goods.goodsPrice}",
                style: const TextStyle(
                  // backgroundColor: Colors.red,
                  decoration: TextDecoration.lineThrough,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
