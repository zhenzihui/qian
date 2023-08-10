//返回值结构
import 'dart:convert';

import 'package:flutter/cupertino.dart';
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
    if(data is String && data.isEmpty) {
      return BaseResp(json['code'], json['msg'], {});
    }

    return BaseResp(json['code'], json['msg'], json['data']);
  }
}

class BaseRequest {
  final String apiKey = Config.apiKey;


  BaseRequest();

  Map<String, String> toMap() => {
    "apikey": apiKey,
  };

  String toJson() => jsonEncode(toMap());
}


