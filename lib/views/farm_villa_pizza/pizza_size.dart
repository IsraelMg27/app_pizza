import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/pizza_controller.dart';
import 'package:get/get.dart';

import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/size_config.dart';

class PizzaSize extends StatefulWidget {
  const PizzaSize({
    super.key,
  });

  @override
  State<PizzaSize> createState() => _PizzaSizeState();
}

class _PizzaSizeState extends State<PizzaSize> {
  DarkModeController darkModeController = Get.put(DarkModeController());
  PizzaController pizzaController = Get.put(PizzaController());

  @override
  Widget build(BuildContext context) {
    return Column(
        children: pizzaController.pizzaSize.map((rating) {
      return Theme(
        data: ThemeData(
          unselectedWidgetColor: ColorConfig.kPrimaryColor,
        ),
        child: CheckboxListTile(
            dense: true,
            contentPadding: const EdgeInsets.symmetric(
                horizontal: SizeConfig.kHeight20, vertical: 0),
            activeColor: ColorConfig.kPrimaryColor,
            checkboxShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            value: rating["isChecked"],
            title: Row(
              children: [
                Text(
                  rating["name"],
                  style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistSemiBold,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: FontConfig.kFontSize14,
                  ),
                ),
                const Spacer(),
                Text(
                  rating["name1"],
                  style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistSemiBold,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: FontConfig.kFontSize14,
                  ),
                ),
              ],
            ),
            onChanged: (newValue) {
              setState(() {
                rating["isChecked"] = newValue;
              });
            }),
      );
    }).toList());
  }
}
