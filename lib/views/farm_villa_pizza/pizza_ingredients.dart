import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/home_controller.dart';
import 'package:get/get.dart';

import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';

class PizzaIngredients extends StatefulWidget {
  const PizzaIngredients({
    super.key,
  });

  @override
  State<PizzaIngredients> createState() => _PizzaIngredientsState();
}

class _PizzaIngredientsState extends State<PizzaIngredients> {
  HomeController homeController = Get.put(HomeController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Column(
        children: homeController.pizzaIngredients.map((rating) {
      return Theme(
        data: ThemeData(
          unselectedWidgetColor: ColorConfig.kPrimaryColor,
        ),
        child: CheckboxListTile(
            dense: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            activeColor: ColorConfig.kPrimaryColor,
            checkboxShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            value: rating["isChecked"],
            title: Row(
              children: [
                Image.asset(
                  ImagePath.veg,
                  height: SizeConfig.kHeight10,
                  width: SizeConfig.kHeight10,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  rating["pizzaIngredientsName"],
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
                  rating["pizzaIngredientsName1"],
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
