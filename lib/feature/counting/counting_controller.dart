import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CountingController extends GetxController {
  var count = 0.obs;
  void increase() => count += 1;
}