import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/component/select_category/view.dart';
import 'package:qian/model/local/category.dart';

import 'logic.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(CategoryLogic());

    return FutureBuilder(
        future: logic.getCategoryList(),
        builder: (context, snapshot) {
      if (snapshot.connectionState != ConnectionState.done) {
        return Center(child: CircularProgressIndicator());
      }

      if (snapshot.hasError) {
        return Text("${snapshot.error}");
      }
      final data = snapshot.data as List<CategoryItem>;
      return SelectCategoryComponent(dataList: data);
    });

  }
}
