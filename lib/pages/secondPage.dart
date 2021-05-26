import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding/controller/homeController/homeController.dart';

// ignore: must_be_immutable
class SecondPage extends StatelessWidget {
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
              Obx(() => Text("Total number is : ${controller.number}")),
              MaterialButton(
                onPressed: () {
                  controller.decrement();
                },
                child: Text("Decrement"),
                color: Colors.orange,
              ),
              MaterialButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back to Home"),
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
