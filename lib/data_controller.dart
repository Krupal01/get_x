import 'package:get/get.dart';

class DataController extends GetxController {
  var count = 0.obs;

  void increseCount() {
    count.value += 1;
  }
}
