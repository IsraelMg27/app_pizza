import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../controller/dark_mode_controller.dart';
import '../../utils/common_short_button.dart';

cancelOrderBottomSheet(BuildContext context) {
  DarkModeController darkModeController = Get.put(DarkModeController());
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        StringConfig.cancelOrder,
                        style: TextStyle(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.kHeight20,
                          fontFamily: FontFamilyConfig.urbanistRegular,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: SizeConfig.kHeight20),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight25,
                ),
                Text(StringConfig.orderCancelAreYou,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: FontFamilyConfig.urbanistMedium,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: FontConfig.kFontSize15,
                    )),
                const SizedBox(height: SizeConfig.kHeight25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CommonShortButton(
                        width: MediaQuery.of(context).size.width / 2.4,
                        height: SizeConfig.kHeight48,
                        buttonText: StringConfig.cancel,
                        buttonColor: darkModeController.isLightTheme.value
                            ? ColorConfig.kContainerLightColor
                            : ColorConfig.kDarkDialougeColor,
                        txtColor: darkModeController.isLightTheme.value
                            ? ColorConfig.kPrimaryColor
                            : ColorConfig.kWhiteColor,
                        onButtonClick: () {
                          Get.back();
                        }),
                    CommonShortButton(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: SizeConfig.kHeight48,
                        buttonText: StringConfig.remove,
                        buttonColor: ColorConfig.kPrimaryColor,
                        txtColor: ColorConfig.kWhiteColor,
                        onButtonClick: () {
                          Get.back();
                        })
                  ],
                )
              ])));
        });
      });
}
