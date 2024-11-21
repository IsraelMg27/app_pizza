// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/utils/common_material_button.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../app_routes/app_routes.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../utils/appbar_common.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);

  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: darkModeController.isLightTheme.value
              ? ColorConfig.kWhiteColor
              : ColorConfig.kBlackColor,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
              child: CommonAppBar(
                title: "",
                leadingImage: ImagePath.arrow,
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kBlackColor
                    : ColorConfig.kWhiteColor,
                leadingOnTap: () {
                  Get.back();
                },
              )),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    StringConfig.otpVerification,
                    style: TextStyle(
                        fontFamily: FontFamilyConfig.urbanistSemiBold,
                        fontSize: FontConfig.kFontSize24,
                        fontWeight: FontWeight.w600,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kBlackColor
                            : ColorConfig.kWhiteColor),
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizeConfig.kHeight20),
                  child: Text(
                    StringConfig.sendTheCode,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: FontFamilyConfig.urbanistSemiBold,
                        fontSize: FontConfig.kFontSize14,
                        fontWeight: FontWeight.w400,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kHintColor
                            : ColorConfig.kDarkModeDividerColor),
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizeConfig.kHeight40),
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Pinput(
                      errorTextStyle: TextStyle(
                          fontSize: FontConfig.kFontSize12,
                          color: ColorConfig.kErrorColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: FontFamilyConfig.urbanistMedium),
                      validator: (value) {
                        return value == '2222' ? null : StringConfig.errorText;
                      },
                      separator: const SizedBox(
                        width: SizeConfig.kWidth20,
                      ),
                      defaultPinTheme: defaultPinTheme,
                      onClipboardFound: (value) {},
                      hapticFeedbackType: HapticFeedbackType.lightImpact,
                      onCompleted: (pin) {},
                      onChanged: (value) {},
                      focusedPinTheme: PinTheme(
                        width: SizeConfig.kHeight54,
                        height: SizeConfig.kHeight54,
                        textStyle: TextStyle(
                            color: ColorConfig.kPrimaryColor,
                            fontSize: FontConfig.kFontSize20,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamilyConfig.urbanistMedium),
                        decoration: BoxDecoration(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kFillColor
                              : ColorConfig.kDarkModeColor,
                          borderRadius:
                              BorderRadius.circular(SizeConfig.borderRadius10),
                          border: Border.all(
                            color: ColorConfig.kPrimaryColor,
                          ),
                        ),
                      ),
                      submittedPinTheme: PinTheme(
                        width: SizeConfig.kHeight54,
                        height: SizeConfig.kHeight54,
                        textStyle: TextStyle(
                            fontSize: FontConfig.kFontSize20,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamilyConfig.urbanistMedium),
                        decoration: BoxDecoration(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kFillColor
                              : ColorConfig.kDarkModeColor,
                          borderRadius:
                              BorderRadius.circular(SizeConfig.borderRadius10),
                        ),
                      ),
                      errorPinTheme: PinTheme(
                        width: SizeConfig.kHeight54,
                        height: SizeConfig.kHeight54,
                        textStyle: TextStyle(
                            fontSize: FontConfig.kFontSize20,
                            color: ColorConfig.kErrorColor,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamilyConfig.urbanistMedium),
                        decoration: BoxDecoration(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kFillColor
                              : ColorConfig.kDividerColor,
                          borderRadius:
                              BorderRadius.circular(SizeConfig.borderRadius10),
                          border: Border.all(color: ColorConfig.kErrorColor),
                        ),
                      ),
                      followingPinTheme: PinTheme(
                        width: SizeConfig.kHeight54,
                        height: SizeConfig.kHeight54,
                        textStyle: TextStyle(
                            fontSize: FontConfig.kFontSize20,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamilyConfig.urbanistMedium),
                        decoration: BoxDecoration(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kFillColor
                              : ColorConfig.kDarkModeColor,
                          borderRadius:
                              BorderRadius.circular(SizeConfig.borderRadius10),
                          // border: Border.all(
                          //   color: ColorConfig.kFillColor,
                          // ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight60,
                ),
                CommonMaterialButton(
                    height: SizeConfig.kHeight54,
                    buttonColor: ColorConfig.kPrimaryColor,
                    width: double.infinity,
                    buttonText: StringConfig.verify,
                    txtColor: ColorConfig.kWhiteColor,
                    onButtonClick: () {
                      Get.toNamed(AppRoutes.bottomBar);
                    }),
                const SizedBox(
                  height: SizeConfig.kHeight60,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: StringConfig.reSendCode,
                          style: TextStyle(
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontFamily: FontFamilyConfig.urbanistRegular,
                              fontSize: FontConfig.kFontSize14,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: StringConfig.time,
                          style: TextStyle(
                              color: ColorConfig.kPrimaryColor,
                              fontFamily: FontFamilyConfig.urbanistBold,
                              fontSize: FontConfig.kFontSize14,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  final defaultPinTheme = PinTheme(
    width: SizeConfig.kHeight54,
    height: SizeConfig.kHeight54,
    textStyle: TextStyle(
        fontSize: FontConfig.kFontSize20,
        color: ColorConfig.kBlackColor,
        fontFamily: FontFamilyConfig.urbanistMedium,
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: ColorConfig.kFillColor,
      borderRadius: BorderRadius.circular(SizeConfig.borderRadius10),
    ),
  );
}
