// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_family.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';

import '../../../../config/color.dart';
import '../../../../config/image_path.dart';
import '../../../../config/size_config.dart';
import '../../../../config/string_config.dart';
import '../../../../controller/setting_controller.dart';
import '../../../../utils/appbar_common.dart';

class LanguageScreen extends StatelessWidget {
  LanguageScreen({Key? key}) : super(key: key);
  final SettingController _settingController = Get.put(SettingController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Stack(
          children: [
            SafeArea(
              child: Scaffold(
                backgroundColor: darkModeController.isLightTheme.value
                    ? ColorConfig.kWhiteColor
                    : ColorConfig.kBlackColor,
                appBar: PreferredSize(
                    preferredSize: const Size.fromHeight(SizeConfig.kHeight70),
                    child: CommonAppBar(path: StringConfig.language,
                      title: StringConfig.languages.tr,
                      leadingImage: ImagePath.arrow,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                      trailingImage: ImagePath.search,
                      leadingOnTap: () {
                        Get.back();
                      },
                    )),
                body: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: SizeConfig.kHeight22,
                            right: SizeConfig.kHeight22),
                        child: Column(children: [
                          GestureDetector(
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      StringConfig.englishUS,
                                      style: TextStyle(
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize16),
                                    ),
                                    Obx(() => Radio(
                                        value: 'English',
                                        groupValue: _settingController
                                            .selectedLanOption.value,
                                        activeColor: ColorConfig.kPrimaryColor,
                                        focusColor: ColorConfig.kPrimaryColor,
                                        hoverColor: ColorConfig.kPrimaryColor,
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                                (states) =>
                                                    ColorConfig.kPrimaryColor),
                                        onChanged: (value) {
                                          _settingController
                                              .changeLanguage('English');
                                          _settingController
                                              .selectedLanOption.value = value!;
                                        }))
                                  ]),
                            ),
                            onTap: () {
                              _settingController.changeLanguage('English');
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: SizeConfig.kHeight3,
                              bottom: SizeConfig.kHeight3,
                              // right: SizeConfig.kHeight14
                            ),
                            child: Divider(
                              color: ColorConfig.kHintColor
                                  .withOpacity(SizeConfig.kOpp02),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _settingController.changeLanguage('Arabic');
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      StringConfig.arabic,
                                      style: TextStyle(
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize16),
                                    ),
                                    Obx(() => Radio(
                                        value: 'Arabic',
                                        groupValue: _settingController
                                            .selectedLanOption.value,
                                        activeColor: ColorConfig.kPrimaryColor,
                                        focusColor: ColorConfig.kPrimaryColor,
                                        hoverColor: ColorConfig.kPrimaryColor,
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                                (states) =>
                                                    ColorConfig.kPrimaryColor),
                                        onChanged: (value) {
                                          _settingController
                                              .selectedLanOption.value = value!;
                                          _settingController
                                              .changeLanguage('Arabic');
                                        }))
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: SizeConfig.kHeight3,
                              bottom: SizeConfig.kHeight3,
                              // right: SizeConfig.kHeight14
                            ),
                            child: Divider(
                              color: ColorConfig.kHintColor
                                  .withOpacity(SizeConfig.kOpp02),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _settingController.changeLanguage('Hindi');
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      StringConfig.hindi,
                                      style: TextStyle(
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize16),
                                    ),
                                    Obx(() => Radio(
                                        value: 'Hindi',
                                        groupValue: _settingController
                                            .selectedLanOption.value,
                                        activeColor: ColorConfig.kPrimaryColor,
                                        focusColor: ColorConfig.kPrimaryColor,
                                        hoverColor: ColorConfig.kPrimaryColor,
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                                (states) =>
                                                    ColorConfig.kPrimaryColor),
                                        onChanged: (value) {
                                          _settingController
                                              .selectedLanOption.value = value!;
                                          _settingController
                                              .changeLanguage('Hindi');
                                        }))
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: SizeConfig.kHeight3,
                              bottom: SizeConfig.kHeight3,
                              // right: SizeConfig.kHeight14
                            ),
                            child: Divider(
                              color: ColorConfig.kHintColor
                                  .withOpacity(SizeConfig.kOpp02),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _settingController.changeLanguage('German');
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      StringConfig.german,
                                      style: TextStyle(
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize16),
                                    ),
                                    Obx(() => Radio(
                                        value: 'German',
                                        groupValue: _settingController
                                            .selectedLanOption.value,
                                        activeColor: ColorConfig.kPrimaryColor,
                                        focusColor: ColorConfig.kPrimaryColor,
                                        hoverColor: ColorConfig.kPrimaryColor,
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                                (states) =>
                                                    ColorConfig.kPrimaryColor),
                                        onChanged: (value) {
                                          _settingController
                                              .selectedLanOption.value = value!;
                                          _settingController
                                              .changeLanguage('German');
                                        }))
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: SizeConfig.kHeight3,
                              bottom: SizeConfig.kHeight3,
                              // right: SizeConfig.kHeight14
                            ),
                            child: Divider(
                              color: ColorConfig.kHintColor
                                  .withOpacity(SizeConfig.kOpp02),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _settingController.changeLanguage('Chinese');
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      StringConfig.chinese,
                                      style: TextStyle(
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize16),
                                    ),
                                    Obx(() => Radio(
                                        value: 'Chinese',
                                        groupValue: _settingController
                                            .selectedLanOption.value,
                                        activeColor: ColorConfig.kPrimaryColor,
                                        focusColor: ColorConfig.kPrimaryColor,
                                        hoverColor: ColorConfig.kPrimaryColor,
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                                (states) =>
                                                    ColorConfig.kPrimaryColor),
                                        onChanged: (value) {
                                          _settingController
                                              .selectedLanOption.value = value!;
                                          _settingController
                                              .changeLanguage('Chinese');
                                        }))
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: SizeConfig.kHeight3,
                              bottom: SizeConfig.kHeight3,
                              // right: SizeConfig.kHeight14
                            ),
                            child: Divider(
                              color: ColorConfig.kHintColor
                                  .withOpacity(SizeConfig.kOpp02),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _settingController.changeLanguage('French');
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      StringConfig.french,
                                      style: TextStyle(
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize16),
                                    ),
                                    Obx(() => Radio(
                                        value: 'French',
                                        groupValue: _settingController
                                            .selectedLanOption.value,
                                        activeColor: ColorConfig.kPrimaryColor,
                                        focusColor: ColorConfig.kPrimaryColor,
                                        hoverColor: ColorConfig.kPrimaryColor,
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                                (states) =>
                                                    ColorConfig.kPrimaryColor),
                                        onChanged: (value) {
                                          _settingController
                                              .selectedLanOption.value = value!;
                                          _settingController
                                              .changeLanguage('French');
                                        }))
                                  ]),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
