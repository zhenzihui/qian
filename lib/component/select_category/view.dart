import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/component/category_left_list/view.dart';
import 'package:qian/component/category_right_list/view.dart';
import 'package:qian/model/local/category.dart';

import 'logic.dart';
//TODO: 最后需要重构
class SelectCategoryComponent extends StatelessWidget {
  final List<CategoryItem> dataList;

  SelectCategoryComponent({Key? key, required this.dataList}) : super(key: key);

  final logic = Get.put(SelectCategoryLogic());

  final controller = CategoryController();

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 3,
        child: CategoryLeftListComponent(
          dataList: dataList,
          controller: controller,
        ),
      ),
      Expanded(
          flex: 7,
          child: CategoryRightListComponent(
            controller: controller,
            dataList: dataList,
          ))
    ]);
  }
}

class CategoryController extends ChangeNotifier {
  //控制选择的大类index
  int _selectCategoryId = 0;

  //自动跳转的目标
  int? _destinationCategoryId;

  int get selectId => _selectCategoryId;

  int? get destinationId => _destinationCategoryId;

  set destinationId(int? value) {
    _destinationCategoryId = value;
  }

  set selectId(int value) {
    _selectCategoryId = value;
    if (_destinationCategoryId == _selectCategoryId) {
      _destinationCategoryId=null;
      notifyListeners();
    }
  }
}
