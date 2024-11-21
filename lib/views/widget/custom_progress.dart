// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_family.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/size_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';

class CustomProgressBar extends StatelessWidget {
  final String text;
  final double width;
  final int value;
  final int totalValue;

  CustomProgressBar(
      {super.key,
      required this.text,
      required this.width,
      required this.value,
      required this.totalValue});

  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    double ratio = value / totalValue;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: SizeConfig.kHeight6),
      child: Row(
        children: [
          Text(text,
              style: TextStyle(
                fontFamily: FontFamilyConfig.urbanistMedium,
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kHintColor
                    : ColorConfig.kDividerColor,
                fontWeight: FontWeight.w400,
                fontSize: SizeConfig.kHeight12,
              )),
          const SizedBox(
            width: SizeConfig.kHeight5,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: SizeConfig.kHeight5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(SizeConfig.kHeight5),
                      color: Colors.grey[300]),
                ),
                Material(
                  borderRadius: BorderRadius.circular(SizeConfig.kHeight5),
                  child: AnimatedContainer(
                      height: SizeConfig.kHeight5,
                      width: width * ratio,
                      duration: Duration(milliseconds: totalValue),
                      decoration: BoxDecoration(
                          color: ColorConfig.kPrimaryColor,
                          borderRadius:
                              BorderRadius.circular(SizeConfig.kHeight5))),
                ),
              ],
            )
          ]),
        ],
      ),
    );
  }
}
