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
  final dataList = [].obs;

  final searchReq = GoodsRequest.page(1, 20).obs;

  final provider = Get.find<JDProvider>();

  Future<List<BaseGoods>> findGoods(GoodsRequest req) {
    return provider.universalGoodsList(req);
  }



}
