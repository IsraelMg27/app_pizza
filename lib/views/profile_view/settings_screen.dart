// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:foodish_delivery_flutter_ui_kit/app_routes/app_routes.dart';
import 'package:get/get.dart';
import '../../../config/color.dart';
import '../../../config/font_config.dart';
import '../../../config/font_family.dart';
import '../../../config/image_path.dart';
import '../../../config/size_config.dart';
import '../../../config/string_config.dart';
import '../../../utils/appbar_common.dart';
import '../../controller/dark_mode_controller.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(() => Scaffold(
            backgroundColor: darkModeController.isLightTheme.value
                ? ColorConfig.kWhiteColor
                : ColorConfig.kDarkModeColor,
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
                child: CommonAppBar(
                  path: StringConfig.language,
                  title: StringConfig.settings.tr,
                  leadingImage: ImagePath.arrow,
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kBlackColor
                      : ColorConfig.kWhiteColor,
                  leadingOnTap: () {
                    Get.back();
                  },
                )),
            body: Padding(
                padding: const EdgeInsets.only(
                    left: SizeConfig.kHeight20,
                    right: SizeConfig.kHeight20,
                    top: SizeConfig.kHeight20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.language);
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              ImagePath.global,
                              height: SizeConfig.kHeight22,
                              width: SizeConfig.kHeight22,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight20,
                            ),
                            Text(StringConfig.language.tr,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize17,
                                )),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              size: SizeConfig.kHeight18,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: SizeConfig.kHeight15),
                        child: Divider(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kHintColor
                                  .withOpacity(SizeConfig.kOpp02)
                              : ColorConfig.kDarkModeDividerColor
                                  .withOpacity(SizeConfig.kOpp06),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            ImagePath.sun,
                            height: SizeConfig.kHeight22,
                            width: SizeConfig.kHeight22,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                          ),
                          const SizedBox(
                            width: SizeConfig.kHeight20,
                          ),
                          Text(
                              darkModeController.isLightTheme.value
                                  ? StringConfig.lightMode.tr
                                  : StringConfig.darkMode.tr,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistSemiBold,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                                fontWeight: FontWeight.w600,
                                fontSize: FontConfig.kFontSize17,
                              )),
                          const Spacer(),
                          ObxValue(
                            (data) => FlutterSwitch(
                                width: SizeConfig.kHeight45,
                                height: SizeConfig.kHeight23,
                                inactiveColor: ColorConfig.kButtonLightColor,
                                toggleSize: FontConfig.kFontSize18,
                                padding: SizeConfig.kHeight1,
                                value: darkModeController.isLightTheme.value,
                                activeColor: ColorConfig.kPrimaryColor,
                                borderRadius: 40,
                                onToggle: (value) {
                                  darkModeController.isLightTheme.value = value;
                                  Get.changeThemeMode(
                                    darkModeController.isLightTheme.value
                                        ? ThemeMode.dark
                                        : ThemeMode.light,
                                  );
                                  darkModeController.saveThemeStatus();
                                }
                                // onToggle: (value) =>
                                //     _settingController.vibrateSwitch(value),
                                ),
                            false.obs,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: SizeConfig.kHeight15),
                        child: Divider(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kHintColor
                                  .withOpacity(SizeConfig.kOpp02)
                              : ColorConfig.kDarkModeDividerColor
                                  .withOpacity(SizeConfig.kOpp06),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.helpCenter);
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              ImagePath.dangerSquare,
                              height: SizeConfig.kHeight22,
                              width: SizeConfig.kHeight22,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight20,
                            ),
                            Text(StringConfig.helpCenter.tr,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize17,
                                )),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              size: SizeConfig.kHeight18,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: SizeConfig.kHeight15),
                        child: Divider(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kHintColor
                                  .withOpacity(SizeConfig.kOpp02)
                              : ColorConfig.kDarkModeDividerColor
                                  .withOpacity(SizeConfig.kOpp06),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.termsService);
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              ImagePath.shieldWarning,
                              height: SizeConfig.kHeight22,
                              width: SizeConfig.kHeight22,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight20,
                            ),
                            Text(StringConfig.termsOfService.tr,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize17,
                                )),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              size: SizeConfig.kHeight18,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: SizeConfig.kHeight15),
                        child: Divider(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kHintColor
                                  .withOpacity(SizeConfig.kOpp02)
                              : ColorConfig.kDarkModeDividerColor
                                  .withOpacity(SizeConfig.kOpp06),
                        ),
                      ),
                    ])))));
  }
}
