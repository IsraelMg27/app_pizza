// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/setting_controller.dart';
import 'package:get/get.dart';

import '../../../../config/color.dart';
import '../../../../config/font_config.dart';
import '../../../../config/font_family.dart';
import '../../../../config/image_path.dart';
import '../../../../config/size_config.dart';
import '../../../../config/string_config.dart';
import '../../../../utils/appbar_common.dart';

class TermsServiceScreen extends StatelessWidget {
  TermsServiceScreen({Key? key}) : super(key: key);
  final SettingController settingController = Get.put(SettingController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    settingController.loadSelectedLanguage();
    return Obx(() => SafeArea(
        child: Scaffold(
            backgroundColor: darkModeController.isLightTheme.value
                ? ColorConfig.kWhiteColor
                : ColorConfig.kBlackColor,
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(SizeConfig.kHeight70),
                child: CommonAppBar(
                  title: StringConfig.termsService,
                  leadingImage: ImagePath.arrow,
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kBlackColor
                      : ColorConfig.kWhiteColor,
                  leadingOnTap: () {
                    Get.back();
                  },
                )),
            body: SingleChildScrollView(
                child: Obx(() => Padding(
                      padding: EdgeInsets.only(
                        right: settingController.arb.value
                            ? SizeConfig.kHeight12
                            : 0,
                        left: settingController.arb.value
                            ? 0
                            : SizeConfig.kHeight12,
                        bottom: SizeConfig.kHeight10,
                        top: SizeConfig.kHeight10,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(StringConfig.acceptanceOfTerms,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize18,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: SizeConfig.kHeight12,
                                  top: SizeConfig.kHeight5,
                                  bottom: SizeConfig.kHeight15),
                              child: Text(StringConfig.discripstion1,
                                  style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kHintColor
                                        : ColorConfig.kDividerColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: FontConfig.kFontSize15,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: SizeConfig.kHeight10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(StringConfig.title1,
                                      style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistSemiBold,
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                                .withOpacity(.9)
                                            : ColorConfig.kWhiteColor
                                                .withOpacity(.7),
                                        fontWeight: FontWeight.w600,
                                        fontSize: FontConfig.kFontSize16,
                                      )),
                                  const SizedBox(
                                    height: SizeConfig.kHeight7,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: SizeConfig.kHeight30),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(StringConfig.dot,
                                            style: TextStyle(
                                              fontFamily: FontFamilyConfig
                                                  .urbanistRegular,
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kBlackColor
                                                  : ColorConfig.kWhiteColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: FontConfig.kFontSize15,
                                            )),
                                        const SizedBox(
                                          width: SizeConfig.kHeight7,
                                        ),
                                        Text(StringConfig.disc1,
                                            style: TextStyle(
                                              fontFamily: FontFamilyConfig
                                                  .urbanistRegular,
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kHintColor
                                                  : ColorConfig.kWhiteColor
                                                      .withOpacity(.7),
                                              fontWeight: FontWeight.w400,
                                              fontSize: FontConfig.kFontSize15,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: SizeConfig.kHeight30,
                                        bottom: SizeConfig.kHeight30),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(StringConfig.dot,
                                            style: TextStyle(
                                              fontFamily: FontFamilyConfig
                                                  .urbanistRegular,
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kBlackColor
                                                  : ColorConfig.kWhiteColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: FontConfig.kFontSize15,
                                            )),
                                        const SizedBox(
                                          width: SizeConfig.kHeight7,
                                        ),
                                        Text(StringConfig.disc2,
                                            style: TextStyle(
                                              fontFamily: FontFamilyConfig
                                                  .urbanistRegular,
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kHintColor
                                                  : ColorConfig.kWhiteColor
                                                      .withOpacity(.7),
                                              fontWeight: FontWeight.w400,
                                              fontSize: FontConfig.kFontSize15,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(StringConfig.definitions,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize18,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: SizeConfig.kHeight10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: SizeConfig.kHeight7,
                                  ),
                                  Text(StringConfig.discripstion1,
                                      style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistRegular,
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kHintColor
                                            : ColorConfig.kWhiteColor
                                                .withOpacity(.7),
                                        fontWeight: FontWeight.w400,
                                        fontSize: FontConfig.kFontSize15,
                                      )),
                                  const SizedBox(
                                    height: SizeConfig.kHeight7,
                                  ),
                                  Text(StringConfig.title1,
                                      style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistRegular,
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kHintColor
                                            : ColorConfig.kWhiteColor
                                                .withOpacity(.7),
                                        fontWeight: FontWeight.w400,
                                        fontSize: FontConfig.kFontSize15,
                                      )),
                                ],
                              ),
                            ),
                          ]),
                    ))))));
  }
}
