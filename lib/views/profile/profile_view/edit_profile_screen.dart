// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/edit_profile_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../config/color.dart';
import '../../../config/font_config.dart';
import '../../../config/font_family.dart';
import '../../../config/image_path.dart';
import '../../../config/size_config.dart';
import '../../../config/string_config.dart';
import '../../../controller/dark_mode_controller.dart';
import '../../../utils/appbar_common.dart';
import '../../../utils/common_material_button.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  EditProfileController editProfileController =
      Get.put(EditProfileController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: editProfileController.selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != editProfileController.selectedDate) {
      setState(() {
        editProfileController.selectedDate = picked;
        editProfileController.dateController.text = DateFormat('dd-MM-yyyy')
            .format(editProfileController.selectedDate!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkModeController.isLightTheme.value
          ? ColorConfig.kWhiteColor
          : ColorConfig.kBlackColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
        child: CommonAppBar(
          title: StringConfig.editProfile,
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
                        controller: editProfileController.nameController,
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
                          hintText: StringConfig.name,
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
                        controller: editProfileController.phoneNumberController,
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
                          hintText: StringConfig.phoneNumber,
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
                          suffixText: StringConfig.change,
                          suffixStyle: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: ColorConfig.kPrimaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize14,
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
                        controller: editProfileController.emailController,
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
                          hintText: StringConfig.email,
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
                          suffixText: StringConfig.change,
                          suffixStyle: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: ColorConfig.kPrimaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize14,
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
                        controller: editProfileController.dateController,
                        cursorColor: ColorConfig.kTextfieldTextColor,
                        onTap: () {
                          _selectDate(context);
                        },
                        style: TextStyle(
                          fontSize: FontConfig.kFontSize14,
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          fontWeight: FontWeight.w600,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                        ),
                        decoration: InputDecoration(
                          hintText: StringConfig.date,
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
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(
                                left: SizeConfig.padding11,
                                right: SizeConfig.padding13),
                            child: GestureDetector(
                              onTap: () {
                                _selectDate(context);
                              },
                              child: Image(
                                image: const AssetImage(ImagePath.calendar),
                                width: SizeConfig.kHeight22,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kTextFieldLightTextColor,
                              ),
                            ),
                          ),
                          suffixIconConstraints: const BoxConstraints(
                            maxWidth: SizeConfig.kHeight45,
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
                        controller: editProfileController.genderController,
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
                          hintText: StringConfig.gender,
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
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(
                                left: SizeConfig.padding13,
                                right: SizeConfig.padding8),
                            child: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: SizeConfig.kHeight26,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kTextfieldTextColor
                                      .withOpacity(SizeConfig.kOpp07)
                                  : ColorConfig.kTextFieldLightTextColor,
                            ),
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: SizeConfig.kHeight80,
        child: Center(
          child: CommonMaterialButton(
            buttonColor: ColorConfig.kPrimaryColor,
            height: SizeConfig.kHeight52,
            txtColor: ColorConfig.kWhiteColor,
            buttonText: StringConfig.saveButton,
            onButtonClick: () {},
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
