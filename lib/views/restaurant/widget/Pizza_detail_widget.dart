// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/cupertino.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';

import '../../../app_routes/app_routes.dart';
import '../../../config/color.dart';
import '../../../config/font_config.dart';
import '../../../config/font_family.dart';
import '../../../config/image_path.dart';
import '../../../config/size_config.dart';
import '../../../config/string_config.dart';
import '../../../controller/home_controller.dart';

class PizzaDetailWidget extends StatelessWidget {
  PizzaDetailWidget({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
          padding: const EdgeInsets.symmetric(horizontal: SizeConfig.kHeight20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.farmVillaPizza);
                },
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
                          spreadRadius: SizeConfig.kHeight2,
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
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.farmVillaPizza);
                              },
                              child: Image.asset(
                                homeController.pizzaList[0].image ?? "",
                                fit: BoxFit.fill,
                                height: SizeConfig.kHeight100,
                              ),
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
                      Padding(
                        padding: const EdgeInsets.only(
                            top: SizeConfig.kHeight25,
                            right: SizeConfig.kHeight12,
                            left: SizeConfig.kHeight12),
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
                    ],
                  ),
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
                                    color: darkModeController.isLightTheme.value
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
                    Padding(
                      padding: const EdgeInsets.only(
                          top: SizeConfig.kHeight25,
                          right: SizeConfig.kHeight12,
                          left: SizeConfig.kHeight12),
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
                  ],
                ),
              ),
              const SizedBox(
                height: SizeConfig.kHeight30,
              ),
              Text('Menu',
                  style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistSemiBold,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: FontConfig.kFontSize18,
                  )),
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
                                    color: darkModeController.isLightTheme.value
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
                    Padding(
                      padding: const EdgeInsets.only(
                          top: SizeConfig.kHeight25,
                          right: SizeConfig.kHeight12,
                          left: SizeConfig.kHeight12),
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
                                    color: darkModeController.isLightTheme.value
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
                    Padding(
                      padding: const EdgeInsets.only(
                          top: SizeConfig.kHeight25,
                          right: SizeConfig.kHeight12,
                          left: SizeConfig.kHeight12),
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
                  ],
                ),
              ),
              const SizedBox(
                height: SizeConfig.kHeight20,
              ),
              Text('Drink',
                  style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistSemiBold,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: FontConfig.kFontSize18,
                  )),
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
                        spreadRadius: SizeConfig.kHeight2,
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
                            ImagePath.avocadoJuice,
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
                                  SizedBox(
                                    width: 100,
                                    child: Text(StringConfig.freshAvocadoJuice,
                                        style: TextStyle(
                                            fontFamily: FontFamilyConfig
                                                .urbanistSemiBold,
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig.kBlackColor
                                                : ColorConfig.kWhiteColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: FontConfig.kFontSize16,
                                            overflow: TextOverflow.ellipsis)),
                                  ),
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
                                    color: darkModeController.isLightTheme.value
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
                              '\$20',
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
                    Padding(
                      padding: const EdgeInsets.only(
                          top: SizeConfig.kHeight25,
                          right: SizeConfig.kHeight12,
                          left: SizeConfig.kHeight12),
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
                            ImagePath.cocaCola,
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
                                  Text('Coca Cola',
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
                                    color: darkModeController.isLightTheme.value
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
                              '\$34',
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
                    Padding(
                      padding: const EdgeInsets.only(
                          top: SizeConfig.kHeight25,
                          right: SizeConfig.kHeight12,
                          left: SizeConfig.kHeight12),
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
                  ],
                ),
              ),
              const SizedBox(
                height: SizeConfig.kHeight20,
              ),
            ],
          ),
        ));
  }
}
