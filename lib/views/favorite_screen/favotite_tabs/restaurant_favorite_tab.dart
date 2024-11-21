// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/setting_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/widget/remove_bottomsheet.dart';
import 'package:get/get.dart';
import '../../../config/color.dart';
import '../../../config/font_config.dart';
import '../../../config/font_family.dart';
import '../../../config/image_path.dart';
import '../../../config/size_config.dart';
import '../../../config/string_config.dart';
import '../../../controller/home_controller.dart';

class RestaurantTabView extends StatelessWidget {
  RestaurantTabView({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  DarkModeController darkModeController = Get.put(DarkModeController());
  final SettingController settingController = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    settingController.loadSelectedLanguage();
    return ListView.builder(
        itemCount: homeController.restaurantList.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: SizeConfig.kHeight10,
                  horizontal: SizeConfig.kHeight20),
              child: Container(
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
                  height: SizeConfig.kHeight104,
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
                                    right: SizeConfig.kHeight10,
                                    top: SizeConfig.kHeight12),
                                child: Image.asset(
                                  homeController.restaurantList[index].image ??
                                      "",
                                  fit: BoxFit.fill,
                                  height: SizeConfig.kHeight80,
                                ),
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: SizeConfig.kHeight12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                homeController
                                                        .restaurantList[index]
                                                        .veg ??
                                                    "",
                                                height: SizeConfig.kHeight12,
                                                width: SizeConfig.kHeight12,
                                              ),
                                              const SizedBox(
                                                width: SizeConfig.kHeight10,
                                              ),
                                              SizedBox(
                                                width: 120,
                                                child: Text(
                                                    homeController
                                                            .restaurantList[
                                                                index]
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
                                          Obx(() => Padding(
                                                padding: EdgeInsets.only(
                                                    left: settingController
                                                            .arb.value
                                                        ? 0
                                                        : SizeConfig.kHeight38,
                                                    right: settingController
                                                            .arb.value
                                                        ? SizeConfig.kHeight38
                                                        : 0),
                                                child: GestureDetector(
                                                    onTap: () {
                                                      removeBottomSheet(
                                                          context);
                                                    },
                                                    child: Image.asset(
                                                      ImagePath.fillHeart,
                                                      height:
                                                          SizeConfig.kHeight16,
                                                      width:
                                                          SizeConfig.kHeight16,
                                                      color: ColorConfig
                                                          .kPrimaryColor,
                                                    )),
                                              ))
                                        ],
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            top: SizeConfig.kHeight13),
                                        child: Row(children: [
                                          Text(
                                              homeController
                                                      .restaurantList[index]
                                                      .name1 ??
                                                  "",
                                              style: TextStyle(
                                                fontFamily: FontFamilyConfig
                                                    .urbanistRegular,
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kBlackColor
                                                    : ColorConfig.kWhiteColor,
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
                                                      .restaurantList[index]
                                                      .name2 ??
                                                  "",
                                              style: TextStyle(
                                                fontFamily: FontFamilyConfig
                                                    .urbanistRegular,
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kBlackColor
                                                    : ColorConfig.kWhiteColor,
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
                                          SizedBox(
                                            // width: 55,
                                            child: Text(
                                                homeController
                                                        .restaurantList[index]
                                                        .name3 ??
                                                    "",
                                                // overflow:
                                                //     TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontFamily: FontFamilyConfig
                                                      .urbanistRegular,
                                                  color: darkModeController
                                                          .isLightTheme.value
                                                      ? ColorConfig.kBlackColor
                                                      : ColorConfig.kWhiteColor,
                                                  fontSize:
                                                      FontConfig.kFontSize12,
                                                )),
                                          )
                                        ])),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            top: SizeConfig.kHeight15),
                                        child: IntrinsicHeight(
                                            child: Row(
                                          children: [
                                            Text(StringConfig.km,
                                                style: TextStyle(
                                                  fontFamily: FontFamilyConfig
                                                      .urbanistRegular,
                                                  color: darkModeController
                                                          .isLightTheme.value
                                                      ? ColorConfig.kBlackColor
                                                      : ColorConfig.kWhiteColor,
                                                  fontSize:
                                                      FontConfig.kFontSize13,
                                                )),
                                            const SizedBox(
                                                width: SizeConfig.kHeight2),
                                            VerticalDivider(
                                              thickness: SizeConfig.kHeight1,
                                              color: ColorConfig.kDividerColor,
                                              width: SizeConfig.kHeight10,
                                              indent: 1,
                                              endIndent: 1,
                                            ),
                                            const SizedBox(
                                                width: SizeConfig.kHeight2),
                                            Image.asset(
                                              ImagePath.star,
                                              height: SizeConfig.kHeight15,
                                              width: SizeConfig.kHeight15,
                                            ),
                                            const SizedBox(
                                                width: SizeConfig.kHeight5),
                                            Text(
                                              StringConfig.reviews,
                                              style: TextStyle(
                                                fontFamily: FontFamilyConfig
                                                    .urbanistRegular,
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kBlackColor
                                                    : ColorConfig.kWhiteColor,
                                                fontSize:
                                                    FontConfig.kFontSize13,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            const SizedBox(
                                                width: SizeConfig.kHeight5),
                                          ],
                                        )))
                                  ])
                            ]),
                      ])));
        });
  }
}
