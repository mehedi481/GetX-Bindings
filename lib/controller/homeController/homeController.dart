import 'package:get/get.dart';

class HomePageController extends GetxController{
  var number = 0.obs;

  increment(){
    return number++;
  }

  void decrement(){
    if(number>0){
      number--;
    }
    else{
      Get.snackbar('Error', 'Please increment first',snackPosition:SnackPosition.BOTTOM);
    }
  }

}