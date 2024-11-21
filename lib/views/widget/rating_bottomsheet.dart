import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_family.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';

import '../../config/color.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../utils/common_material_button.dart';

ratingBottomSheet(BuildContext context) {
  DarkModeController darkModeController = Get.put(DarkModeController());
  List<Map> ratingHobbies = [
    {"name": "Ratings 3.5+", "isChecked": false},
    {"name": "Ratings 4+", "isChecked": false},
    {
      "name": "Ratings 4.5+",
      "isChecked": false,
    },
  ];

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
          return SingleChildScrollView(
              child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(SizeConfig.kHeight20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Text(
                    StringConfig.ratings,
                    style: TextStyle(
                        fontFamily: FontFamilyConfig.urbanistSemiBold,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kBlackColor
                            : ColorConfig.kWhiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.kHeight20),
                  ),
                  InkWell(
                    child: Icon(
                      Icons.close,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kHintColor
                          : ColorConfig.kDividerColor,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: SizeConfig.kHeight20),
              child: Divider(
                thickness: 1,
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kBlackColor.withOpacity(.1)
                    : ColorConfig.kDividerColor.withOpacity(.3),
              ),
            ),
            Column(
                children: ratingHobbies.map((rating) {
              return Theme(
                data:
                    ThemeData(unselectedWidgetColor: ColorConfig.kPrimaryColor),
                child: CheckboxListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: SizeConfig.kHeight20),
                    activeColor: ColorConfig.kPrimaryColor,
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    value: rating["isChecked"],
                    title: Text(
                      rating["name"],
                      style: TextStyle(
                        fontFamily: FontFamilyConfig.urbanistSemiBold,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kBlackColor
                            : ColorConfig.kWhiteColor,
                      ),
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        rating["isChecked"] = newValue;
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
          ]));
        });
      });
}
