// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_family.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/utils/appbar_common.dart';
import 'package:get/get.dart';

import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import 'custom_container.dart';

class OfferScreen extends StatelessWidget {
  OfferScreen({Key? key}) : super(key: key);

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
                leadingOnTap: () {
                  Get.back();
                },
                leadingImage: ImagePath.arrow,
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kBlackColor
                    : ColorConfig.kWhiteColor,
                title: StringConfig.offers,
              )),
          body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: SizeConfig.kHeight20),
            child: Column(
              children: [
                const SizedBox(
                  height: SizeConfig.kHeight24,
                ),
                CustomContainer(
                  image: ImagePath.freeDelivery,
                  name: StringConfig.freeDelivery,
                  subTitle: StringConfig.freeDeliveryMax,
                ),
                const SizedBox(
                  height: SizeConfig.kHeight24,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(SizeConfig.borderRadius12),
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    boxShadow: [
                      BoxShadow(
                          color: ColorConfig.kBlackColor
                              .withOpacity(SizeConfig.kH02),
                          blurRadius: SizeConfig.borderRadius6,
                          offset: const Offset(
                              SizeConfig.kHeight0, SizeConfig.kHeight0)),
                    ],
                  ),
                  height: SizeConfig.kHeight70,
                  width: double.infinity,
                  child: ListTile(
                    leading: Image.asset(
                      ImagePath.userDelivery,
                      height: SizeConfig.kHeight40,
                      width: SizeConfig.kHeight40,
                    ),
                    title: Text(StringConfig.promoNewUser,
                        style: TextStyle(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontFamily: FontFamilyConfig.urbanistSemiBold,
                            fontWeight: FontWeight.w500,
                            fontSize: FontConfig.kFontSize14)),
                    subtitle: Text(StringConfig.validForNewUser,
                        style: TextStyle(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w500,
                            fontSize: FontConfig.kFontSize12)),
                    trailing: Container(
                      height: SizeConfig.kHeight30,
                      width: SizeConfig.kHeight70,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorConfig.kPrimaryColor,
                              width: SizeConfig.kHeight1),
                          // color: ColorConfig.kPrimaryColor,
                          borderRadius:
                              BorderRadius.circular(SizeConfig.borderRadius22)),
                      child: Center(
                        child: Text(
                          StringConfig.claimed,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: ColorConfig.kPrimaryColor,
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              fontWeight: FontWeight.w500,
                              fontSize: FontConfig.kFontSize14),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight24,
                ),
                CustomContainer(
                  image: ImagePath.offerDelivery,
                  name: StringConfig.specialFriday,
                  subTitle: StringConfig.onlyForFriday,
                ),
                const SizedBox(
                  height: SizeConfig.kHeight24,
                ),
                CustomContainer(
                  image: ImagePath.offerDelivery,
                  name: StringConfig.extraOff,
                  subTitle: StringConfig.discountOff,
                ),
              ],
            ),
          ),
        ));
  }
}
