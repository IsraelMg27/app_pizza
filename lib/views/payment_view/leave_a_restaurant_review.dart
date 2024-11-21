// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/size_config.dart';
import 'package:get/get.dart';

import '../../app_routes/app_routes.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/string_config.dart';
import '../../controller/dark_mode_controller.dart';
import '../../utils/appbar_common.dart';
import '../../utils/common_material_button.dart';

class LeaveARestaurantReview extends StatelessWidget {
  LeaveARestaurantReview({Key? key}) : super(key: key);

  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: darkModeController.isLightTheme.value
              ? ColorConfig.kWhiteColor
              : ColorConfig.kBlackColor,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(SizeConfig.kHeight20),
              child: CommonAppBar()),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: SizeConfig.kHeight20, right: SizeConfig.kHeight20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.kHeight20,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Text(
                              StringConfig.skipButton,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistSemiBold,
                                color: ColorConfig.kPrimaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: FontConfig.kFontSize14,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight50,
                      ),
                      Image.asset(
                        ImagePath.dPizza,
                        width: SizeConfig.kHeight105,
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight12,
                      ),
                      Text(
                        StringConfig.dPizza,
                        style: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: FontConfig.kFontSize22,
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight12,
                      ),
                      Text(
                        StringConfig.dPizzaAddress,
                        style: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistRegular,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kTextLightTextColor
                              : ColorConfig.kWhiteColor.withOpacity(.6),
                          fontWeight: FontWeight.w400,
                          fontSize: FontConfig.kFontSize12,
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight24,
                      ),
                      Text(
                        StringConfig.dPizzaReview,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistRegular,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kTextLightTextColor
                              : ColorConfig.kWhiteColor,
                          fontWeight: FontWeight.w400,
                          fontSize: FontConfig.kFontSize14,
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight25,
                      ),
                      RatingBar(
                        itemSize: SizeConfig.kHeight33,
                        initialRating: SizeConfig.kH45,
                        unratedColor: darkModeController.isLightTheme.value
                            ? ColorConfig.kButtonLightColor
                            : ColorConfig.kDarkModeColor,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(
                            horizontal: SizeConfig.kHeight4),
                        ratingWidget: RatingWidget(
                          full: Image.asset(ImagePath.star),
                          empty: Image.asset(ImagePath.starUnfill),
                          half: Image.asset(ImagePath.starUnfill),
                        ),
                        // itemBuilder: (context, _) =>
                        //     Image.asset(ImagePath.star),
                        onRatingUpdate: (rating) {},
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StringConfig.writeYourReview,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistRegular,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: FontConfig.kFontSize16,
                            ),
                          ),
                          const SizedBox(
                            height: SizeConfig.kHeight10,
                          ),
                          Container(
                            // height: SizeConfig.kHeight50,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(
                                left: SizeConfig.kHeight12),
                            decoration: BoxDecoration(
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kWhiteColor
                                    : ColorConfig.kDarkModeColor,
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.borderRadius8),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      color: ColorConfig.kShadowColor
                                          .withOpacity(0.1),
                                      blurRadius: 3,
                                      offset: const Offset(0, 0))
                                ]),
                            child: TextFormField(
                              maxLines: 7,
                              cursorColor: ColorConfig.kPrimaryColor,
                              style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistMedium,
                                  fontSize: FontConfig.kFontSize14,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                hintText: StringConfig.dPizzaReviewWrite,
                                hintStyle: TextStyle(
                                    fontFamily: FontFamilyConfig.urbanistMedium,
                                    fontSize: FontConfig.kFontSize14,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight45,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CommonMaterialButton(
                          width: double.infinity,
                          buttonColor: darkModeController.isLightTheme.value
                              ? ColorConfig.kContainerLightColor
                              : ColorConfig.kDarkDialougeColor,
                          height: SizeConfig.kHeight52,
                          txtColor: darkModeController.isLightTheme.value
                              ? ColorConfig.kPrimaryColor
                              : ColorConfig.kWhiteColor,
                          buttonText: StringConfig.cancel,
                          onButtonClick: () {
                            // Get.toNamed(AppRoutes.successfulOrder);
                          }),
                    ),
                    Expanded(
                      child: CommonMaterialButton(
                          width: double.infinity,
                          buttonColor: ColorConfig.kPrimaryColor,
                          height: SizeConfig.kHeight52,
                          txtColor: ColorConfig.kWhiteColor,
                          buttonText: StringConfig.submit,
                          onButtonClick: () {
                            Get.offAllNamed(AppRoutes.leaveADishReviewScreen);
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
