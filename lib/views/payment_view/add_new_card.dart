// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';

import '../../app_routes/app_routes.dart';
import '../../config/color.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../utils/appbar_common.dart';
import '../../utils/common_material_button.dart';

class AddNewCardScreen extends StatelessWidget {
  AddNewCardScreen({Key? key}) : super(key: key);

  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: darkModeController.isLightTheme.value
            ? ColorConfig.kWhiteColor
            : ColorConfig.kBlackColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
            child: CommonAppBar(
              title: StringConfig.addNewCard,
              leadingImage: ImagePath.arrow,
              color: darkModeController.isLightTheme.value
                  ? ColorConfig.kBlackColor
                  : ColorConfig.kWhiteColor,
              leadingOnTap: () {
                Get.back();
              },
            )),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: SizeConfig.padding8),
                child: Image.asset(
                  ImagePath.card,
                  height: SizeConfig.kHeight260,
                  width: Get.width,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: SizeConfig.kHeight20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(StringConfig.cardName,
                        style: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: FontConfig.kFontSize16,
                        )),
                    const SizedBox(height: SizeConfig.kHeight16),
                    Container(
                      height: SizeConfig.kHeight50,
                      alignment: Alignment.center,
                      padding:
                          const EdgeInsets.only(left: SizeConfig.kHeight12),
                      decoration: BoxDecoration(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kWhiteColor
                              : ColorConfig.kDarkModeColor,
                          borderRadius:
                              BorderRadius.circular(SizeConfig.borderRadius8),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 3,
                                color: ColorConfig.kHintColor.withOpacity(0.2),
                                blurRadius: 3,
                                offset: const Offset(0, 0))
                          ]),
                      child: TextFormField(
                        style: TextStyle(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: SizeConfig.kHeight10),
                          hintText: StringConfig.johnQuil,
                          hintStyle: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              fontSize: FontConfig.kFontSize14,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(height: SizeConfig.kHeight16),
                    Text(StringConfig.cardNumber,
                        style: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: FontConfig.kFontSize16,
                        )),
                    const SizedBox(height: SizeConfig.kHeight16),
                    Container(
                      height: SizeConfig.kHeight50,
                      alignment: Alignment.center,
                      padding:
                          const EdgeInsets.only(left: SizeConfig.kHeight12),
                      decoration: BoxDecoration(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kWhiteColor
                              : ColorConfig.kDarkModeColor,
                          borderRadius:
                              BorderRadius.circular(SizeConfig.borderRadius8),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 3,
                                color: ColorConfig.kHintColor.withOpacity(0.2),
                                blurRadius: 3,
                                offset: const Offset(0, 0))
                          ]),
                      child: TextFormField(
                        style: TextStyle(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: SizeConfig.kHeight10),
                          isDense: true,
                          border: InputBorder.none,
                          hintText: StringConfig.cardNu,
                          hintStyle: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              fontSize: FontConfig.kFontSize14,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(height: SizeConfig.kHeight16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(StringConfig.expiryDate,
                                  style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      fontSize: FontConfig.kFontSize16,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600)),
                              const SizedBox(height: SizeConfig.kHeight16),
                              Container(
                                  height: SizeConfig.kHeight50,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.only(
                                      left: SizeConfig.kHeight12),
                                  decoration: BoxDecoration(
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kWhiteColor
                                              : ColorConfig.kDarkModeColor,
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.borderRadius8),
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 3,
                                            color: ColorConfig.kHintColor
                                                .withOpacity(0.2),
                                            blurRadius: 3,
                                            offset: const Offset(0, 0))
                                      ]),
                                  child: TextField(
                                    textAlign: TextAlign.left,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                          left: SizeConfig.kHeight12,
                                          top: SizeConfig.kHeight5,
                                          right: SizeConfig.kHeight12),
                                      border: InputBorder.none,
                                      hintText: "09/12",
                                      hintStyle: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontSize: FontConfig.kFontSize14,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(width: SizeConfig.kHeight19),
                        Flexible(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(StringConfig.cVV,
                                  style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      fontSize: FontConfig.kFontSize16,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600)),
                              const SizedBox(height: SizeConfig.kHeight16),
                              Container(
                                  height: SizeConfig.kHeight50,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.only(
                                      left: SizeConfig.kHeight12),
                                  decoration: BoxDecoration(
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kWhiteColor
                                              : ColorConfig.kDarkModeColor,
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.borderRadius8),
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 3,
                                            color: ColorConfig.kHintColor
                                                .withOpacity(0.2),
                                            blurRadius: 3,
                                            offset: const Offset(0, 0))
                                      ]),
                                  child: TextField(
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                          right: SizeConfig.kHeight12,
                                          left: SizeConfig.kHeight12,
                                          top: SizeConfig.kHeight5),
                                      border: InputBorder.none,
                                      hintText: "789",
                                      hintStyle: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontSize: FontConfig.kFontSize14,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: SizeConfig.padding10),
          child: CommonMaterialButton(
              width: double.infinity,
              buttonColor: ColorConfig.kPrimaryColor,
              height: SizeConfig.kHeight52,
              txtColor: ColorConfig.kWhiteColor,
              buttonText: StringConfig.add,
              onButtonClick: () {
                Get.toNamed(AppRoutes.payment);
              }),
        ),
      ),
    ]);
  }
}
