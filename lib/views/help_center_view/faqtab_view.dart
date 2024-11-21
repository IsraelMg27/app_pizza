// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';
import '../../../../../config/color.dart';
import '../../../../../config/font_config.dart';
import '../../../../../config/font_family.dart';
import '../../../../../config/image_path.dart';
import '../../../../../config/size_config.dart';
import '../../../../../config/string_config.dart';
import '../../../../../controller/setting_controller.dart';

class FaqView extends StatelessWidget {
  FaqView({Key? key}) : super(key: key);

  final SettingController _settingController = Get.put(SettingController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SizeConfig.kHeight10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeConfig.kHeight12),
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kTabColor.withOpacity(SizeConfig.kOpp03)
                    : ColorConfig.kDarkModeColor,
              ),
              child: TextField(
                style: TextStyle(
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                    fontFamily: FontFamilyConfig.urbanistMedium,
                    fontWeight: FontWeight.w500,
                    fontSize: FontConfig.kFontSize14),
                decoration: InputDecoration(
                    hintText: StringConfig.searchTab,
                    isDense: true,
                    contentPadding: const EdgeInsets.only(
                        top: SizeConfig.kHeight16,
                        bottom: SizeConfig.kHeight16),
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kHintColor
                            : ColorConfig.kWhiteColor,
                        fontFamily: FontFamilyConfig.urbanistMedium,
                        fontWeight: FontWeight.w500,
                        fontSize: FontConfig.kFontSize14),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                          top: SizeConfig.kHeight12,
                          bottom: SizeConfig.kHeight12),
                      child: Image.asset(
                        ImagePath.search,
                        height: SizeConfig.kHeight18,
                        width: SizeConfig.kHeight18,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kHintColor
                                .withOpacity(SizeConfig.kOpp07)
                            : ColorConfig.kWhiteColor,
                      ),
                    )),
              ),
            ),
            const SizedBox(height: SizeConfig.kHeight24),
            Container(
              width: Get.width,
              padding:
                  const EdgeInsets.symmetric(vertical: SizeConfig.kHeight2),
              decoration: BoxDecoration(
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kWhiteColor
                      : ColorConfig.kDarkModeColor,
                  borderRadius: BorderRadius.circular(SizeConfig.kHeight16),
                  boxShadow: [
                    BoxShadow(
                        color: ColorConfig.kDividerColor
                            .withOpacity(SizeConfig.kOpp1),
                        blurRadius: 3,
                        spreadRadius: 5,
                        offset: const Offset(0, 0))
                  ]),
              child: Obx(() => ExpansionTile(
                    collapsedBackgroundColor:
                        darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kDarkModeColor,
                    clipBehavior: Clip.antiAlias,
                    collapsedShape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.kHeight12)),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.kHeight12)),
                    backgroundColor: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    title: Text(
                      StringConfig.whatIsFoodie,
                      style: TextStyle(
                        fontFamily: FontFamilyConfig.urbanistSemiBold,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kBlackColor
                            : ColorConfig.kWhiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: FontConfig.kFontSize16,
                      ),
                    ),
                    trailing: Image.asset(
                      _settingController.isReservation.value
                          ? ImagePath.arrowRight
                          : ImagePath.arrowDown,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                      height: SizeConfig.kHeight20,
                      width: SizeConfig.kHeight20,
                    ),
                    children: <Widget>[
                      buildDivider(),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: SizeConfig.kHeight16,
                              top: SizeConfig.kHeight12,
                              bottom: SizeConfig.kHeight16,
                              right: SizeConfig.kHeight16),
                          child: Text(
                              StringConfig.loremIpsumDolorSitAmetConsectetur,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                        .withOpacity(SizeConfig.kOpp06)
                                    : ColorConfig.kWhiteColor,
                                fontWeight: FontWeight.w400,
                                fontSize: FontConfig.kFontSize12,
                              )))
                    ],
                    onExpansionChanged: (bool expanded) {
                      _settingController.isReservation.value = expanded;
                    },
                  )),
            ),
            const SizedBox(height: SizeConfig.kHeight24),
            Container(
              width: Get.width,
              padding:
                  const EdgeInsets.symmetric(vertical: SizeConfig.kHeight2),
              decoration: BoxDecoration(
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kWhiteColor
                      : ColorConfig.kDarkModeColor,
                  borderRadius: BorderRadius.circular(SizeConfig.kHeight16),
                  boxShadow: [
                    BoxShadow(
                        color: ColorConfig.kDividerColor
                            .withOpacity(SizeConfig.kOpp1),
                        blurRadius: 3,
                        spreadRadius: 5,
                        offset: const Offset(0, 0))
                  ]),
              child: Obx(() => ExpansionTile(
                    collapsedBackgroundColor:
                        darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kDarkModeColor,
                    clipBehavior: Clip.antiAlias,
                    collapsedShape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.kHeight12)),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.kHeight12)),
                    backgroundColor: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    title: Text(
                      StringConfig.howToUseFoodie,
                      style: TextStyle(
                        fontFamily: FontFamilyConfig.urbanistSemiBold,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kBlackColor
                            : ColorConfig.kWhiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: FontConfig.kFontSize16,
                      ),
                    ),
                    trailing: Image.asset(
                      _settingController.isOffers.value
                          ? ImagePath.arrowRight
                          : ImagePath.arrowDown,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                      height: SizeConfig.kHeight20,
                      width: SizeConfig.kHeight20,
                    ),
                    children: <Widget>[
                      buildDivider(),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: SizeConfig.kHeight16,
                              top: SizeConfig.kHeight12,
                              bottom: SizeConfig.kHeight16,
                              right: SizeConfig.kHeight16),
                          child: Text(
                              StringConfig.loremIpsumDolorSitAmetConsectetur,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                        .withOpacity(SizeConfig.kOpp06)
                                    : ColorConfig.kWhiteColor,
                                fontWeight: FontWeight.w400,
                                fontSize: FontConfig.kFontSize12,
                              )))
                    ],
                    onExpansionChanged: (bool expanded) {
                      _settingController.isOffers.value = expanded;
                    },
                  )),
            ),
            const SizedBox(height: SizeConfig.kHeight24),
            Container(
              width: Get.width,
              padding:
                  const EdgeInsets.symmetric(vertical: SizeConfig.kHeight2),
              decoration: BoxDecoration(
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kWhiteColor
                      : ColorConfig.kDarkModeColor,
                  borderRadius: BorderRadius.circular(SizeConfig.kHeight16),
                  boxShadow: [
                    BoxShadow(
                        color: ColorConfig.kDividerColor
                            .withOpacity(SizeConfig.kOpp1),
                        blurRadius: 3,
                        spreadRadius: 5,
                        offset: const Offset(0, 0))
                  ]),
              child: Obx(() => ExpansionTile(
                    collapsedBackgroundColor:
                        darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kDarkModeColor,
                    clipBehavior: Clip.antiAlias,
                    collapsedShape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.kHeight12)),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.kHeight12)),
                    backgroundColor: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    title: Text(
                      StringConfig.howDoICancelAnOrders,
                      style: TextStyle(
                        fontFamily: FontFamilyConfig.urbanistSemiBold,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kBlackColor
                            : ColorConfig.kWhiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: FontConfig.kFontSize16,
                      ),
                    ),
                    trailing: Image.asset(
                      _settingController.isLikes.value
                          ? ImagePath.arrowRight
                          : ImagePath.arrowDown,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                      height: SizeConfig.kHeight20,
                      width: SizeConfig.kHeight20,
                    ),
                    children: <Widget>[
                      buildDivider(),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: SizeConfig.kHeight16,
                              top: SizeConfig.kHeight12,
                              bottom: SizeConfig.kHeight16,
                              right: SizeConfig.kHeight16),
                          child: Text(
                              StringConfig.loremIpsumDolorSitAmetConsectetur,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                        .withOpacity(SizeConfig.kOpp06)
                                    : ColorConfig.kWhiteColor,
                                fontWeight: FontWeight.w400,
                                fontSize: FontConfig.kFontSize12,
                              )))
                    ],
                    onExpansionChanged: (bool expanded) {
                      _settingController.isLikes.value = expanded;
                    },
                  )),
            ),
            const SizedBox(height: SizeConfig.kHeight24),
            Container(
              width: Get.width,
              padding:
                  const EdgeInsets.symmetric(vertical: SizeConfig.kHeight2),
              decoration: BoxDecoration(
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kWhiteColor
                      : ColorConfig.kDarkModeColor,
                  borderRadius: BorderRadius.circular(SizeConfig.kHeight16),
                  boxShadow: [
                    BoxShadow(
                        color: ColorConfig.kDividerColor
                            .withOpacity(SizeConfig.kOpp1),
                        blurRadius: 3,
                        spreadRadius: 5,
                        offset: const Offset(0, 0))
                  ]),
              child: Obx(() => ExpansionTile(
                    collapsedBackgroundColor:
                        darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kDarkModeColor,
                    clipBehavior: Clip.antiAlias,
                    collapsedShape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.kHeight12)),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.kHeight12)),
                    backgroundColor: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    title: Text(
                      StringConfig.howDoExitTheApp,
                      style: TextStyle(
                        fontFamily: FontFamilyConfig.urbanistSemiBold,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kBlackColor
                            : ColorConfig.kWhiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: FontConfig.kFontSize16,
                      ),
                    ),
                    trailing: Image.asset(
                      _settingController.isMore.value
                          ? ImagePath.arrowRight
                          : ImagePath.arrowDown,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                      height: SizeConfig.kHeight20,
                      width: SizeConfig.kHeight20,
                    ),
                    children: <Widget>[
                      buildDivider(),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: SizeConfig.kHeight16,
                              top: SizeConfig.kHeight12,
                              bottom: SizeConfig.kHeight16,
                              right: SizeConfig.kHeight16),
                          child: Text(
                              StringConfig.loremIpsumDolorSitAmetConsectetur,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                        .withOpacity(SizeConfig.kOpp06)
                                    : ColorConfig.kWhiteColor,
                                fontWeight: FontWeight.w400,
                                fontSize: FontConfig.kFontSize12,
                              )))
                    ],
                    onExpansionChanged: (bool expanded) {
                      _settingController.isMore.value = expanded;
                    },
                  )),
            ),
            const SizedBox(height: SizeConfig.kHeight24),
            Container(
              width: Get.width,
              padding:
                  const EdgeInsets.symmetric(vertical: SizeConfig.kHeight2),
              decoration: BoxDecoration(
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kWhiteColor
                      : ColorConfig.kDarkModeColor,
                  borderRadius: BorderRadius.circular(SizeConfig.kHeight16),
                  boxShadow: [
                    BoxShadow(
                        color: ColorConfig.kDividerColor
                            .withOpacity(SizeConfig.kOpp1),
                        blurRadius: 3,
                        spreadRadius: 5,
                        offset: const Offset(0, 0))
                  ]),
              child: Obx(() => ExpansionTile(
                    collapsedBackgroundColor:
                        darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kDarkModeColor,
                    clipBehavior: Clip.antiAlias,
                    collapsedShape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.kHeight12)),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.kHeight12)),
                    backgroundColor: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    title: Text(
                      StringConfig.howToUseFoodie,
                      style: TextStyle(
                        fontFamily: FontFamilyConfig.urbanistSemiBold,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kBlackColor
                            : ColorConfig.kWhiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: FontConfig.kFontSize16,
                      ),
                    ),
                    trailing: Image.asset(
                      _settingController.isOffers2.value
                          ? ImagePath.arrowRight
                          : ImagePath.arrowDown,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                      height: SizeConfig.kHeight20,
                      width: SizeConfig.kHeight20,
                    ),
                    children: <Widget>[
                      buildDivider(),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: SizeConfig.kHeight16,
                              top: SizeConfig.kHeight12,
                              bottom: SizeConfig.kHeight16,
                              right: SizeConfig.kHeight16),
                          child: Text(
                              StringConfig.loremIpsumDolorSitAmetConsectetur,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                        .withOpacity(SizeConfig.kOpp06)
                                    : ColorConfig.kWhiteColor,
                                fontWeight: FontWeight.w400,
                                fontSize: FontConfig.kFontSize12,
                              )))
                    ],
                    onExpansionChanged: (bool expanded) {
                      _settingController.isOffers2.value = expanded;
                    },
                  )),
            ),
            const SizedBox(height: SizeConfig.kHeight24),
            Container(
              width: Get.width,
              padding:
                  const EdgeInsets.symmetric(vertical: SizeConfig.kHeight2),
              decoration: BoxDecoration(
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kWhiteColor
                      : ColorConfig.kDarkModeColor,
                  borderRadius: BorderRadius.circular(SizeConfig.kHeight16),
                  boxShadow: [
                    BoxShadow(
                        color: ColorConfig.kDividerColor
                            .withOpacity(SizeConfig.kOpp1),
                        blurRadius: 3,
                        spreadRadius: 5,
                        offset: const Offset(0, 0))
                  ]),
              child: Obx(
                () => ExpansionTile(
                  collapsedBackgroundColor:
                      darkModeController.isLightTheme.value
                          ? ColorConfig.kWhiteColor
                          : ColorConfig.kDarkModeColor,
                  clipBehavior: Clip.antiAlias,
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(SizeConfig.kHeight12)),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(SizeConfig.kHeight12)),
                  backgroundColor: darkModeController.isLightTheme.value
                      ? ColorConfig.kWhiteColor
                      : ColorConfig.kDarkModeColor,
                  title: Text(
                    StringConfig.howDoICancelAnOrders,
                    style: TextStyle(
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: FontConfig.kFontSize16,
                    ),
                  ),
                  trailing: Image.asset(
                    _settingController.isMore2.value
                        ? ImagePath.arrowRight
                        : ImagePath.arrowDown,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                    height: SizeConfig.kHeight20,
                    width: SizeConfig.kHeight20,
                  ),
                  children: <Widget>[
                    buildDivider(),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: SizeConfig.kHeight16,
                            top: SizeConfig.kHeight12,
                            bottom: SizeConfig.kHeight16,
                            right: SizeConfig.kHeight16),
                        child:
                            Text(StringConfig.loremIpsumDolorSitAmetConsectetur,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistRegular,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                          .withOpacity(SizeConfig.kOpp06)
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: FontConfig.kFontSize12,
                                )))
                  ],
                  onExpansionChanged: (bool expanded) {
                    _settingController.isMore2.value = expanded;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildDivider() {
    return Container(
      width: Get.width,
      height: SizeConfig.kHeight1,
      margin: const EdgeInsets.symmetric(horizontal: SizeConfig.kHeight16),
      color: ColorConfig.kHintColor.withOpacity(SizeConfig.kOpp02),
    );
  }
}
