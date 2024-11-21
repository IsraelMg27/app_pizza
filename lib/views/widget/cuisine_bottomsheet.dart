import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/home_controller.dart';
import 'package:get/get.dart';

import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../utils/common_material_button.dart';

List<Map> availableHobbies = [
  {"name": "Fast Food", "isChecked": false},
  {"name": "North Indian", "isChecked": false},
  {
    "name": "Desserts",
    "isChecked": false,
  },
  {"name": "Pizza", "isChecked": false},
  {"name": "Chinese", "isChecked": false},
  {"name": "Shake", "isChecked": false},
  {"name": "Sandwich", "isChecked": false}
];

cuisinesBottomSheet(BuildContext context) {
  HomeController homeController = Get.put(HomeController());
  DarkModeController darkModeController = Get.put(DarkModeController());
  return showModalBottomSheet(
    backgroundColor: darkModeController.isLightTheme.value
        ? ColorConfig.kWhiteColor
        : ColorConfig.kBlackColor,
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(SizeConfig.borderRadius25),
        topRight: Radius.circular(SizeConfig.borderRadius25),
      ),
    ),
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          final screenHeight = MediaQuery.of(context).size.height;
          const appBarHeight = kToolbarHeight;
          final statusBarHeight = MediaQuery.of(context).padding.top;
          final availableHeight = screenHeight - appBarHeight - statusBarHeight;

          return Container(
            height: availableHeight * 0.9, // Adjust the height as needed
            decoration: BoxDecoration(
              color: darkModeController.isLightTheme.value
                  ? ColorConfig.kWhiteColor
                  : ColorConfig.kBlackColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(SizeConfig.borderRadius25),
                topRight: Radius.circular(SizeConfig.borderRadius25),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(SizeConfig.kHeight20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(),
                        Text(
                          StringConfig.cuisines,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistSemiBold,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.kHeight20,
                          ),
                        ),
                        InkWell(
                          child: Icon(
                            Icons.close,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kDividerColor,
                          ),
                          onTap: () {
                            homeController.isSort.value = true;
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConfig.kHeight20),
                    child: Divider(
                      thickness: 1,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor.withOpacity(.1)
                          : ColorConfig.kDividerColor.withOpacity(.3),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConfig.kHeight20,
                        vertical: SizeConfig.kHeight20),
                    child: TextFormField(
                      cursorColor: ColorConfig.kPrimaryColor,
                      showCursor: true,
                      style: TextStyle(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                          height: SizeConfig.kH07),
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return '';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kHintColor
                              : ColorConfig.kWhiteColor,
                        ),
                        fillColor: darkModeController.isLightTheme.value
                            ? ColorConfig.kFillColor
                            : ColorConfig.kDarkModeColor,
                        filled: true,
                        hintText: StringConfig.searchCuisine,
                        hintStyle: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistRegular,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kHintColor
                              : ColorConfig.kWhiteColor,
                          fontWeight: FontWeight.w300,
                          fontSize: FontConfig.kFontSize14,
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(SizeConfig.borderRadius10)),
                          borderSide: BorderSide(
                            width: SizeConfig.kHeight0,
                            style: BorderStyle.none,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(SizeConfig.borderRadius12),
                          borderSide: const BorderSide(
                            width: SizeConfig.kHeight0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                      children: availableHobbies.map((hobby) {
                    return Theme(
                      data: ThemeData(
                          unselectedWidgetColor: ColorConfig.kPrimaryColor),
                      child: CheckboxListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: SizeConfig.kHeight20),
                          activeColor: ColorConfig.kPrimaryColor,
                          checkboxShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          value: hobby["isChecked"],
                          title: Text(
                            hobby["name"],
                            style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                            ),
                          ),
                          onChanged: (newValue) {
                            setState(() {
                              hobby["isChecked"] = newValue;
                            });
                          }),
                    );
                  }).toList()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CommonMaterialButton(
                          height: SizeConfig.kHeight42,
                          width: SizeConfig.kHeight140,
                          buttonColor: ColorConfig.kButtonLightColor,
                          txtColor: ColorConfig.kPrimaryColor,
                          buttonText: 'Reset',
                          onButtonClick: () {}),
                      CommonMaterialButton(
                          height: SizeConfig.kHeight42,
                          width: SizeConfig.kHeight140,
                          buttonColor: ColorConfig.kPrimaryColor,
                          txtColor: ColorConfig.kWhiteColor,
                          buttonText: 'Apply',
                          onButtonClick: () {}),
                    ],
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight20,
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
