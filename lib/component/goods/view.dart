import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/model/local/goods.dart';
import 'package:qian/util/adaptor.dart';

import 'logic.dart';

class GoodsComponent extends StatelessWidget {
  final BaseGoods goods;

  GoodsComponent({Key? key, required this.goods}) : super(key: key);
  final logic = Get.put(GoodsLogic());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SU.rpx(156),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Image.network(goods.goodsImg,
              fit: BoxFit.cover,

            ),
          ),
          Text(goods.shortName, maxLines: 1,),
          Text("¥${goods.finalPrice}")

        ],
      ),
    );
  }
}
