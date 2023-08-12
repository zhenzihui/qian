import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:qian/model/local/category.dart';
import 'package:qian/model/local/goods.dart';
import 'package:qian/model/remote/GoodsLink.dart';
import 'package:qian/model/remote/goods_json.dart';
import 'package:qian/model/remote/json_data.dart';

class JDProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://api.jutuike.com/jd/';
    httpClient.timeout = 30.seconds;
    httpClient.addRequestModifier((Request request) {
      debugPrint("${request.method} ${request.url}");
      return request;
    });
  }

  //得到业务data，否则报http或业务错误
  Future<dynamic> basePost(String url, {Map<String, dynamic>? body}) {
    return post(url, body).then((resp) {
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
    return basePost("get_super_category", body: BaseRequest().toMap()).then((data) =>
        _handleResponseAsList(data)
            .map((raw) => CategoryItem.fromJson(raw))
            .toList());
  }

  //搜索商品的全部条件
  Future<List<BaseGoods>> universalGoodsList(GoodsRequest goodsRequest) {
    return basePost("subsidy_goods", body: goodsRequest.toMap()).then((data) =>
        _handleResponseAsList(data)
            .map((raw) => BaseGoods.from(GoodsJson.fromJson(raw)))
            .toList());
  }

  //查询商品详情
  Future<GoodsLink> getGoodsLinkInfo(GetGoodsLinkRequest req) {
    return basePost("get_goods_link", body: req.toMap())
        .then((data) => GoodsLink.fromJson(data));
  }
}
