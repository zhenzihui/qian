import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qian/page/category/view.dart';
import 'package:qian/page/category_detail/view.dart';
import 'package:qian/page/index/view.dart';
import 'package:qian/util/adaptor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    SU.initialize(context, uiWidth: 360);


    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      getPages: _pages(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IndexPage(),
    );
  }
}

_pages({Transition? transition}) {
  return [
    GetPage(name: "/", page: () => IndexPage(), transition: transition),
    GetPage(name: "/category", page: () => const CategoryPage(), transition: transition),
    GetPage(name: "/category-detail", page: () => CategoryDetailPage(), transition: transition),
    // GetPage(name: "/", page: () => IndexPage(), transition: transition),
    // GetPage(name: "/", page: () => IndexPage(), transition: transition),


  ];
}
