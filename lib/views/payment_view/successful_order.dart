// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/app_routes/app_routes.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/image_path.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/size_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/bottom_controller.dart';
import 'package:get/get.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../controller/dark_mode_controller.dart';
import '../../utils/common_material_button.dart';

class SuccessfulOrderScreen extends StatelessWidget {
  SuccessfulOrderScreen({Key? key}) : super(key: key);

  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        backgroundColor: darkModeController.isLightTheme.value
            ? ColorConfig.kWhiteColor
            : ColorConfig.kBlackColor,
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 30, right: 40, top: 145, bottom: 50),
            child: SizedBox(
              child: Image.asset(
                darkModeController.isLightTheme.value
                    ? ImagePath.successOrder
                    : ImagePath.manDarkThemeImage,
              ),
            ),
          ),
          Text(StringConfig.successful,
              style: TextStyle(
                fontFamily: FontFamilyConfig.urbanistSemiBold,
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kBlackColor
                    : ColorConfig.kWhiteColor,
                fontWeight: FontWeight.w600,
                fontSize: FontConfig.kFontSize22,
              )),
          const SizedBox(
            height: SizeConfig.kHeight15,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(StringConfig.successString,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: FontFamilyConfig.urbanistRegular,
                  height: 1.4,
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kBlackColor
                      : ColorConfig.kWhiteColor,
                  fontWeight: FontWeight.w400,
                  fontSize: FontConfig.kFontSize14,
                )),
          ),
          Expanded(child: Container()),
          Column(children: [
            CommonMaterialButton(
                width: double.infinity,
                buttonColor: ColorConfig.kPrimaryColor,
                height: SizeConfig.kHeight52,
                txtColor: ColorConfig.kWhiteColor,
                buttonText: StringConfig.continues,
                onButtonClick: () {
                  Get.toNamed(AppRoutes.leaveARestaurantReviewScreen);
                }),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: SizeConfig.kHeight20),
                child: CommonMaterialButton(
                    width: double.infinity,
                    buttonColor: darkModeController.isLightTheme.value
                        ? ColorConfig.kContainerLightColor
                        : ColorConfig.kDarkDialougeColor,
                    height: SizeConfig.kHeight52,
                    txtColor: darkModeController.isLightTheme.value
                        ? ColorConfig.kPrimaryColor
                        : ColorConfig.kWhiteColor,
                    buttonText: StringConfig.viewOrders,
                    onButtonClick: () {
                      Get.toNamed(AppRoutes.order);
                    }))
          ])
        ])));
  }
}
