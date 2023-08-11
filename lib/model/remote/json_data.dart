//返回值结构
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:qian/util/adaptor.dart';

class BaseResp {
  final int code;
  final String msg;
  final dynamic data;

  bool get isBizSuccess => code != 0;

  BaseResp(this.code, this.msg, this.data);

  static BaseResp fromJson(String jsonString) {
    final json = jsonDecode(jsonString);
    final data = json['data'];
    if (data is String && data.isEmpty) {
      return BaseResp(json['code'], json['msg'], {});
    }

    return BaseResp(json['code'], json['msg'], json['data']);
  }
}

abstract class JsonRequest {
  Map<String, dynamic> toMap();

  String toJson() => jsonEncode(toMap());
}
//基本请求
class BaseRequest extends JsonRequest {
  final String apiKey = Config.apiKey;

  BaseRequest();

  @override
  Map<String, dynamic> toMap() =>
      {
        "apikey": apiKey,
      };

}

//查询商品列表
class GoodsRequest extends JsonRequest {
  int pageIndex;
  int pageSize;
  String? keyword;
  //商品一级类目： 0全部；1居家日用；2食品；3生鲜；4图书；5美妆个护；
  // 6母婴；7数码家电；8内衣；9配饰；10女装；11男装；12鞋品；13家装家纺；
  // 14文娱车品；15箱包；16户外运动
  final String? goodsType;


  GoodsRequest(
      {this.keyword, this.goodsType, this.pageIndex = 1, this.pageSize = 20});


  GoodsRequest.page(this.pageIndex, this.pageSize,
      {this.keyword, this.goodsType});



  @override
  Map<String, dynamic> toMap() => {
    "pageIndex": pageIndex,
    "pageSize": pageSize,
  }..addAllIf(keyword != null, {
    "keyword": keyword
  })..addAllIf(goodsType!=null, {
    "goods_type": goodsType
  });




}
