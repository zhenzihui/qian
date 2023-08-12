import 'package:qian/model/remote/GoodsLink.dart';
import 'package:qian/model/remote/goods_json.dart';

class BaseGoods {
  //🆔
  final num id;

  //标题
  final String shortName;

  //单个图片
  final String goodsImg;

  //原价
  final num goodsPrice;

  //真实价格
  final num finalPrice;

  //商品链接
  final String? link;

  BaseGoods(this.id, this.shortName, this.goodsImg, this.goodsPrice,
      this.finalPrice, this.link);

  static BaseGoods from(GoodsJson gj) {
    return BaseGoods(
        gj.id ?? 0,
        gj.shortName ?? "",
        gj.goodsImg ?? "",
        gj.goodsPrice ?? double.infinity,
        gj.finalPrice ?? double.infinity,
        gj.goodsLink);
  }
}
