import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  PageController controller = PageController(initialPage: 0);
  RxInt selected = 0.obs;

  void navigateToOrderScreen() {
    selected.value = 2;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
