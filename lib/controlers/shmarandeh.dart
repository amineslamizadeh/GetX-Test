import 'package:get/get.dart';


class Shomarandeh extends GetxController
{
  var  currentNumber;

  @override
  void onInit() {
    // TODO: implement onInit
    currentNumber = 0.obs;
    super.onInit();
  }


  void ezafeKardan()
  {
    currentNumber++;
  }
}



