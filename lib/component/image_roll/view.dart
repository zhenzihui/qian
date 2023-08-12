import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:qian/util/adaptor.dart';

import 'logic.dart';

//轮播图
class ImageRollComponent extends StatelessWidget {
  final List<String> imageUrls;

  ImageRollComponent({Key? key, required this.imageUrls}) : super(key: key);
  final logic = Get.put(ImageRollLogic());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: SU.rpx(360),
        child: imageUrls.isEmpty
            ? const CupertinoActivityIndicator()
            : PageView(
                children: imageUrls
                    .map((url) => Image.network(
                          url,
                          fit: BoxFit.cover,
                        ))
                    .toList(),
              ));
  }
}
