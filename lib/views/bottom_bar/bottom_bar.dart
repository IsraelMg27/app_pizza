// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/app_routes/app_routes.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/image_path.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/size_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/bottom_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/home/home_page.dart';
import 'package:get/get.dart';
import '../favorite_screen/favorite_screen.dart';
import '../order_screen/order_screen.dart';
import '../profile/profile_screen.dart';
import 'common_bottombar.dart';

class BottomBarScreen extends StatelessWidget {
  BottomBarScreen({Key? key}) : super(key: key);

  BottomNavigationController bottomController =
      Get.put(BottomNavigationController());

  DarkModeController darkModeController = Get.put(DarkModeController());

  void onTabTapped(int index) {
    bottomController.selected.value = index;
    bottomController.controller.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: darkModeController.isLightTheme.value
              ? ColorConfig.kWhiteColor
              : ColorConfig.kBlackColor,
          resizeToAvoidBottomInset: false,
          bottomNavigationBar:
              CommonBottomBar(bottomController: bottomController),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                Get.toNamed(AppRoutes.myCartScreen);
              },
              shape: const CircleBorder(),
              backgroundColor: ColorConfig.kPrimaryColor,
              child: Image.asset(
                ImagePath.cart,
                height: SizeConfig.kHeight25,
                width: SizeConfig.kHeight25,
              )),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: PageView(
            controller: bottomController.controller,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              HomePage(),
              const FavoriteScreen(),
              const OrderScreen(),
              ProfileScreen(),
            ],
          ),
        ));
  }
}
