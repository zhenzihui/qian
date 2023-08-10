import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:qian/model/local/category.dart';
import 'package:qian/model/local/goods.dart';
import 'package:qian/model/remote/goods_json.dart';
import 'package:qian/model/remote/json_data.dart';

class JDProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://api.jutuike.com/jd/';
  }

  //得到业务data，否则报http或业务错误
  Future<dynamic> basePost(String url, {Map<String, dynamic>? body}) {
    final reqBody = BaseRequest().toMap() as Map<String, dynamic>;
    if(body != null) {
      reqBody.addAll(body);
    }
    debugPrint("request: $reqBody");
    return post(url, reqBody).then((resp) {
      final bizBody = BaseResp.fromJson(resp.bodyString ?? "{}");
      if (!bizBody.isBizSuccess) {
        return Future.error(bizBody.msg);
      }
      return bizBody.data;
    });
  }

  List<dynamic> _handleResponseAsList(dynamic data) => data as List<dynamic>;


  //获取所有类目
  Future<List<CategoryItem>> getCategories() {
    return basePost("get_super_category").then((data) => _handleResponseAsList(data)
        .map((raw) => CategoryItem.fromJson(raw))
    .toList());
  }

  //搜索商品的全部条件
  Future<List<BaseGoods>> universalGoodsList(GoodsRequest goodsRequest) {
    return basePost("subsidy_goods", body: goodsRequest.toMap()).then((data) => _handleResponseAsList(data)
        .map((raw) => BaseGoods.from(GoodsJson.fromJson(raw))).toList());
  }

}
