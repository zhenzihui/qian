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
  //参数 搜索
  static const String paramGoodsSearch = "search";

  //当前的数据list
  final List<BaseGoods> dataList = [];

  late Rx<GoodsRequest> searchReq;

  final provider = Get.find<JDProvider>();

  Future<List<BaseGoods>> findGoods(GoodsRequest req) {
    return provider.universalGoodsList(req);
  }
  final scrollCtl = ScrollController();

  initRequest(GoodsRequest goodsRequest) {
    searchReq =goodsRequest.obs;
  }

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
