// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../controller/bottom_controller.dart';

class CommonBottomBar extends StatelessWidget {
  CommonBottomBar({
    super.key,
    required this.bottomController,
  });

  final BottomNavigationController bottomController;
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: darkModeController.isLightTheme.value
                  ? Colors.grey.withOpacity(SizeConfig.kOpp02)
                  : ColorConfig.kPrimaryColor.withOpacity(SizeConfig.kOpp02),
              blurRadius: 12,
              spreadRadius: SizeConfig.kHeight1,
              offset: const Offset(0.0, 0.0),
            )
          ],
        ),
        child: StylishBottomBar(
          backgroundColor: darkModeController.isLightTheme.value
              ? ColorConfig.kWhiteColor
              : ColorConfig.kBlackColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(SizeConfig.borderRadius20),
            topLeft: Radius.circular(SizeConfig.borderRadius20),
          ),
          option: AnimatedBarOptions(
            padding: const EdgeInsets.only(top: SizeConfig.kHeight15),
            opacity: 0.0,
          ),
          items: [
            BottomBarItem(
              icon: Image.asset(
                ImagePath.homeUnfill,
                height: SizeConfig.kHeight25,
                width: SizeConfig.kHeight25,
                color: ColorConfig.kHintColor,
              ),
              selectedIcon: Image.asset(
                ImagePath.home,
                height: SizeConfig.kHeight25,
                width: SizeConfig.kHeight25,
              ),
              selectedColor: ColorConfig.kPrimaryColor,
              unSelectedColor: darkModeController.isLightTheme.value
                  ? ColorConfig.kWhiteColor
                  : ColorConfig.kBlackColor,
              title: const Text(
                '.',
                style: TextStyle(
                  fontSize: FontConfig.kFontSize20,
                ),
              ),
            ),
            BottomBarItem(
              icon: Image.asset(
                ImagePath.heart,
                height: SizeConfig.kHeight25,
                width: SizeConfig.kHeight25,
                color: ColorConfig.kHintColor,
              ),
              selectedIcon: Image.asset(
                ImagePath.fillHeart,
                height: SizeConfig.kHeight25,
                width: SizeConfig.kHeight25,
                color: ColorConfig.kPrimaryColor,
              ),
              selectedColor: ColorConfig.kPrimaryColor,
              unSelectedColor: darkModeController.isLightTheme.value
                  ? ColorConfig.kWhiteColor
                  : ColorConfig.kBlackColor,
              title: const Text(
                '.',
                style: TextStyle(fontSize: FontConfig.kFontSize20),
              ),
            ),
            BottomBarItem(
              icon: Image.asset(
                ImagePath.list,
                height: SizeConfig.kHeight25,
                width: SizeConfig.kHeight25,
                color: ColorConfig.kHintColor,
              ),
              selectedIcon: Image.asset(
                ImagePath.fillClipboardList,
                height: SizeConfig.kHeight25,
                width: SizeConfig.kHeight25,
                color: ColorConfig.kPrimaryColor,
              ),
              selectedColor: ColorConfig.kPrimaryColor,
              unSelectedColor: darkModeController.isLightTheme.value
                  ? ColorConfig.kWhiteColor
                  : ColorConfig.kBlackColor,
              title: const Text(
                '.',
                style: TextStyle(fontSize: FontConfig.kFontSize20),
              ),
            ),
            BottomBarItem(
              icon: Image.asset(
                ImagePath.user,
                height: SizeConfig.kHeight25,
                width: SizeConfig.kHeight25,
                color: ColorConfig.kHintColor,
              ),
              selectedIcon: Image.asset(
                ImagePath.fillUser,
                height: SizeConfig.kHeight25,
                width: SizeConfig.kHeight25,
                color: ColorConfig.kPrimaryColor,
              ),
              selectedColor: ColorConfig.kPrimaryColor,
              unSelectedColor: darkModeController.isLightTheme.value
                  ? ColorConfig.kWhiteColor
                  : ColorConfig.kBlackColor,
              title: const Text(
                '.',
                style: TextStyle(fontSize: FontConfig.kFontSize20),
              ),
            ),
          ],
          hasNotch: true,
          notchStyle: NotchStyle.circle,
          fabLocation: StylishBarFabLocation.center,
          currentIndex: bottomController.selected.value,
          elevation: 3,
          onTap: (index) {
            bottomController.controller.jumpToPage(index);
            bottomController.selected.value = index;
          },
        ),
      ),
    );
  }
}
