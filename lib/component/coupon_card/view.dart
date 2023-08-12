import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/model/remote/GoodsLink.dart';
import 'package:qian/util/adaptor.dart';

import 'logic.dart';

class CouponCardComponent extends StatelessWidget {
  final VoidCallback? onClaim;
  final CouponInfo couponData;

  CouponCardComponent({Key? key, this.onClaim, required this.couponData}) : super(key: key);
  final logic = Get.put(CouponCardLogic());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SU.rpx(80),
      width: SU.rpx(100),
      child: GestureDetector(
        onTap: onClaim,
        child: Stack(children: [
          Positioned(
              child: Icon(Icons.shopping_bag_outlined),
              left: 0,
          ),
          Positioned(child:
            Text(couponData.discount),
            right: 0,
          )
        ],),
      ),
    );
  }
}
