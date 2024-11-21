// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';

import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    required this.image,
    required this.name,
    required this.subTitle,
    super.key,
  });

  String image;
  String name;
  String subTitle;

  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.borderRadius12),
        color: darkModeController.isLightTheme.value
            ? ColorConfig.kWhiteColor
            : ColorConfig.kDarkModeColor,
        boxShadow: [
          BoxShadow(
              color: ColorConfig.kBlackColor.withOpacity(SizeConfig.kH02),
              blurRadius: SizeConfig.borderRadius6,
              offset: const Offset(SizeConfig.kHeight0, SizeConfig.kHeight0)),
        ],
      ),
      height: SizeConfig.kHeight70,
      width: double.infinity,
      child: ListTile(
        leading: Image.asset(
          image,
          // ImagePath.freeDelivery,
          height: SizeConfig.kHeight40,
          width: SizeConfig.kHeight40,
        ),
        title: Text(name,
            style: TextStyle(
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kBlackColor
                    : ColorConfig.kWhiteColor,
                fontFamily: FontFamilyConfig.urbanistSemiBold,
                fontWeight: FontWeight.w500,
                fontSize: FontConfig.kFontSize14)),
        subtitle: Text(subTitle,
            style: TextStyle(
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kBlackColor
                    : ColorConfig.kWhiteColor,
                fontFamily: FontFamilyConfig.urbanistRegular,
                fontWeight: FontWeight.w500,
                fontSize: FontConfig.kFontSize12)),
        trailing: Container(
          height: SizeConfig.kHeight30,
          width: SizeConfig.kHeight70,
          decoration: BoxDecoration(
              color: ColorConfig.kPrimaryColor,
              borderRadius: BorderRadius.circular(SizeConfig.borderRadius22)),
          child: Center(
            child: Text(
              StringConfig.claim,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorConfig.kWhiteColor,
                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                  fontWeight: FontWeight.w500,
                  fontSize: FontConfig.kFontSize14),
            ),
          ),
        ),
      ),
    );
  }
}
