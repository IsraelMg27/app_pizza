// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/image_path.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/size_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/utils/appbar_common.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/widget/custom_progress.dart';
import 'package:get/get.dart';
import 'package:map_launcher/map_launcher.dart';

import '../../config/font_config.dart';
import '../../config/font_family.dart';

class OverViewScreen extends StatelessWidget {
  OverViewScreen({Key? key}) : super(key: key);

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
                title: StringConfig.dPizza,
              )),
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: SizeConfig.kHeight20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: SizeConfig.kHeight24,
                  ),
                  IntrinsicHeight(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(StringConfig.rating49,
                                  style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: FontConfig.kFontSize28,
                                  )),
                              const SizedBox(
                                height: SizeConfig.kHeight10,
                              ),
                              RatingBar.builder(
                                itemSize: SizeConfig.kHeight18,
                                initialRating: SizeConfig.kH45,
                                unratedColor: ColorConfig.kButtonLightColor,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding: const EdgeInsets.symmetric(
                                    horizontal: SizeConfig.kHeight4),
                                itemBuilder: (context, _) =>
                                    Image.asset(ImagePath.star),
                                onRatingUpdate: (rating) {},
                              ),
                              const SizedBox(
                                height: SizeConfig.kHeight10,
                              ),
                              Text(StringConfig.reviews4959,
                                  style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kHintColor
                                        : ColorConfig.kDividerColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: FontConfig.kFontSize14,
                                  )),
                            ],
                          ),
                          VerticalDivider(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kDarkModeDividerColor
                                : ColorConfig.kDarkModeDividerColor
                                    .withOpacity(.2),
                            thickness: SizeConfig.kHeight1,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomProgressBar(
                                text: "5",
                                width: SizeConfig.kHeight150,
                                value: 90,
                                totalValue: 100,
                              ),
                              CustomProgressBar(
                                text: "4",
                                width: SizeConfig.kHeight151,
                                value: SizeConfig.kInt80,
                                totalValue: SizeConfig.kInt100,
                              ),
                              CustomProgressBar(
                                text: "3",
                                width: SizeConfig.kHeight152,
                                value: SizeConfig.kInt40,
                                totalValue: SizeConfig.kInt100,
                              ),
                              CustomProgressBar(
                                text: "2",
                                width: SizeConfig.kHeight151,
                                value: SizeConfig.kInt60,
                                totalValue: SizeConfig.kInt100,
                              ),
                              CustomProgressBar(
                                text: "1",
                                width: SizeConfig.kHeight154,
                                value: SizeConfig.kInt10,
                                totalValue: SizeConfig.kInt100,
                              )
                            ],
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight10,
                  ),
                  Divider(
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kDarkModeDividerColor
                        : ColorConfig.kDarkModeDividerColor.withOpacity(.2),
                    thickness: SizeConfig.kHeight1,
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight30,
                  ),
                  Text(StringConfig.overview,
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
                  RichText(
                      text: TextSpan(
                          text: StringConfig.overviewScreenString,
                          style: TextStyle(
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontSize: FontConfig.kFontSize14,
                              fontFamily: FontFamilyConfig.urbanistRegular,
                              fontWeight: FontWeight.w400),
                          children: [
                        TextSpan(
                            text: "View More...",
                            style: TextStyle(
                                color: ColorConfig.kPrimaryColor,
                                fontSize: FontConfig.kFontSize16,
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                fontWeight: FontWeight.w600))
                      ])),
                  const SizedBox(
                    height: SizeConfig.kHeight30,
                  ),
                  Text(StringConfig.openNow,
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
                  RichText(
                      text: TextSpan(
                          text: "Monday - Friday          : ",
                          style: TextStyle(
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontSize: FontConfig.kFontSize16,
                              fontFamily: FontFamilyConfig.urbanistMedium,
                              fontWeight: FontWeight.w600),
                          children: [
                        TextSpan(
                            text: " 10:00 - 22:00",
                            style: TextStyle(
                                color: ColorConfig.kPrimaryColor,
                                fontSize: FontConfig.kFontSize16,
                                fontFamily: FontFamilyConfig.urbanistMedium,
                                fontWeight: FontWeight.w600))
                      ])),
                  const SizedBox(
                    height: SizeConfig.kHeight5,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Saturday - Sunday     : ",
                          style: TextStyle(
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontSize: FontConfig.kFontSize16,
                              fontFamily: FontFamilyConfig.urbanistMedium,
                              fontWeight: FontWeight.w600),
                          children: [
                        TextSpan(
                            text: " 12:00 - 22:00",
                            style: TextStyle(
                                color: ColorConfig.kPrimaryColor,
                                fontSize: FontConfig.kFontSize16,
                                fontFamily: FontFamilyConfig.urbanistMedium,
                                fontWeight: FontWeight.w600))
                      ])),
                  const SizedBox(
                    height: SizeConfig.kHeight10,
                  ),
                  Divider(
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kDarkModeDividerColor
                        : ColorConfig.kDarkModeDividerColor.withOpacity(.2),
                    thickness: SizeConfig.kHeight1,
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight30,
                  ),
                  Text(StringConfig.addressProfile,
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
                  Row(
                    children: [
                      Image.asset(
                        ImagePath.mapPoint,
                        height: SizeConfig.kHeight15,
                        width: SizeConfig.kHeight15,
                        color: ColorConfig.kPrimaryColor,
                      ),
                      const SizedBox(
                        width: SizeConfig.kHeight5,
                      ),
                      Text(StringConfig.dPizzaAddress,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kDividerColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize12,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight10,
                  ),
                  GestureDetector(
                      onTap: () async {
                        final availableMaps = await MapLauncher.installedMaps;
                        availableMaps[0].showMarker(
                          coords: Coords(37.4220041, -122.0862462),
                          title: 'Google',
                          description: 'Googleplex',
                        );
                      },
                      child: Image.asset(ImagePath.map)),
                ],
              ),
            ),
          ),
        ));
  }
}
