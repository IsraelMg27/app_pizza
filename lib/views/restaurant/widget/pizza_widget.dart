import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/setting_controller.dart';
import 'package:get/get.dart';

import '../../../config/color.dart';
import '../../../config/font_config.dart';
import '../../../config/font_family.dart';
import '../../../config/image_path.dart';
import '../../../config/size_config.dart';
import '../../../config/string_config.dart';
import '../../../controller/dark_mode_controller.dart';
import '../../../controller/home_controller.dart';

// ignore: must_be_immutable
class PizzaWidget extends StatelessWidget {
  PizzaWidget({
    super.key,
  });

  HomeController homeController = Get.put(HomeController());
  DarkModeController darkModeController = Get.put(DarkModeController());
  final SettingController settingController = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    settingController.loadSelectedLanguage();
    return Obx(() => SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: SizeConfig.kHeight20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(StringConfig.theDPizza,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: FontConfig.kFontSize16,
                        )),
                    Text(StringConfig.off50,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          color: ColorConfig.kPrimaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: FontConfig.kFontSize12,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: SizeConfig.kHeight10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(StringConfig.pizza,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontSize: FontConfig.kFontSize12,
                          )),
                      const SizedBox(
                        width: SizeConfig.kHeight5,
                      ),
                      Container(
                        height: SizeConfig.kHeight5,
                        width: SizeConfig.kHeight5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorConfig.kPrimaryColor),
                      ),
                      const SizedBox(
                        width: SizeConfig.kHeight5,
                      ),
                      Text(StringConfig.fastFood,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontSize: FontConfig.kFontSize12,
                          )),
                      const SizedBox(
                        width: SizeConfig.kHeight5,
                      ),
                      Container(
                        height: SizeConfig.kHeight5,
                        width: SizeConfig.kHeight5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorConfig.kPrimaryColor),
                      ),
                      const SizedBox(
                        width: SizeConfig.kHeight5,
                      ),
                      Text(StringConfig.cocoCola,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontSize: FontConfig.kFontSize12,
                          )),
                      const SizedBox(
                        width: SizeConfig.kHeight5,
                      ),
                      Container(
                        height: SizeConfig.kHeight5,
                        width: SizeConfig.kHeight5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorConfig.kPrimaryColor),
                      ),
                      const SizedBox(
                        width: SizeConfig.kHeight5,
                      ),
                      Text(StringConfig.shorts,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontSize: FontConfig.kFontSize12,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: SizeConfig.kHeight10),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(StringConfig.km,
                            style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistRegular,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontSize: FontConfig.kFontSize12,
                            )),
                        const SizedBox(
                          width: SizeConfig.kHeight5,
                        ),
                        VerticalDivider(
                          thickness: SizeConfig.kHeight1,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kDarkModeDividerColor
                              : ColorConfig.kDarkModeDividerColor
                                  .withOpacity(.3),
                        ),
                        const SizedBox(
                          width: SizeConfig.kHeight5,
                        ),
                        Image.asset(
                          ImagePath.star,
                          height: SizeConfig.kHeight15,
                          width: SizeConfig.kHeight15,
                        ),
                        const SizedBox(
                          width: SizeConfig.kHeight5,
                        ),
                        Text(
                          StringConfig.reviews,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontSize: FontConfig.kFontSize12,
                          ),
                        ),
                        const SizedBox(
                          width: SizeConfig.kHeight5,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Divider(
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kDarkModeDividerColor
                        : ColorConfig.kDarkModeDividerColor.withOpacity(.3),
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight10,
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
                          blurRadius: 6,
                          spreadRadius: 2.0,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: SizeConfig.kHeight12,
                                right: SizeConfig.kHeight12,
                                top: SizeConfig.kHeight15),
                            child: Image.asset(
                              homeController.pizzaList[0].image ?? "",
                              fit: BoxFit.fill,
                              height: SizeConfig.kHeight100,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: SizeConfig.kHeight25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      homeController.pizzaList[0].veg ?? "",
                                      height: SizeConfig.kHeight10,
                                      width: SizeConfig.kHeight10,
                                    ),
                                    const SizedBox(
                                      width: SizeConfig.kHeight10,
                                    ),
                                    Text(homeController.pizzaList[0].name ?? "",
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize16,
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: SizeConfig.kHeight10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    ImagePath.star,
                                    height: SizeConfig.kHeight15,
                                    width: SizeConfig.kHeight15,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight5,
                                  ),
                                  Text(
                                    StringConfig.reviews,
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontSize: FontConfig.kFontSize12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: SizeConfig.kHeight10,
                              ),
                              Text(
                                homeController.pizzaList[0].price!,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistBold,
                                  color: ColorConfig.kPrimaryColor,
                                  fontSize: FontConfig.kFontSize14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Obx(
                        () => Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.kHeight25,
                              left: settingController.arb.value
                                  ? SizeConfig.kHeight12
                                  : 0,
                              right: settingController.arb.value
                                  ? 0
                                  : SizeConfig.kHeight12),
                          child: GestureDetector(
                            onTap: () {
                              homeController.internationalTripIndex[0] =
                                  !homeController.internationalTripIndex[0];
                            },
                            child: Obx(
                              () => Image.asset(
                                homeController.internationalTripIndex[0]
                                    ? ImagePath.heart
                                    : ImagePath.fillHeart,
                                height: SizeConfig.kHeight16,
                                width: SizeConfig.kHeight16,
                                color: ColorConfig.kPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight20,
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
                  height: SizeConfig.kHeight130,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: SizeConfig.kHeight12,
                                right: SizeConfig.kHeight12,
                                top: SizeConfig.kHeight15),
                            child: Image.asset(
                              homeController.pizzaList[1].image ?? "",
                              fit: BoxFit.fill,
                              height: SizeConfig.kHeight100,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: SizeConfig.kHeight25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      homeController.pizzaList[1].veg ?? "",
                                      height: SizeConfig.kHeight10,
                                      width: SizeConfig.kHeight10,
                                    ),
                                    const SizedBox(
                                      width: SizeConfig.kHeight10,
                                    ),
                                    Text(homeController.pizzaList[1].name ?? "",
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize16,
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: SizeConfig.kHeight10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    ImagePath.star,
                                    height: SizeConfig.kHeight15,
                                    width: SizeConfig.kHeight15,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight5,
                                  ),
                                  Text(
                                    StringConfig.reviews,
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontSize: FontConfig.kFontSize12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: SizeConfig.kHeight10,
                              ),
                              Text(
                                homeController.pizzaList[1].price!,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistBold,
                                  color: ColorConfig.kPrimaryColor,
                                  fontSize: FontConfig.kFontSize14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Obx(
                        () => Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.kHeight25,
                              left: settingController.arb.value
                                  ? SizeConfig.kHeight12
                                  : 0,
                              right: settingController.arb.value
                                  ? 0
                                  : SizeConfig.kHeight12),
                          child: GestureDetector(
                            onTap: () {
                              homeController.internationalTripIndex[1] =
                                  !homeController.internationalTripIndex[1];
                            },
                            child: Obx(
                              () => Image.asset(
                                homeController.internationalTripIndex[1]
                                    ? ImagePath.heart
                                    : ImagePath.fillHeart,
                                height: SizeConfig.kHeight16,
                                width: SizeConfig.kHeight16,
                                color: ColorConfig.kPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight20,
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
                  height: SizeConfig.kHeight130,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: SizeConfig.kHeight12,
                                right: SizeConfig.kHeight12,
                                top: SizeConfig.kHeight15),
                            child: Image.asset(
                              homeController.pizzaList[2].image ?? "",
                              fit: BoxFit.fill,
                              height: SizeConfig.kHeight100,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: SizeConfig.kHeight25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      homeController.pizzaList[2].veg ?? "",
                                      height: SizeConfig.kHeight10,
                                      width: SizeConfig.kHeight10,
                                    ),
                                    const SizedBox(
                                      width: SizeConfig.kHeight10,
                                    ),
                                    Text(homeController.pizzaList[2].name ?? "",
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize16,
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: SizeConfig.kHeight10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    ImagePath.star,
                                    height: SizeConfig.kHeight15,
                                    width: SizeConfig.kHeight15,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight5,
                                  ),
                                  Text(
                                    StringConfig.reviews,
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontSize: FontConfig.kFontSize12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: SizeConfig.kHeight10,
                              ),
                              Text(
                                homeController.pizzaList[2].price!,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistBold,
                                  color: ColorConfig.kPrimaryColor,
                                  fontSize: FontConfig.kFontSize14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Obx(
                        () => Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.kHeight25,
                              left: settingController.arb.value
                                  ? SizeConfig.kHeight12
                                  : 0,
                              right: settingController.arb.value
                                  ? 0
                                  : SizeConfig.kHeight12),
                          child: GestureDetector(
                            onTap: () {
                              homeController.internationalTripIndex[2] =
                                  !homeController.internationalTripIndex[2];
                            },
                            child: Obx(
                              () => Image.asset(
                                homeController.internationalTripIndex[2]
                                    ? ImagePath.heart
                                    : ImagePath.fillHeart,
                                height: SizeConfig.kHeight16,
                                width: SizeConfig.kHeight16,
                                color: ColorConfig.kPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(StringConfig.martinozPizza,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: FontConfig.kFontSize16,
                            )),
                        Text(StringConfig.off50,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              color: ColorConfig.kPrimaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: FontConfig.kFontSize12,
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: SizeConfig.kHeight10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(StringConfig.pizza,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                                fontSize: FontConfig.kFontSize12,
                              )),
                          const SizedBox(
                            width: SizeConfig.kHeight5,
                          ),
                          Container(
                            height: SizeConfig.kHeight5,
                            width: SizeConfig.kHeight5,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConfig.kPrimaryColor),
                          ),
                          const SizedBox(
                            width: SizeConfig.kHeight5,
                          ),
                          Text(StringConfig.fastFood,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                                fontSize: FontConfig.kFontSize12,
                              )),
                          const SizedBox(
                            width: SizeConfig.kHeight5,
                          ),
                          Container(
                            height: SizeConfig.kHeight5,
                            width: SizeConfig.kHeight5,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConfig.kPrimaryColor),
                          ),
                          const SizedBox(
                            width: SizeConfig.kHeight5,
                          ),
                          Text(StringConfig.cocoCola,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                                fontSize: FontConfig.kFontSize12,
                              )),
                          const SizedBox(
                            width: SizeConfig.kHeight5,
                          ),
                          Container(
                            height: SizeConfig.kHeight5,
                            width: SizeConfig.kHeight5,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConfig.kPrimaryColor),
                          ),
                          const SizedBox(
                            width: SizeConfig.kHeight5,
                          ),
                          Text(StringConfig.shorts,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                                fontSize: FontConfig.kFontSize12,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: SizeConfig.kHeight10),
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(StringConfig.km,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistRegular,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontSize: FontConfig.kFontSize12,
                                )),
                            const SizedBox(
                              width: SizeConfig.kHeight5,
                            ),
                            VerticalDivider(
                              thickness: SizeConfig.kHeight1,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kDarkModeDividerColor
                                  : ColorConfig.kDarkModeDividerColor
                                      .withOpacity(.3),
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight5,
                            ),
                            Image.asset(
                              ImagePath.star,
                              height: SizeConfig.kHeight15,
                              width: SizeConfig.kHeight15,
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight5,
                            ),
                            Text(
                              StringConfig.reviews,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                                fontSize: FontConfig.kFontSize12,
                              ),
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Divider(
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kDarkModeDividerColor
                            : ColorConfig.kDarkModeDividerColor.withOpacity(.3),
                        thickness: 1,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: SizeConfig.kHeight10,
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
                  height: SizeConfig.kHeight130,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: SizeConfig.kHeight12,
                                right: SizeConfig.kHeight12,
                                top: SizeConfig.kHeight15),
                            child: Image.asset(
                              homeController.pizzaList[3].image ?? "",
                              fit: BoxFit.fill,
                              height: SizeConfig.kHeight100,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: SizeConfig.kHeight25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      homeController.pizzaList[3].veg ?? "",
                                      height: SizeConfig.kHeight10,
                                      width: SizeConfig.kHeight10,
                                    ),
                                    const SizedBox(
                                      width: SizeConfig.kHeight10,
                                    ),
                                    Text(homeController.pizzaList[3].name ?? "",
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize16,
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: SizeConfig.kHeight10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    ImagePath.star,
                                    height: SizeConfig.kHeight15,
                                    width: SizeConfig.kHeight15,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight5,
                                  ),
                                  Text(
                                    StringConfig.reviews,
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontSize: FontConfig.kFontSize12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: SizeConfig.kHeight10,
                              ),
                              Text(
                                homeController.pizzaList[3].price!,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistBold,
                                  color: ColorConfig.kPrimaryColor,
                                  fontSize: FontConfig.kFontSize14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Obx(
                        () => Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.kHeight25,
                              left: settingController.arb.value
                                  ? SizeConfig.kHeight12
                                  : 0,
                              right: settingController.arb.value
                                  ? 0
                                  : SizeConfig.kHeight12),
                          child: GestureDetector(
                            onTap: () {
                              homeController.internationalTripIndex[3] =
                                  !homeController.internationalTripIndex[3];
                            },
                            child: Obx(
                              () => Image.asset(
                                homeController.internationalTripIndex[3]
                                    ? ImagePath.heart
                                    : ImagePath.fillHeart,
                                height: SizeConfig.kHeight16,
                                width: SizeConfig.kHeight16,
                                color: ColorConfig.kPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight20,
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
                  height: SizeConfig.kHeight130,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: SizeConfig.kHeight12,
                                right: SizeConfig.kHeight12,
                                top: SizeConfig.kHeight15),
                            child: Image.asset(
                              homeController.pizzaList[4].image ?? "",
                              fit: BoxFit.fill,
                              height: SizeConfig.kHeight100,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: SizeConfig.kHeight25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      homeController.pizzaList[4].veg ?? "",
                                      height: SizeConfig.kHeight10,
                                      width: SizeConfig.kHeight10,
                                    ),
                                    const SizedBox(
                                      width: SizeConfig.kHeight10,
                                    ),
                                    Text(homeController.pizzaList[4].name ?? "",
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize16,
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: SizeConfig.kHeight10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    ImagePath.star,
                                    height: SizeConfig.kHeight15,
                                    width: SizeConfig.kHeight15,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight5,
                                  ),
                                  Text(
                                    StringConfig.reviews,
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontSize: FontConfig.kFontSize12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: SizeConfig.kHeight10,
                              ),
                              Text(
                                homeController.pizzaList[4].price!,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistBold,
                                  color: ColorConfig.kPrimaryColor,
                                  fontSize: FontConfig.kFontSize14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Obx(
                        () => Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.kHeight25,
                              left: settingController.arb.value
                                  ? SizeConfig.kHeight12
                                  : 0,
                              right: settingController.arb.value
                                  ? 0
                                  : SizeConfig.kHeight12),
                          child: GestureDetector(
                            onTap: () {
                              homeController.internationalTripIndex[4] =
                                  !homeController.internationalTripIndex[4];
                            },
                            child: Obx(
                              () => Image.asset(
                                homeController.internationalTripIndex[4]
                                    ? ImagePath.heart
                                    : ImagePath.fillHeart,
                                height: SizeConfig.kHeight16,
                                width: SizeConfig.kHeight16,
                                color: ColorConfig.kPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight20,
                ),
              ],
            ),
          ),
        ));
  }
}
