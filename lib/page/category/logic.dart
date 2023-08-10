import 'package:get/get.dart';
import 'package:qian/model/local/category.dart';
import 'package:qian/model/remote/json_data.dart';
import 'package:qian/provider/jd_provider.dart';

class CategoryLogic extends GetxController {
  final provider = Get.put(JDProvider());


  Future<List<CategoryItem>> getCategoryList() {
    return provider.getCategories();
  }

}
