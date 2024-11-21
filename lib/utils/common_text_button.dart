// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_family.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';

import '../config/font_config.dart';
import '../config/size_config.dart';

class CommonTextButton extends StatelessWidget {
  final String? buttonText;
  final Function onButtonClick;
  final bool isButtonText;
  final String? image;
  final double? textSize;
  final ButtonStyle? style;
  final Color? color;
  final Widget? widget;
  final IconData? icon;

  CommonTextButton(
      {Key? key,
      required this.buttonText,
      required this.onButtonClick,
      this.isButtonText = false,
      this.style,
      this.textSize,
      this.color,
      this.widget,
      this.icon,
      this.image})
      : super(key: key);

  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: SizeConfig.kHeight54,
      minWidth: SizeConfig.kHeight42,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConfig.borderRadius10),
          side: BorderSide(
            color: darkModeController.isLightTheme.value
                ? ColorConfig.kBlackColor.withOpacity(0.16)
                : ColorConfig.kDarkModeDividerColor,
            width: SizeConfig.kH13,
          )),
      onPressed: () {
        onButtonClick();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: SizeConfig.kHeight10, vertical: SizeConfig.kHeight10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image!,
                  height: SizeConfig.kHeight20,
                  width: SizeConfig.kHeight20,
                ),
                const SizedBox(
                  width: SizeConfig.kHeight16,
                ),
                Text(
                  buttonText ?? '',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: color,
                      fontFamily: FontFamilyConfig.urbanistMedium,
                      fontSize: isButtonText == true
                          ? textSize!
                          : FontConfig.kFontSize16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
