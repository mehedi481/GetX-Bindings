import 'package:flutter/material.dart';
import 'package:getx_binding/controller/bindings/homeControllerBindings.dart';
import 'package:getx_binding/pages/homePage.dart';
import 'package:get/get.dart';
import 'package:getx_binding/pages/secondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Counter app with getX",
      initialRoute: '/homePage',
      getPages: [
        GetPage(name: "/homePage", page: () => HomePage(),binding: HomeBindings()),
        GetPage(name: "/secondPage", page: () => SecondPage()),
      ],
    );
  }
}
