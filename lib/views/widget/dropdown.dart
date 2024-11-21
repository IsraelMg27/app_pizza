import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';

import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';

final List<String> items = [
  StringConfig.pureVeg,
  StringConfig.nonVeg,
];

List<DropdownMenuItem<String>> addDividersAfterItems(List<String> items) {
  DarkModeController darkModeController = Get.put(DarkModeController());
  final List<DropdownMenuItem<String>> menuItems = [];
  for (final String item in items) {
    menuItems.addAll(
      [
        DropdownMenuItem<String>(
          value: item,
          child: Row(
            children: [
              const SizedBox(
                width: SizeConfig.kHeight5,
              ),
              item == StringConfig.pureVeg
                  ? Image.asset(
                      ImagePath.veg,
                      height: SizeConfig.kHeight10,
                      width: SizeConfig.kHeight10,
                    )
                  : Image.asset(
                      ImagePath.nonVeg,
                      height: SizeConfig.kHeight10,
                      width: SizeConfig.kHeight10,
                    ),
              const SizedBox(
                width: SizeConfig.kHeight5,
              ),
              Text(item,
                  style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistMedium,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: FontConfig.kFontSize12,
                  )),
            ],
          ),
        ),
        //If it's last item, we will not add Divider after it.
        if (item != items.last)
          const DropdownMenuItem<String>(
            enabled: false,
            child: Divider(),
          ),
      ],
    );
  }
  return menuItems;
}

List<double> getCustomItemsHeights() {
  final List<double> itemsHeights = [];
  for (int i = 0; i < (items.length * 2) - 1; i++) {
    if (i.isEven) {
      itemsHeights.add(SizeConfig.kHeight30);
    }
    //Dividers indexes will be the odd indexes
    if (i.isOdd) {
      itemsHeights.add(SizeConfig.kHeight1);
    }
  }
  return itemsHeights;
}
