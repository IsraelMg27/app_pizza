// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/app_routes/app_routes.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/home_controller.dart';
import 'package:get/get.dart';

import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../controller/dark_mode_controller.dart';
import '../../utils/appbar_common.dart';
import '../../utils/common_material_button.dart';

class DeliverTo extends StatefulWidget {
  const DeliverTo({Key? key}) : super(key: key);

  @override
  State<DeliverTo> createState() => _DeliverToState();
}

class _DeliverToState extends State<DeliverTo> {
  DarkModeController darkModeController = Get.put(DarkModeController());

  HomeController homeController = Get.put(HomeController());

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
    return Obx(
      () => Scaffold(
        backgroundColor: darkModeController.isLightTheme.value
            ? ColorConfig.kWhiteColor
            : ColorConfig.kBlackColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
          child: CommonAppBar(
            title: StringConfig.deliverTo,
            leadingImage: ImagePath.arrow,
            color: darkModeController.isLightTheme.value
                ? ColorConfig.kBlackColor
                : ColorConfig.kWhiteColor,
            leadingOnTap: () {
              Get.back();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: SizeConfig.padding10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: SizeConfig.padding20, right: SizeConfig.padding20),
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.kHeight91,
                  decoration: BoxDecoration(
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    borderRadius:
                        BorderRadius.circular(SizeConfig.borderRadius12),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 3,
                        color: ColorConfig.kDarkDialougeColor.withOpacity(0.1),
                        blurRadius: 5,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(SizeConfig.padding16),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                              image: AssetImage(ImagePath.mapLocation),
                              width: SizeConfig.kHeight28,
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: SizeConfig.kHeight250,
                                  height: SizeConfig.kHeight19,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            StringConfig.home,
                                            style: TextStyle(
                                              fontSize: FontConfig.kFontSize14,
                                              fontFamily: FontFamilyConfig
                                                  .urbanistSemiBold,
                                              fontWeight: FontWeight.w600,
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kBlackColor
                                                  : ColorConfig.kWhiteColor,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: SizeConfig.kHeight14,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                left: SizeConfig.padding5,
                                                right: SizeConfig.padding5,
                                                top: SizeConfig.padding2,
                                                bottom: SizeConfig.padding2),
                                            decoration: BoxDecoration(
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig
                                                      .kContainerLightColor
                                                  : ColorConfig.kHintColor
                                                      .withOpacity(.3),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      SizeConfig.borderRadius3),
                                            ),
                                            child: Text(
                                              StringConfig.defult,
                                              style: TextStyle(
                                                fontSize:
                                                    FontConfig.kFontSize10,
                                                fontFamily: FontFamilyConfig
                                                    .urbanistRegular,
                                                fontWeight: FontWeight.w500,
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kPrimaryColor
                                                    : ColorConfig.kWhiteColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () => selectContainer(0),
                                        child: Image.asset(
                                          getContainerImage(0),
                                          height: SizeConfig.kHeight16,
                                          width: SizeConfig.kHeight16,
                                          color: ColorConfig.kPrimaryColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: SizeConfig.kHeight6,
                                ),
                                Text(
                                  StringConfig.address1,
                                  style: TextStyle(
                                    fontSize: FontConfig.kFontSize12,
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    fontWeight: FontWeight.w500,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kHintColor
                                        : ColorConfig.kWhiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: SizeConfig.kHeight24,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: SizeConfig.padding20, right: SizeConfig.padding20),
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.kHeight91,
                  decoration: BoxDecoration(
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    borderRadius:
                        BorderRadius.circular(SizeConfig.borderRadius12),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 3,
                        color: ColorConfig.kDarkDialougeColor.withOpacity(0.1),
                        blurRadius: 5,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(SizeConfig.padding16),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                              image: AssetImage(ImagePath.mapLocation),
                              width: SizeConfig.kHeight28,
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: SizeConfig.kHeight250,
                                  height: SizeConfig.kHeight19,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        StringConfig.myOffice,
                                        style: TextStyle(
                                          fontSize: FontConfig.kFontSize14,
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontWeight: FontWeight.w600,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () => selectContainer(1),
                                        child: Image.asset(
                                          getContainerImage(1),
                                          height: SizeConfig.kHeight16,
                                          width: SizeConfig.kHeight16,
                                          color: ColorConfig.kPrimaryColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: SizeConfig.kHeight6,
                                ),
                                Text(
                                  StringConfig.address2,
                                  style: TextStyle(
                                    fontSize: FontConfig.kFontSize12,
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    fontWeight: FontWeight.w500,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kHintColor
                                        : ColorConfig.kWhiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: SizeConfig.kHeight24,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: SizeConfig.padding20, right: SizeConfig.padding20),
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.kHeight91,
                  decoration: BoxDecoration(
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    borderRadius:
                        BorderRadius.circular(SizeConfig.borderRadius12),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 3,
                        color: ColorConfig.kDarkDialougeColor.withOpacity(0.1),
                        blurRadius: 5,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(SizeConfig.padding16),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                              image: AssetImage(ImagePath.mapLocation),
                              width: SizeConfig.kHeight28,
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: SizeConfig.kHeight250,
                                  height: SizeConfig.kHeight19,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        StringConfig.myVilla,
                                        style: TextStyle(
                                          fontSize: FontConfig.kFontSize14,
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontWeight: FontWeight.w600,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () => selectContainer(2),
                                        child: Image.asset(
                                          getContainerImage(2),
                                          height: SizeConfig.kHeight16,
                                          width: SizeConfig.kHeight16,
                                          color: ColorConfig.kPrimaryColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: SizeConfig.kHeight6,
                                ),
                                Text(
                                  StringConfig.address3,
                                  style: TextStyle(
                                    fontSize: FontConfig.kFontSize12,
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    fontWeight: FontWeight.w500,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kHintColor
                                        : ColorConfig.kWhiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: SizeConfig.kHeight24,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: SizeConfig.padding20, right: SizeConfig.padding20),
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.kHeight91,
                  decoration: BoxDecoration(
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    borderRadius:
                        BorderRadius.circular(SizeConfig.borderRadius12),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 3,
                        color: ColorConfig.kDarkDialougeColor.withOpacity(0.1),
                        blurRadius: 5,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(SizeConfig.padding16),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                              image: AssetImage(ImagePath.mapLocation),
                              width: SizeConfig.kHeight28,
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: SizeConfig.kHeight250,
                                  height: SizeConfig.kHeight19,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        StringConfig.parentHouse,
                                        style: TextStyle(
                                          fontSize: FontConfig.kFontSize14,
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontWeight: FontWeight.w600,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () => selectContainer(3),
                                        child: Image.asset(
                                          getContainerImage(3),
                                          height: SizeConfig.kHeight16,
                                          width: SizeConfig.kHeight16,
                                          color: ColorConfig.kPrimaryColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: SizeConfig.kHeight6,
                                ),
                                Text(
                                  StringConfig.address1,
                                  style: TextStyle(
                                    fontSize: FontConfig.kFontSize12,
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    fontWeight: FontWeight.w500,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kHintColor
                                        : ColorConfig.kWhiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: SizeConfig.kHeight32,
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: SizeConfig.kHeight140,
          child: Center(
            child: Column(
              children: [
                CommonMaterialButton(
                  buttonColor: darkModeController.isLightTheme.value
                      ? ColorConfig.kContainerLightColor
                      : ColorConfig.kDarkDialougeColor,
                  height: SizeConfig.kHeight52,
                  txtColor: darkModeController.isLightTheme.value
                      ? ColorConfig.kPrimaryColor
                      : ColorConfig.kWhiteColor,
                  buttonText: StringConfig.addNewAddress,
                  onButtonClick: () {
                    Get.toNamed(AppRoutes.addNewAddress);
                  },
                  width: double.infinity,
                ),
                const SizedBox(
                  height: SizeConfig.kHeight16,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
