// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/map_screen/map_screen.dart';
import 'package:get/get.dart';

import '../../../app_routes/app_routes.dart';
import '../../../config/font_config.dart';
import '../../../config/font_family.dart';
import '../../../config/image_path.dart';
import '../../../config/size_config.dart';
import '../../../config/string_config.dart';
import '../../../controller/dark_mode_controller.dart';
import '../../../utils/appbar_common.dart';
import '../../../utils/common_material_button.dart';

class AddNewAddressScreen extends StatelessWidget {
  AddNewAddressScreen({Key? key}) : super(key: key);

  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scaffold(
          backgroundColor: darkModeController.isLightTheme.value
              ? ColorConfig.kWhiteColor
              : ColorConfig.kBlackColor,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
            child: CommonAppBar(
              title: StringConfig.setYourLocation,
              leadingImage: ImagePath.arrow,
              color: darkModeController.isLightTheme.value
                  ? ColorConfig.kBlackColor
                  : ColorConfig.kWhiteColor,
              leadingOnTap: () {
                Get.back();
              },
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: SizeConfig.kHeight550,
                width: double.infinity,
                child: MapScreen(
                  latitude: "37.4220041",
                  longitude: "-122.0862462",
                  padding: MediaQuery.of(context).size.height * 0.13,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: SizeConfig.kHeight445,
          child: Container(
            height: SizeConfig.kHeight38,
            width: SizeConfig.kHeight188,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SizeConfig.borderRadius30),
              border: Border.all(
                color: ColorConfig.kPrimaryColor,
                width: SizeConfig.kHeight1,
              ),
              color: ColorConfig.kWhiteColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: SizeConfig.padding17, right: SizeConfig.padding17),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(ImagePath.gpsIcon),
                    width: SizeConfig.kHeight19,
                  ),
                  const SizedBox(
                    width: SizeConfig.kHeight6,
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      fontSize: FontConfig.kFontSize14,
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      fontWeight: FontWeight.w600,
                      color: ColorConfig.kPrimaryColor,
                    ),
                    child: const Text(
                      StringConfig.useCurrentLocation,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: SizeConfig.kHeight260,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(SizeConfig.borderRadius30),
              topLeft: Radius.circular(SizeConfig.borderRadius30),
            ),
            color: darkModeController.isLightTheme.value
                ? ColorConfig.kWhiteColor
                : ColorConfig.kDarkModeColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: SizeConfig.padding16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: SizeConfig.padding20, right: SizeConfig.padding20),
                  child: DefaultTextStyle(
                    style: TextStyle(
                      fontSize: FontConfig.kFontSize20,
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      fontWeight: FontWeight.w600,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                    ),
                    child: const Text(
                      StringConfig.location,
                    ),
                  ),
                ),
                Divider(
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kDarkModeDividerColor
                      : ColorConfig.kDarkModeDividerColor.withOpacity(.3),
                  height: SizeConfig.kHeight30,
                  indent: 20,
                  endIndent: 20,
                ),
                const SizedBox(
                  height: SizeConfig.kHeight32,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: SizeConfig.padding20, right: SizeConfig.padding20),
                  child: Container(
                    width: SizeConfig.kHeight335,
                    height: SizeConfig.kHeight50,
                    decoration: BoxDecoration(
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kFillColor
                          : ColorConfig.kDarkDialougeColor,
                      borderRadius:
                          BorderRadius.circular(SizeConfig.borderRadius8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: SizeConfig.padding16,
                          right: SizeConfig.padding16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DefaultTextStyle(
                            style: TextStyle(
                              fontSize: FontConfig.kFontSize14,
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              fontWeight: FontWeight.w600,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                            ),
                            child: const Text(
                              StringConfig.timeSquareNYCSurat,
                            ),
                          ),
                          Image(
                            image: const AssetImage(ImagePath.mapPoint),
                            width: SizeConfig.kHeight18,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight32,
                ),
                CommonMaterialButton(
                  buttonColor: ColorConfig.kPrimaryColor,
                  height: SizeConfig.kHeight52,
                  txtColor: ColorConfig.kWhiteColor,
                  buttonText: StringConfig.continues,
                  onButtonClick: () {
                    Get.toNamed(AppRoutes.addNewAddressForm);
                  },
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
