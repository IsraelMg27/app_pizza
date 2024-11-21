import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/setting_controller.dart';
import 'package:get/get.dart';
import '../../config/color.dart';
import '../../config/font_family.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../controller/home_controller.dart';
import '../../utils/common_material_button.dart';

String selectedOption = 'Categories';

sortBottomSheet(BuildContext context) {
  final SettingController settingController = Get.put(SettingController());
  HomeController homeController = Get.put(HomeController());
  DarkModeController darkModeController = Get.put(DarkModeController());
  settingController.loadSelectedLanguage();
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(SizeConfig.borderRadius25),
          topRight: Radius.circular(SizeConfig.borderRadius25),
        ),
      ),
      backgroundColor: darkModeController.isLightTheme.value
          ? ColorConfig.kWhiteColor
          : ColorConfig.kDarkModeColor,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: SizeConfig.kHeight20),
              child: SingleChildScrollView(
                  child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(SizeConfig.kHeight15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      Text(
                        StringConfig.sort,
                        style: TextStyle(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.kHeight20,
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                        ),
                      ),
                      InkWell(
                        child: Icon(
                          Icons.close,
                          color: ColorConfig.kHintColor,
                        ),
                        onTap: () {
                          homeController.isCuisine.value = true;
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizeConfig.kHeight15),
                  child: Divider(
                    thickness: 1,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor.withOpacity(.1)
                        : ColorConfig.kDividerColor.withOpacity(.3),
                  ),
                ),
                Obx(
                  () => Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.kHeight15,
                          right: settingController.arb.value
                              ? SizeConfig.kHeight15
                              : 0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfig.relevance,
                                    style: TextStyle(
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: SizeConfig.kHeight16,
                                        fontFamily:
                                            FontFamilyConfig.urbanistMedium),
                                  ),
                                  Radio(
                                      value: 'Recommended',
                                      groupValue: selectedOption,
                                      activeColor: ColorConfig.kPrimaryColor,
                                      focusColor: ColorConfig.kPrimaryColor,
                                      hoverColor: ColorConfig.kPrimaryColor,
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) =>
                                              ColorConfig.kPrimaryColor),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value!;
                                        });
                                      })
                                ]),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfig.deliveryTime,
                                    style: TextStyle(
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: SizeConfig.kHeight16,
                                        fontFamily:
                                            FontFamilyConfig.urbanistMedium),
                                  ),
                                  Radio(
                                      value: 'Newest',
                                      groupValue: selectedOption,
                                      activeColor: ColorConfig.kPrimaryColor,
                                      focusColor: ColorConfig.kPrimaryColor,
                                      hoverColor: ColorConfig.kPrimaryColor,
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) =>
                                              ColorConfig.kPrimaryColor),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value!;
                                        });
                                      })
                                ]),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfig.distance,
                                    style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistMedium,
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: SizeConfig.kHeight16),
                                  ),
                                  Radio(
                                      value: 'Lowest Price',
                                      groupValue: selectedOption,
                                      activeColor: ColorConfig.kPrimaryColor,
                                      focusColor: ColorConfig.kPrimaryColor,
                                      hoverColor: ColorConfig.kPrimaryColor,
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) =>
                                              ColorConfig.kPrimaryColor),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value!;
                                        });
                                      })
                                ]),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfig.cost,
                                    style: TextStyle(
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: SizeConfig.kHeight16,
                                        fontFamily:
                                            FontFamilyConfig.urbanistMedium),
                                  ),
                                  Radio(
                                      value: 'Highest Price',
                                      groupValue: selectedOption,
                                      activeColor: ColorConfig.kPrimaryColor,
                                      focusColor: ColorConfig.kPrimaryColor,
                                      hoverColor: ColorConfig.kPrimaryColor,
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) =>
                                              ColorConfig.kPrimaryColor),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value!;
                                        });
                                      })
                                ]),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfig.cost1,
                                    style: TextStyle(
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: SizeConfig.kHeight16,
                                        fontFamily:
                                            FontFamilyConfig.urbanistMedium),
                                  ),
                                  Radio(
                                      value: 'High To Low',
                                      groupValue: selectedOption,
                                      activeColor: ColorConfig.kPrimaryColor,
                                      focusColor: ColorConfig.kPrimaryColor,
                                      hoverColor: ColorConfig.kPrimaryColor,
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) =>
                                              ColorConfig.kPrimaryColor),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value!;
                                        });
                                      })
                                ]),
                            const SizedBox(
                              height: SizeConfig.kHeight32,
                            ),
                            Text(
                              StringConfig.deliveryTime,
                              style: TextStyle(
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: SizeConfig.kHeight18,
                                  fontFamily:
                                      FontFamilyConfig.urbanistSemiBold),
                            ),
                            const SizedBox(
                              height: SizeConfig.kHeight10,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfig.lessThan30Mins,
                                    style: TextStyle(
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: SizeConfig.kHeight16,
                                        fontFamily:
                                            FontFamilyConfig.urbanistMedium),
                                  ),
                                  Radio(
                                      value: 'lessThan30Mins',
                                      groupValue: selectedOption,
                                      activeColor: ColorConfig.kPrimaryColor,
                                      focusColor: ColorConfig.kPrimaryColor,
                                      hoverColor: ColorConfig.kPrimaryColor,
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) =>
                                              ColorConfig.kPrimaryColor),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value!;
                                        });
                                      })
                                ]),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfig.lessThan45Mins,
                                    style: TextStyle(
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: SizeConfig.kHeight16,
                                        fontFamily:
                                            FontFamilyConfig.urbanistMedium),
                                  ),
                                  Radio(
                                      value: 'lessThan45Mins',
                                      groupValue: selectedOption,
                                      activeColor: ColorConfig.kPrimaryColor,
                                      focusColor: ColorConfig.kPrimaryColor,
                                      hoverColor: ColorConfig.kPrimaryColor,
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) =>
                                              ColorConfig.kPrimaryColor),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value!;
                                        });
                                      })
                                ]),
                          ])),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CommonMaterialButton(
                        height: SizeConfig.kHeight42,
                        width: SizeConfig.kHeight140,
                        buttonColor: ColorConfig.kButtonLightColor,
                        txtColor: ColorConfig.kPrimaryColor,
                        buttonText: 'Reset',
                        onButtonClick: () {}),
                    CommonMaterialButton(
                        height: SizeConfig.kHeight42,
                        width: SizeConfig.kHeight140,
                        buttonColor: ColorConfig.kPrimaryColor,
                        txtColor: ColorConfig.kWhiteColor,
                        buttonText: 'Apply',
                        onButtonClick: () {}),
                  ],
                )
              ])));
        });
      });
}
