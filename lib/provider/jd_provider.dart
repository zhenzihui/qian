import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:qian/model/local/category.dart';
import 'package:qian/util/adaptor.dart';

import 'package:qian/model/remote/json_data.dart';

class JDProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://api.jutuike.com/jd/';
  }

  //得到业务data，否则报http或业务错误
  Future<dynamic> basePost(String url, {Map<String, String>? body}) {
    final reqBody = BaseRequest().toMap();
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

  //获取所有类目
  Future<List<CategoryItem>> getCategories() {
    return basePost("get_super_category").then((data) => (data as List<dynamic>).map((raw) => CategoryItem.fromJson(raw))
    .toList());
  }

}
