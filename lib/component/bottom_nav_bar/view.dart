import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:qian/model/local/global.dart';
import 'package:qian/page/index/logic.dart';
import 'package:qian/util/adaptor.dart';

import 'logic.dart';

class BottomNavBarComponent extends StatelessWidget {
  final Function(int)? onIndexChange;
  final List<NavBarData> navBarDataList;

  BottomNavBarComponent(
      {Key? key, this.onIndexChange, required this.navBarDataList})
      : super(key: key);

  final logic = Get.put(BottomNavBarLogic());

  _handleIndexChange(int index) {
    logic.selectedIndex.value = index;
    SU.appBarTitle.value = navBarDataList[index].title;
    onIndexChange?.call(index);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: SU.rpx(56),
        child: Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: navBarDataList.map((d) {
                final index = navBarDataList.indexOf(d);
                return NavItem(
                    selected: logic.selectedIndex.value == index,
                    icon: d.iconData,
                    title: d.title,
                    currentIndex: index,
                    onTap: () => _handleIndexChange(index));
              }).toList(),
          );
        }));
  }
}

class NavItem extends StatelessWidget {
  final int currentIndex;
  final IconData icon;
  final String title;
  final bool selected;
  final VoidCallback? onTap;

  NavItem({
    super.key,
    required this.icon,
    required this.title,
    this.selected = false,
    required this.currentIndex,
    this.onTap,
  });

  late Color selectedColor = SU.theme.primaryColor;

  Color? get color => selected ? selectedColor : null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, color: color),
          Text(
            title,
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }
}
