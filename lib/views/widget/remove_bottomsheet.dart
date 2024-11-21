import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../controller/home_controller.dart';
import '../../utils/common_short_button.dart';

removeBottomSheet(BuildContext context) {
  HomeController homeController = Get.put(HomeController());
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
          : ColorConfig.kBlackColor,
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
                        StringConfig.removeFavorite,
                        style: TextStyle(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamilyConfig.urbanistSemiBold,
                            fontSize: SizeConfig.kHeight20),
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: SizeConfig.kHeight20,
                      horizontal: SizeConfig.kHeight20),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius12),
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kBlackColor,
                        boxShadow: [
                          BoxShadow(
                              color: darkModeController.isLightTheme.value
                                  ? Colors.grey.withOpacity(SizeConfig.kOpp02)
                                  : Colors.grey.withOpacity(SizeConfig.kOpp1),
                              blurRadius: SizeConfig.borderRadius6,
                              offset: const Offset(
                                  SizeConfig.kHeight0, SizeConfig.kHeight0)),
                        ],
                      ),
                      height: SizeConfig.kHeight130,
                      width: double.infinity,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: SizeConfig.kHeight12,
                                        right: SizeConfig.kHeight12,
                                        top: SizeConfig.kHeight15),
                                    child: Image.asset(
                                      homeController.restaurantList[0].image ??
                                          "",
                                      fit: BoxFit.fill,
                                      height: SizeConfig.kHeight100,
                                      width: SizeConfig.kHeight105,
                                    ),
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: SizeConfig.kHeight25),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                homeController.restaurantList[0]
                                                        .veg ??
                                                    "",
                                                height: SizeConfig.kHeight10,
                                                width: SizeConfig.kHeight10,
                                              ),
                                              const SizedBox(
                                                width: SizeConfig.kHeight10,
                                              ),
                                              SizedBox(
                                                width: 120,
                                                child: Text(
                                                    homeController
                                                            .restaurantList[0]
                                                            .name ??
                                                        "",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontFamily:
                                                          FontFamilyConfig
                                                              .urbanistSemiBold,
                                                      color: darkModeController
                                                              .isLightTheme
                                                              .value
                                                          ? ColorConfig
                                                              .kBlackColor
                                                          : ColorConfig
                                                              .kWhiteColor,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: FontConfig
                                                          .kFontSize16,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                top: SizeConfig.kHeight12),
                                            child: Row(children: [
                                              Text(
                                                  homeController
                                                          .restaurantList[0]
                                                          .name1 ??
                                                      "",
                                                  style: TextStyle(
                                                    fontFamily: FontFamilyConfig
                                                        .urbanistRegular,
                                                    color: darkModeController
                                                            .isLightTheme.value
                                                        ? ColorConfig
                                                            .kBlackColor
                                                        : ColorConfig
                                                            .kWhiteColor,
                                                    fontSize:
                                                        FontConfig.kFontSize12,
                                                  )),
                                              const SizedBox(
                                                  width: SizeConfig.kHeight5),
                                              Container(
                                                  height: SizeConfig.kHeight5,
                                                  width: SizeConfig.kHeight5,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: ColorConfig
                                                          .kPrimaryColor)),
                                              const SizedBox(
                                                width: SizeConfig.kHeight5,
                                              ),
                                              Text(
                                                  homeController
                                                          .restaurantList[0]
                                                          .name2 ??
                                                      "",
                                                  style: TextStyle(
                                                    fontFamily: FontFamilyConfig
                                                        .urbanistRegular,
                                                    color: darkModeController
                                                            .isLightTheme.value
                                                        ? ColorConfig
                                                            .kBlackColor
                                                        : ColorConfig
                                                            .kWhiteColor,
                                                    fontSize:
                                                        FontConfig.kFontSize12,
                                                  )),
                                              const SizedBox(
                                                width: SizeConfig.kHeight5,
                                              ),
                                              Container(
                                                  height: SizeConfig.kHeight5,
                                                  width: SizeConfig.kHeight5,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: ColorConfig
                                                          .kPrimaryColor)),
                                              const SizedBox(
                                                  width: SizeConfig.kHeight5),
                                              Text(
                                                  homeController
                                                          .restaurantList[0]
                                                          .name3 ??
                                                      "",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontFamily: FontFamilyConfig
                                                        .urbanistRegular,
                                                    color: darkModeController
                                                            .isLightTheme.value
                                                        ? ColorConfig
                                                            .kBlackColor
                                                        : ColorConfig
                                                            .kWhiteColor,
                                                    fontSize:
                                                        FontConfig.kFontSize12,
                                                  ))
                                            ])),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                top: SizeConfig.kHeight15),
                                            child: IntrinsicHeight(
                                                child: Row(
                                              children: [
                                                Text(StringConfig.km,
                                                    style: TextStyle(
                                                      fontFamily:
                                                          FontFamilyConfig
                                                              .urbanistRegular,
                                                      color: darkModeController
                                                              .isLightTheme
                                                              .value
                                                          ? ColorConfig
                                                              .kBlackColor
                                                          : ColorConfig
                                                              .kWhiteColor,
                                                      fontSize: FontConfig
                                                          .kFontSize12,
                                                    )),
                                                const SizedBox(
                                                    width: SizeConfig.kHeight5),
                                                VerticalDivider(
                                                  thickness:
                                                      SizeConfig.kHeight1,
                                                  color:
                                                      ColorConfig.kDividerColor,
                                                ),
                                                const SizedBox(
                                                    width: SizeConfig.kHeight5),
                                                Image.asset(
                                                  ImagePath.star,
                                                  height: SizeConfig.kHeight15,
                                                  width: SizeConfig.kHeight15,
                                                ),
                                                const SizedBox(
                                                    width: SizeConfig.kHeight5),
                                                Text(StringConfig.reviews,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontFamily:
                                                          FontFamilyConfig
                                                              .urbanistRegular,
                                                      color: darkModeController
                                                              .isLightTheme
                                                              .value
                                                          ? ColorConfig
                                                              .kBlackColor
                                                          : ColorConfig
                                                              .kWhiteColor,
                                                      fontSize: FontConfig
                                                          .kFontSize12,
                                                    )),
                                                const SizedBox(
                                                    width: SizeConfig.kHeight5),
                                              ],
                                            )))
                                      ])
                                ]),
                          ])),
                ),
                Text(StringConfig.areYorSureYou,
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
                        buttonColor: ColorConfig.kButtonLightColor,
                        txtColor: ColorConfig.kPrimaryColor,
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
