import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/component/coupon_card/view.dart';
import 'package:qian/component/image_roll/view.dart';
import 'package:qian/util/adaptor.dart';
import 'package:url_launcher/url_launcher.dart';

import 'logic.dart';

class GoodsDetailPage extends StatelessWidget {
  GoodsDetailPage({Key? key}) : super(key: key);

  final logic = Get.put(GoodsDetailLogic());

  final params = Get.parameters;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Obx(() {
            return logic.realLink.isEmpty
                ? CupertinoActivityIndicator()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            launchUrl(Uri.parse(logic.realLink.value),
                                mode: LaunchMode.externalApplication);
                          },
                          child: Text("够买")),
                      ElevatedButton(onPressed: () => {}, child: Text("复制")),
                    ],
                  );
          }),
        ),
      ),
      // appBar: getAppBar(title: ""),
      body: FutureBuilder(
          future:
              logic.getGoodsLink(params[GoodsDetailLogic.paramGoodsLink] ?? ""),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return CupertinoActivityIndicator();
            }
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            final data = snapshot.data!;

            Future.delayed(2.seconds, () {
              logic.realLink.value = data.link;
            });

            return CustomScrollView(
              slivers: [
                //显示轮播图
                SliverSafeArea(
                  sliver: SliverToBoxAdapter(
                      child: Column(children: [
                    ImageRollComponent(
                        imageUrls: data.imageInfo?.imageList
                                .map((e) => e.url)
                                .toList() ??
                            []),
                  ])),
                ),
                SliverToBoxAdapter(child: Text(data.skuName ?? "")),
                //折后价和原价
                SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(data.priceInfo?.lowestCouponPrice ?? "?"),
                      Text(data.priceInfo?.price ?? "")
                    ],
                  ),
                ),
                //优惠券
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: SU.rpx(300),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        final coupon = data.couponInfo[index];
                        return CouponCardComponent(
                          couponData: coupon,
                        );
                      },
                      itemCount: data.couponInfo.length,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

class BottomBarDelegate extends SliverPersistentHeaderDelegate {
  final double max;
  final double min;
  final Widget Function(
      BuildContext context, double shrinkOffset, bool overlapsContent) builder;

  BottomBarDelegate(
      {required this.max, required this.min, required this.builder});

  @override
  Widget build(
          BuildContext context, double shrinkOffset, bool overlapsContent) =>
      builder(context, shrinkOffset, overlapsContent);

  @override
  double get maxExtent => SU.rpx(100);

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant BottomBarDelegate oldDelegate) {
    return oldDelegate.max != max ||
        oldDelegate.min != min ||
        oldDelegate.builder != builder;
  }
}
