import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:qian/model/local/goods.dart';
import 'package:qian/model/remote/json_data.dart';
import 'package:qian/provider/jd_provider.dart';

class CategoryDetailLogic extends GetxController {

  //参数：类🆔
  static const String paramCategoryId = "cate_id";
  //参数：类目名字
  static const String paramCategoryName = "cate_name";

  //当前的数据list
  final List<BaseGoods> dataList = [];

  final searchReq = GoodsRequest.page(1, 50).obs;

  final provider = Get.find<JDProvider>();

  Future<List<BaseGoods>> findGoods(GoodsRequest req) {
    return provider.universalGoodsList(req);
  }
  final scrollCtl = ScrollController();

  initScrollControl() {
    scrollCtl.addListener(() {
      if(scrollCtl.position.atEdge) {
        searchReq.update((d) {
          d?.pageIndex += 1;
        });
      }
    });

  }




}
