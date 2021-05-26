import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding/controller/homeController/homeController.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  var controller = Get.find<HomePageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter app with getX"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Obx(()=>Text("Total number is : ${controller.number}")),
              MaterialButton(
                onPressed: () {
                  controller.increment();
                  print("increment clicked");
                },
                child: Text("Increment"),
                color: Colors.orange,
              ),
              MaterialButton(
                onPressed: () {
                  Get.toNamed("/secondPage");
                },
                child: Text("Second Page"),
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
