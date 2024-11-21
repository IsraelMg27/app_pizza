// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/app_routes/app_routes.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:get/get.dart';
import '../../../config/font_config.dart';
import '../../../config/font_family.dart';
import '../../../config/image_path.dart';
import '../../../config/size_config.dart';
import '../../../config/string_config.dart';
import '../../../controller/dark_mode_controller.dart';
import '../../../utils/appbar_common.dart';
import '../../../utils/common_material_button.dart';
import '../../controller/edit_address_controller.dart';

class EditNewAddressFormScreen extends StatefulWidget {
  const EditNewAddressFormScreen({Key? key}) : super(key: key);

  @override
  State<EditNewAddressFormScreen> createState() =>
      _EditNewAddressFormScreenState();
}

class _EditNewAddressFormScreenState extends State<EditNewAddressFormScreen> {
  EditAddressController editAddressController =
      Get.put(EditAddressController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkModeController.isLightTheme.value
          ? ColorConfig.kWhiteColor
          : ColorConfig.kBlackColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
        child: CommonAppBar(
          title: StringConfig.editAddress,
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
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: SizeConfig.padding20, right: SizeConfig.padding20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: editAddressController.streetController,
                        cursorColor: ColorConfig.kTextfieldTextColor,
                        style: TextStyle(
                          fontSize: FontConfig.kFontSize14,
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          fontWeight: FontWeight.w600,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                        ),
                        decoration: InputDecoration(
                          hintText: StringConfig.street,
                          hintStyle: TextStyle(
                            fontSize: FontConfig.kFontSize14,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w400,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kTextfieldTextColor
                                : ColorConfig.kTextFieldLightTextColor,
                          ),
                          filled: true,
                          fillColor: darkModeController.isLightTheme.value
                              ? ColorConfig.kBgColor.withOpacity(.2)
                              : ColorConfig.kDarkModeColor,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.circular(SizeConfig.borderRadius8),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight24,
                      ),
                      TextFormField(
                        controller: editAddressController.street2Controller,
                        cursorColor: ColorConfig.kTextfieldTextColor,
                        style: TextStyle(
                          fontSize: FontConfig.kFontSize14,
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          fontWeight: FontWeight.w600,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                        ),
                        decoration: InputDecoration(
                          hintText: StringConfig.street2,
                          hintStyle: TextStyle(
                            fontSize: FontConfig.kFontSize14,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w400,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kTextfieldTextColor
                                : ColorConfig.kTextFieldLightTextColor,
                          ),
                          filled: true,
                          fillColor: darkModeController.isLightTheme.value
                              ? ColorConfig.kBgColor.withOpacity(.2)
                              : ColorConfig.kDarkModeColor,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.circular(SizeConfig.borderRadius8),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight24,
                      ),
                      TextFormField(
                        controller: editAddressController.landmarkController,
                        cursorColor: ColorConfig.kTextfieldTextColor,
                        style: TextStyle(
                          fontSize: FontConfig.kFontSize14,
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          fontWeight: FontWeight.w600,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                        ),
                        decoration: InputDecoration(
                          hintText: StringConfig.landmark,
                          hintStyle: TextStyle(
                            fontSize: FontConfig.kFontSize14,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w400,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kTextfieldTextColor
                                : ColorConfig.kTextFieldLightTextColor,
                          ),
                          filled: true,
                          fillColor: darkModeController.isLightTheme.value
                              ? ColorConfig.kBgColor.withOpacity(.2)
                              : ColorConfig.kDarkModeColor,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.circular(SizeConfig.borderRadius8),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight24,
                      ),
                      TextFormField(
                        controller: editAddressController.cityController,
                        cursorColor: ColorConfig.kTextfieldTextColor,
                        style: TextStyle(
                          fontSize: FontConfig.kFontSize14,
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          fontWeight: FontWeight.w600,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                        ),
                        decoration: InputDecoration(
                          hintText: StringConfig.city,
                          hintStyle: TextStyle(
                            fontSize: FontConfig.kFontSize14,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w400,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kTextfieldTextColor
                                : ColorConfig.kTextFieldLightTextColor,
                          ),
                          filled: true,
                          fillColor: darkModeController.isLightTheme.value
                              ? ColorConfig.kBgColor.withOpacity(.2)
                              : ColorConfig.kDarkModeColor,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.circular(SizeConfig.borderRadius8),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight24,
                      ),
                      TextFormField(
                        controller: editAddressController.pinCodeController,
                        cursorColor: ColorConfig.kTextfieldTextColor,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          fontSize: FontConfig.kFontSize14,
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          fontWeight: FontWeight.w600,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                        ),
                        decoration: InputDecoration(
                          hintText: StringConfig.pincode,
                          hintStyle: TextStyle(
                            fontSize: FontConfig.kFontSize14,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w400,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kTextfieldTextColor
                                : ColorConfig.kTextFieldLightTextColor,
                          ),
                          filled: true,
                          fillColor: darkModeController.isLightTheme.value
                              ? ColorConfig.kBgColor.withOpacity(.2)
                              : ColorConfig.kDarkModeColor,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.circular(SizeConfig.borderRadius8),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight24,
                      ),
                      TextFormField(
                        // controller: addressController.stateController,
                        initialValue: StringConfig.reyana,
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: ColorConfig.kTextfieldTextColor,
                        style: TextStyle(
                          fontSize: FontConfig.kFontSize14,
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          fontWeight: FontWeight.w600,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                        ),
                        decoration: InputDecoration(
                          hintText: StringConfig.state,
                          hintStyle: TextStyle(
                            fontSize: FontConfig.kFontSize14,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w400,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kTextfieldTextColor
                                : ColorConfig.kTextFieldLightTextColor,
                          ),
                          filled: true,
                          fillColor: darkModeController.isLightTheme.value
                              ? ColorConfig.kBgColor.withOpacity(.2)
                              : ColorConfig.kDarkModeColor,
                          suffixIcon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: SizeConfig.kHeight26,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kTextfieldTextColor
                                    .withOpacity(SizeConfig.kOpp07)
                                : ColorConfig.kTextFieldLightTextColor,
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.circular(SizeConfig.borderRadius8),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight24,
                      ),
                      TextFormField(
                        // controller: addressController.countryController,
                        initialValue: StringConfig.london,
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: ColorConfig.kTextfieldTextColor,
                        style: TextStyle(
                          fontSize: FontConfig.kFontSize14,
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          fontWeight: FontWeight.w600,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                        ),
                        decoration: InputDecoration(
                          hintText: StringConfig.country,
                          hintStyle: TextStyle(
                            fontSize: FontConfig.kFontSize14,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w400,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kTextfieldTextColor
                                : ColorConfig.kTextFieldLightTextColor,
                          ),
                          filled: true,
                          fillColor: darkModeController.isLightTheme.value
                              ? ColorConfig.kBgColor.withOpacity(.2)
                              : ColorConfig.kDarkModeColor,
                          suffixIcon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: SizeConfig.kHeight26,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kTextfieldTextColor
                                    .withOpacity(SizeConfig.kOpp07)
                                : ColorConfig.kTextFieldLightTextColor,
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.circular(SizeConfig.borderRadius8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight30,
                ),
                CommonMaterialButton(
                  buttonColor: ColorConfig.kPrimaryColor,
                  height: SizeConfig.kHeight52,
                  txtColor: ColorConfig.kWhiteColor,
                  buttonText: StringConfig.saveAddress,
                  onButtonClick: () {
                    Get.toNamed(AppRoutes.address);
                  },
                  width: double.infinity,
                ),
                const SizedBox(
                  height: SizeConfig.kHeight16,
                ),
                CommonMaterialButton(
                  buttonColor: darkModeController.isLightTheme.value
                      ? ColorConfig.kContainerLightColor
                      : ColorConfig.kDarkDialougeColor,
                  height: SizeConfig.kHeight52,
                  txtColor: darkModeController.isLightTheme.value
                      ? ColorConfig.kPrimaryColor
                      : ColorConfig.kWhiteColor,
                  buttonText: StringConfig.cancel,
                  onButtonClick: () {
                    Get.back();
                    editAddressController.streetController.clear();
                    editAddressController.street2Controller.clear();
                    editAddressController.landmarkController.clear();
                    editAddressController.cityController.clear();
                    editAddressController.pinCodeController.clear();
                    editAddressController.stateController.clear();
                    editAddressController.countryController.clear();
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
