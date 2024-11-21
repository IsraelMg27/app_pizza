// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_family.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/setting_controller.dart';
import 'package:get/get.dart';

import '../config/color.dart';
import '../config/font_config.dart';
import '../config/size_config.dart';

class CommonAppBar extends StatelessWidget {
  final String? title;
  final String? leadingImage;
  final String? trailingImage;
  final Color? color;
  final Function()? leadingOnTap;
  final Function()? trailingOnTap;
  final List<Widget>? actions;
  final String? path;

  CommonAppBar({
    super.key,
    this.title,
    this.leadingImage,
    this.trailingImage,
    this.color,
    this.leadingOnTap,
    this.trailingOnTap,
    this.actions,
    this.path,
  });

  DarkModeController darkModeController = Get.put(DarkModeController());
  final SettingController settingController = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    settingController.loadSelectedLanguage();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: SizeConfig.kHeight20, vertical: SizeConfig.kHeight20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          leadingImage == null
              ? const SizedBox(
                  width: SizeConfig.kHeight24,
                )
              : path == StringConfig.language
                  ? Obx(() => settingController.arb.value
              ? RotationTransition(
            turns: AlwaysStoppedAnimation(
              settingController.arb.value ? 0.5 : 1.0,
            ),
            child: GestureDetector(
                onTap: leadingOnTap,
                child: Image.asset(
                  leadingImage ?? '',
                  height: SizeConfig.kHeight24,
                  width: SizeConfig.kHeight24,
                  color: color,
                )),
          )
              : RotationTransition(
            turns: AlwaysStoppedAnimation(
              settingController.arb.value ? 0.5 : 1.0,
            ),
            child: GestureDetector(
                onTap: leadingOnTap,
                child: Image.asset(
                  leadingImage ?? '',
                  height: SizeConfig.kHeight24,
                  width: SizeConfig.kHeight24,
                  color: color,
                )),
          ))
                  : GestureDetector(
                      onTap: leadingOnTap,
                      child: Image.asset(
                        leadingImage ?? '',
                        height: SizeConfig.kHeight24,
                        width: SizeConfig.kHeight24,
                        color: color,
                      )),
          Text(title ?? "",
              style: TextStyle(
                fontFamily: FontFamilyConfig.urbanistSemiBold,
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kBlackColor
                    : ColorConfig.kWhiteColor,
                fontWeight: FontWeight.w600,
                fontSize: FontConfig.kFontSize22,
              )),
          trailingImage == null
              ? const SizedBox(
                  width: SizeConfig.kHeight22,
                )
              : GestureDetector(
                  onTap: trailingOnTap,
                  child: Image.asset(
                    trailingImage ?? '',
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                    height: SizeConfig.kHeight20,
                    width: SizeConfig.kHeight20,
                  )),
          if (actions != null) ...actions!,
        ]),
      ),
    );
  }
}
