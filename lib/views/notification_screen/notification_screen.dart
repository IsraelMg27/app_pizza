// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';

import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../utils/appbar_common.dart';

class NotificationHomeScreen extends StatelessWidget {
  NotificationHomeScreen({Key? key}) : super(key: key);

  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkModeController.isLightTheme.value
          ? ColorConfig.kWhiteColor
          : ColorConfig.kDarkModeColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
          child: CommonAppBar(
            title: StringConfig.notifications,
            leadingImage: ImagePath.arrow,
            color: darkModeController.isLightTheme.value
                ? ColorConfig.kBlackColor
                : ColorConfig.kWhiteColor,
            leadingOnTap: () {
              Get.back();
            },
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: SizeConfig.kHeight20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(StringConfig.today,
                  style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistSemiBold,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: FontConfig.kFontSize18,
                  )),
              const SizedBox(
                height: SizeConfig.kHeight10,
              ),
              Divider(
                color: ColorConfig.kTabColor.withOpacity(.2),
                thickness: 1,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  ImagePath.review1,
                  height: SizeConfig.kHeight48,
                  width: SizeConfig.kHeight48,
                ),
                title: Text(StringConfig.yourPizzaOrderCancel,
                    style: TextStyle(
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: FontConfig.kFontSize18,
                    )),
                subtitle: IntrinsicHeight(
                  child: Row(
                    children: [
                      Text(StringConfig.today,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize12,
                          )),
                      VerticalDivider(
                        color: ColorConfig.kHintColor,
                        thickness: 1,
                      ),
                      Text(StringConfig.timing2PM,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize12,
                          )),
                    ],
                  ),
                ),
                trailing: Text(StringConfig.newString,
                    style: TextStyle(
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      color: ColorConfig.kPrimaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: FontConfig.kFontSize12,
                    )),
              ),
              // SizedBox(height: SizeConfig.kHeight6,),
              Text(StringConfig.orderCancelString,
                  style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistRegular,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kHintColor
                        : ColorConfig.kWhiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: FontConfig.kFontSize14,
                  )),

              const SizedBox(
                height: SizeConfig.kHeight20,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  ImagePath.review1,
                  height: SizeConfig.kHeight48,
                  width: SizeConfig.kHeight48,
                ),
                title: Text(StringConfig.orderSuccess,
                    style: TextStyle(
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: FontConfig.kFontSize18,
                    )),
                subtitle: IntrinsicHeight(
                  child: Row(
                    children: [
                      Text(StringConfig.today,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize12,
                          )),
                      VerticalDivider(
                        color: ColorConfig.kHintColor,
                        thickness: 1,
                      ),
                      Text(StringConfig.timing4PM,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize12,
                          )),
                    ],
                  ),
                ),
                trailing: Text(StringConfig.newString,
                    style: TextStyle(
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      color: ColorConfig.kPrimaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: FontConfig.kFontSize12,
                    )),
              ),
              // SizedBox(height: SizeConfig.kHeight6,),
              Text(StringConfig.orderCancelString1,
                  style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistRegular,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kHintColor
                        : ColorConfig.kWhiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: FontConfig.kFontSize14,
                  )),
              const SizedBox(
                height: SizeConfig.kHeight30,
              ),

              Text(StringConfig.yesterday,
                  style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistSemiBold,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: FontConfig.kFontSize18,
                  )),
              const SizedBox(
                height: SizeConfig.kHeight6,
              ),
              Divider(
                color: ColorConfig.kTabColor.withOpacity(.2),
                thickness: 1,
              ),

              const SizedBox(
                height: SizeConfig.kHeight20,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  darkModeController.isLightTheme.value
                      ? ImagePath.credit
                      : ImagePath.creditCard,
                  height: SizeConfig.kHeight48,
                  width: SizeConfig.kHeight48,
                ),
                title: Text(StringConfig.creditCardConnected,
                    style: TextStyle(
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: FontConfig.kFontSize18,
                    )),
                subtitle: IntrinsicHeight(
                  child: Row(
                    children: [
                      Text(StringConfig.yesterday,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize12,
                          )),
                      VerticalDivider(
                        color: ColorConfig.kHintColor,
                        thickness: 1,
                      ),
                      Text(StringConfig.timing4PM,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize12,
                          )),
                    ],
                  ),
                ),
              ),
              // SizedBox(height: SizeConfig.kHeight6,),
              Text(StringConfig.creditSuccess,
                  style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistRegular,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kHintColor
                        : ColorConfig.kWhiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: FontConfig.kFontSize14,
                  )),

              const SizedBox(
                height: SizeConfig.kHeight20,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  ImagePath.review1,
                  height: SizeConfig.kHeight48,
                  width: SizeConfig.kHeight48,
                ),
                title: Text(StringConfig.orderSuccess,
                    style: TextStyle(
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: FontConfig.kFontSize18,
                    )),
                subtitle: IntrinsicHeight(
                  child: Row(
                    children: [
                      Text(StringConfig.today,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize12,
                          )),
                      VerticalDivider(
                        color: ColorConfig.kHintColor,
                        thickness: 1,
                      ),
                      Text(StringConfig.timing4PM,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize12,
                          )),
                    ],
                  ),
                ),
              ),
              // SizedBox(height: SizeConfig.kHeight6,),
              Text(StringConfig.orderCancelString,
                  style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistRegular,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kHintColor
                        : ColorConfig.kWhiteColor,
                    fontWeight: FontWeight.w400,
                    fontSize: FontConfig.kFontSize14,
                  )),
              const SizedBox(
                height: SizeConfig.kHeight20,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  ImagePath.review1,
                  height: SizeConfig.kHeight48,
                  width: SizeConfig.kHeight48,
                ),
                title: Text(StringConfig.yourPizzaOrderCancel,
                    style: TextStyle(
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: FontConfig.kFontSize18,
                    )),
                subtitle: IntrinsicHeight(
                  child: Row(
                    children: [
                      Text(StringConfig.today,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize12,
                          )),
                      VerticalDivider(
                        color: ColorConfig.kHintColor,
                        thickness: 1,
                      ),
                      Text(StringConfig.timing240PM,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize12,
                          )),
                    ],
                  ),
                ),
                trailing: Text(StringConfig.newString,
                    style: TextStyle(
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      color: ColorConfig.kPrimaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: FontConfig.kFontSize12,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
