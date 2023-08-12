import 'package:get/get.dart';
import 'package:qian/model/remote/GoodsLink.dart';
import 'package:qian/model/remote/json_data.dart';
import 'package:qian/provider/jd_provider.dart';

class GoodsDetailLogic extends GetxController {
  //参数： 商品源链接
  static const paramGoodsLink = "goods_link";

  final provider = Get.put(JDProvider());
  final realLink = "".obs;

  Future<GoodsLink> getGoodsLink(String link) =>
      provider.getGoodsLinkInfo(GetGoodsLinkRequest(goodsLink: link));
}
