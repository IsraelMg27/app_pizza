// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/home_controller.dart';
import 'package:get/get.dart';

import '../../app_routes/app_routes.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../controller/dark_mode_controller.dart';
import '../../utils/appbar_common.dart';
import '../../utils/common_material_button.dart';

class GetDiscountScreen extends StatefulWidget {
  const GetDiscountScreen({Key? key}) : super(key: key);

  @override
  State<GetDiscountScreen> createState() => _GetDiscountScreenState();
}

class _GetDiscountScreenState extends State<GetDiscountScreen> {
  HomeController homeController = Get.put(HomeController());

  DarkModeController darkModeController = Get.put(DarkModeController());

  void selectContainer(int index) {
    setState(() {
      if (homeController.selectedContainerIndex == index) {
        homeController.selectedContainerIndex = -1;
      } else {
        homeController.selectedContainerIndex = index;
      }
    });
  }

  String getContainerImage(int index) {
    return homeController.selectedContainerIndex == index
        ? ImagePath.radioFillIcon
        : ImagePath.radioIcon;
  }

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
              title: StringConfig.getDiscount,
              trailingImage: ImagePath.search,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: SizeConfig.padding10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: SizeConfig.padding20,
                        right: SizeConfig.padding20),
                    child: Column(
                      children: [
                        Container(
                          width: SizeConfig.kHeight335,
                          height: SizeConfig.kHeight71,
                          padding: const EdgeInsets.only(
                              left: SizeConfig.padding16,
                              right: SizeConfig.padding16),
                          decoration: BoxDecoration(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kWhiteColor
                                : ColorConfig.kDarkModeColor,
                            borderRadius: BorderRadius.circular(
                                SizeConfig.borderRadius12),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                color: ColorConfig.kDarkDialougeColor
                                    .withOpacity(0.1),
                                blurRadius: 5,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Image(
                                    image: AssetImage(ImagePath.discount),
                                    width: SizeConfig.kHeight40,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: SizeConfig.padding3),
                                        child: Row(
                                          children: [
                                            Text(
                                              StringConfig.offUpToDiscount,
                                              style: TextStyle(
                                                fontSize:
                                                    FontConfig.kFontSize14,
                                                fontFamily: FontFamilyConfig
                                                    .urbanistRegular,
                                                fontWeight: FontWeight.w600,
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kBlackColor
                                                    : ColorConfig.kWhiteColor,
                                              ),
                                            ),
                                            Text(
                                              StringConfig.saveDiscount,
                                              style: TextStyle(
                                                fontSize: FontConfig.kFontSize8,
                                                fontFamily: FontFamilyConfig
                                                    .urbanistRegular,
                                                fontWeight: FontWeight.w400,
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kBlackColor
                                                    : ColorConfig.kWhiteColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: SizeConfig.kHeight6,
                                      ),
                                      Text(
                                        StringConfig.discountCode,
                                        style: TextStyle(
                                          fontSize: FontConfig.kFontSize12,
                                          fontFamily:
                                              FontFamilyConfig.urbanistRegular,
                                          fontWeight: FontWeight.w400,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kTextfieldTextColor
                                              : ColorConfig.kWhiteColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  selectContainer(0);
                                },
                                child: Image.asset(
                                  getContainerImage(0),
                                  height: SizeConfig.kHeight16,
                                  width: SizeConfig.kHeight16,
                                  color: ColorConfig.kPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: SizeConfig.kHeight24,
                        ),
                        Container(
                          width: SizeConfig.kHeight335,
                          height: SizeConfig.kHeight71,
                          padding: const EdgeInsets.only(
                              left: SizeConfig.padding16,
                              right: SizeConfig.padding16),
                          decoration: BoxDecoration(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kWhiteColor
                                : ColorConfig.kDarkModeColor,
                            borderRadius: BorderRadius.circular(
                                SizeConfig.borderRadius12),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                color: ColorConfig.kDarkDialougeColor
                                    .withOpacity(0.1),
                                blurRadius: 5,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Image(
                                    image: AssetImage(ImagePath.discount),
                                    width: SizeConfig.kHeight40,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: SizeConfig.padding3),
                                        child: Text(
                                          StringConfig.save30Discount,
                                          style: TextStyle(
                                            fontSize: FontConfig.kFontSize14,
                                            fontFamily: FontFamilyConfig
                                                .urbanistRegular,
                                            fontWeight: FontWeight.w600,
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig.kBlackColor
                                                : ColorConfig.kWhiteColor,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: SizeConfig.kHeight6,
                                      ),
                                      Text(
                                        StringConfig.discountCode,
                                        style: TextStyle(
                                          fontSize: FontConfig.kFontSize12,
                                          fontFamily:
                                              FontFamilyConfig.urbanistRegular,
                                          fontWeight: FontWeight.w400,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kTextfieldTextColor
                                              : ColorConfig.kWhiteColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  selectContainer(1);
                                },
                                child: Image.asset(
                                  getContainerImage(1),
                                  height: SizeConfig.kHeight16,
                                  width: SizeConfig.kHeight16,
                                  color: ColorConfig.kPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: SizeConfig.kHeight24,
                        ),
                        Container(
                          width: SizeConfig.kHeight335,
                          height: SizeConfig.kHeight71,
                          padding: const EdgeInsets.only(
                              left: SizeConfig.padding16,
                              right: SizeConfig.padding16),
                          decoration: BoxDecoration(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kWhiteColor
                                : ColorConfig.kDarkModeColor,
                            borderRadius: BorderRadius.circular(
                                SizeConfig.borderRadius12),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                color: ColorConfig.kDarkDialougeColor
                                    .withOpacity(0.1),
                                blurRadius: 5,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Image(
                                    image: AssetImage(ImagePath.discount),
                                    width: SizeConfig.kHeight40,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: SizeConfig.padding3),
                                        child: Text(
                                          StringConfig.upTo20Discount,
                                          style: TextStyle(
                                            fontSize: FontConfig.kFontSize14,
                                            fontFamily: FontFamilyConfig
                                                .urbanistRegular,
                                            fontWeight: FontWeight.w600,
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig.kBlackColor
                                                : ColorConfig.kWhiteColor,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: SizeConfig.kHeight6,
                                      ),
                                      Text(
                                        StringConfig.menusDiscount,
                                        style: TextStyle(
                                          fontSize: FontConfig.kFontSize12,
                                          fontFamily:
                                              FontFamilyConfig.urbanistRegular,
                                          fontWeight: FontWeight.w400,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kTextfieldTextColor
                                              : ColorConfig.kWhiteColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  selectContainer(2);
                                },
                                child: Image.asset(
                                  getContainerImage(2),
                                  height: SizeConfig.kHeight16,
                                  width: SizeConfig.kHeight16,
                                  color: ColorConfig.kPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: SizeConfig.kHeight24,
                        ),
                        Container(
                          width: SizeConfig.kHeight335,
                          height: SizeConfig.kHeight71,
                          padding: const EdgeInsets.only(
                              left: SizeConfig.padding16,
                              right: SizeConfig.padding16),
                          decoration: BoxDecoration(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kWhiteColor
                                : ColorConfig.kDarkModeColor,
                            borderRadius: BorderRadius.circular(
                                SizeConfig.borderRadius12),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                color: ColorConfig.kDarkDialougeColor
                                    .withOpacity(0.1),
                                blurRadius: 5,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Image(
                                    image: AssetImage(ImagePath.userDiscount),
                                    width: SizeConfig.kHeight40,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: SizeConfig.padding3),
                                        child: Text(
                                          StringConfig.userPromo,
                                          style: TextStyle(
                                            fontSize: FontConfig.kFontSize14,
                                            fontFamily: FontFamilyConfig
                                                .urbanistRegular,
                                            fontWeight: FontWeight.w600,
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig.kBlackColor
                                                : ColorConfig.kWhiteColor,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: SizeConfig.kHeight6,
                                      ),
                                      Text(
                                        StringConfig.validUserString,
                                        style: TextStyle(
                                          fontSize: FontConfig.kFontSize12,
                                          fontFamily:
                                              FontFamilyConfig.urbanistRegular,
                                          fontWeight: FontWeight.w400,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kTextfieldTextColor
                                              : ColorConfig.kWhiteColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  selectContainer(3);
                                },
                                child: Image.asset(
                                  getContainerImage(3),
                                  height: SizeConfig.kHeight16,
                                  width: SizeConfig.kHeight16,
                                  color: ColorConfig.kPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: SizeConfig.kHeight24,
                        ),
                        Container(
                          width: SizeConfig.kHeight335,
                          height: SizeConfig.kHeight71,
                          padding: const EdgeInsets.only(
                              left: SizeConfig.padding16,
                              right: SizeConfig.padding16),
                          decoration: BoxDecoration(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kWhiteColor
                                : ColorConfig.kDarkModeColor,
                            borderRadius: BorderRadius.circular(
                                SizeConfig.borderRadius12),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                color: ColorConfig.kDarkDialougeColor
                                    .withOpacity(0.1),
                                blurRadius: 5,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Image(
                                    image:
                                        AssetImage(ImagePath.deliveryDiscount),
                                    width: SizeConfig.kHeight40,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: SizeConfig.padding3),
                                        child: Text(
                                          StringConfig.freeDeliveryFee,
                                          style: TextStyle(
                                            fontSize: FontConfig.kFontSize14,
                                            fontFamily: FontFamilyConfig
                                                .urbanistRegular,
                                            fontWeight: FontWeight.w600,
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig.kBlackColor
                                                : ColorConfig.kWhiteColor,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: SizeConfig.kHeight6,
                                      ),
                                      Text(
                                        StringConfig.freeDeliveryMaxDollar6,
                                        style: TextStyle(
                                          fontSize: FontConfig.kFontSize12,
                                          fontFamily:
                                              FontFamilyConfig.urbanistRegular,
                                          fontWeight: FontWeight.w400,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kTextfieldTextColor
                                              : ColorConfig.kWhiteColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  selectContainer(4);
                                },
                                child: Image.asset(
                                  getContainerImage(4),
                                  height: SizeConfig.kHeight16,
                                  width: SizeConfig.kHeight16,
                                  color: ColorConfig.kPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: SizeConfig.kHeight24,
                        ),
                        Container(
                          width: SizeConfig.kHeight335,
                          height: SizeConfig.kHeight71,
                          padding: const EdgeInsets.only(
                              left: SizeConfig.padding16,
                              right: SizeConfig.padding16),
                          decoration: BoxDecoration(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kWhiteColor
                                : ColorConfig.kDarkModeColor,
                            borderRadius: BorderRadius.circular(
                                SizeConfig.borderRadius12),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                color: ColorConfig.kDarkDialougeColor
                                    .withOpacity(0.1),
                                blurRadius: 5,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Image(
                                    image: AssetImage(ImagePath.discount),
                                    width: SizeConfig.kHeight40,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: SizeConfig.padding3),
                                        child: Text(
                                          StringConfig.weekendSpecial,
                                          style: TextStyle(
                                            fontSize: FontConfig.kFontSize14,
                                            fontFamily: FontFamilyConfig
                                                .urbanistRegular,
                                            fontWeight: FontWeight.w600,
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig.kBlackColor
                                                : ColorConfig.kWhiteColor,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: SizeConfig.kHeight6,
                                      ),
                                      Text(
                                        StringConfig.validOnSatSun,
                                        style: TextStyle(
                                          fontSize: FontConfig.kFontSize12,
                                          fontFamily:
                                              FontFamilyConfig.urbanistRegular,
                                          fontWeight: FontWeight.w400,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kTextfieldTextColor
                                              : ColorConfig.kWhiteColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  selectContainer(5);
                                },
                                child: Image.asset(
                                  getContainerImage(5),
                                  height: SizeConfig.kHeight16,
                                  width: SizeConfig.kHeight16,
                                  color: ColorConfig.kPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: SizeConfig.kHeight24,
                        ),
                        Container(
                          width: SizeConfig.kHeight335,
                          height: SizeConfig.kHeight71,
                          padding: const EdgeInsets.only(
                              left: SizeConfig.padding16,
                              right: SizeConfig.padding16),
                          decoration: BoxDecoration(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kWhiteColor
                                : ColorConfig.kDarkModeColor,
                            borderRadius: BorderRadius.circular(
                                SizeConfig.borderRadius12),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                color: ColorConfig.kDarkDialougeColor
                                    .withOpacity(0.1),
                                blurRadius: 5,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Image(
                                    image: AssetImage(ImagePath.discount),
                                    width: SizeConfig.kHeight40,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: SizeConfig.padding3),
                                        child: Text(
                                          StringConfig.yearEndPromo,
                                          style: TextStyle(
                                            fontSize: FontConfig.kFontSize14,
                                            fontFamily: FontFamilyConfig
                                                .urbanistRegular,
                                            fontWeight: FontWeight.w600,
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig.kBlackColor
                                                : ColorConfig.kWhiteColor,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: SizeConfig.kHeight6,
                                      ),
                                      Text(
                                        StringConfig.newYearPromo,
                                        style: TextStyle(
                                          fontSize: FontConfig.kFontSize12,
                                          fontFamily:
                                              FontFamilyConfig.urbanistRegular,
                                          fontWeight: FontWeight.w400,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kTextfieldTextColor
                                              : ColorConfig.kWhiteColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  selectContainer(6);
                                },
                                child: Image.asset(
                                  getContainerImage(6),
                                  height: SizeConfig.kHeight16,
                                  width: SizeConfig.kHeight16,
                                  color: ColorConfig.kPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight32,
                  ),
                  CommonMaterialButton(
                    buttonColor: ColorConfig.kPrimaryColor,
                    height: SizeConfig.kHeight52,
                    txtColor: ColorConfig.kWhiteColor,
                    buttonText: StringConfig.applyButton,
                    onButtonClick: () {
                      Get.toNamed(AppRoutes.checkoutOrder);
                    },
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight20,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
