import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/restaurant/widget/pizza_widget.dart';
import 'package:get/get.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../controller/dark_mode_controller.dart';
import '../../controller/home_controller.dart';
import '../widget/cuisine_bottomsheet.dart';
import '../widget/dropdown.dart';
import '../widget/rating_bottomsheet.dart';
import '../widget/sort_bottomsheet.dart';

// ignore: must_be_immutable
class DishesScreen extends StatelessWidget {
  DishesScreen({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: darkModeController.isLightTheme.value
              ? ColorConfig.kWhiteColor
              : ColorConfig.kBlackColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: SizeConfig.kHeight20,
                ),
                SizedBox(
                  height: SizeConfig.kHeight40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: SizeConfig.kHeight20),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                sortBottomSheet(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kFillColor
                                        : ColorConfig.kDarkModeColor,
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.borderRadius5)),
                                height: SizeConfig.kHeight32,
                                width: SizeConfig.kHeight86,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      ImagePath.short,
                                      height: SizeConfig.kHeight12,
                                      width: SizeConfig.kHeight12,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                    ),
                                    const SizedBox(
                                      width: SizeConfig.kHeight10,
                                    ),
                                    Text(StringConfig.short,
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistMedium,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize12,
                                        )),
                                    const SizedBox(
                                      width: SizeConfig.kHeight5,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight16,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: ColorConfig.kPrimaryColor,
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.borderRadius5)),
                              height: SizeConfig.kHeight32,
                              width: SizeConfig.kHeight86,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(StringConfig.nearest,
                                      style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistMedium,
                                        color: ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: FontConfig.kFontSize12,
                                      )),
                                  const SizedBox(
                                    width: SizeConfig.kHeight10,
                                  ),
                                  Icon(
                                    Icons.close_outlined,
                                    color: ColorConfig.kWhiteColor,
                                    size: SizeConfig.kHeight12,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight16,
                            ),
                            GestureDetector(
                              onTap: () {
                                cuisinesBottomSheet(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kFillColor
                                        : ColorConfig.kDarkModeColor,
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.borderRadius5)),
                                height: SizeConfig.kHeight32,
                                width: SizeConfig.kHeight86,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(StringConfig.cuisines,
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistMedium,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize12,
                                        )),
                                    const SizedBox(
                                      width: SizeConfig.kHeight10,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight16,
                            ),
                            Obx(
                              () => DropdownButtonHideUnderline(
                                child: DropdownButton2<String>(
                                  items: addDividersAfterItems(items),
                                  value: homeController.dropDownValue.value,
                                  onChanged: (String? value) {
                                    homeController.dropDownValue.value = value!;
                                  },
                                  buttonStyleData: ButtonStyleData(
                                    decoration: BoxDecoration(
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kFillColor
                                            : ColorConfig.kDarkModeColor,
                                        borderRadius: BorderRadius.circular(
                                            SizeConfig.borderRadius5)),
                                    height: SizeConfig.kHeight32,
                                    width: SizeConfig.kHeight94,
                                  ),
                                  style: TextStyle(
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                  ),
                                  dropdownStyleData: DropdownStyleData(
                                    maxHeight: SizeConfig.kHeight80,
                                    width: SizeConfig.kHeight95,
                                    decoration: BoxDecoration(
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kFillColor
                                            : ColorConfig.kDarkModeColor,
                                        borderRadius: BorderRadius.circular(
                                            SizeConfig.borderRadius10)),
                                  ),
                                  menuItemStyleData: MenuItemStyleData(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: SizeConfig.kHeight8),
                                    customHeights: getCustomItemsHeights(),
                                  ),
                                  iconStyleData: IconStyleData(
                                    iconEnabledColor:
                                        darkModeController.isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                    openMenuIcon: Icon(
                                      Icons.arrow_drop_up,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight16,
                            ),
                            GestureDetector(
                              onTap: () {
                                ratingBottomSheet(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kFillColor
                                        : ColorConfig.kDarkModeColor,
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.borderRadius5)),
                                height: SizeConfig.kHeight32,
                                width: SizeConfig.kHeight86,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(StringConfig.ratings,
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistMedium,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize12,
                                        )),
                                    const SizedBox(
                                      width: SizeConfig.kHeight10,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight20,
                ),
                DefaultTabController(
                    length: 5,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: SizeConfig.kHeight20),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: ColorConfig.kDarkModeDividerColor
                                            .withOpacity(.3),
                                        width: SizeConfig.kH15)),
                              ),
                              child: TabBar(
                                tabAlignment: TabAlignment.center,
                                isScrollable: true,
                                indicatorColor: ColorConfig.kPrimaryColor,
                                unselectedLabelColor:
                                    darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                labelColor:
                                    darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                labelStyle: const TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistMedium,
                                  fontWeight: FontWeight.w400,
                                  fontSize: FontConfig.kFontSize12,
                                ),
                                unselectedLabelStyle: const TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistMedium,
                                  fontWeight: FontWeight.w400,
                                  fontSize: FontConfig.kFontSize12,
                                ),
                                tabs: <Widget>[
                                  Tab(
                                    text: "All",
                                    icon: Image.asset(
                                      ImagePath.pizza,
                                      height: SizeConfig.kHeight40,
                                      width: SizeConfig.kHeight40,
                                    ),
                                  ),
                                  Tab(
                                    text: "Veg",
                                    icon: Image.asset(
                                      ImagePath.burger,
                                      height: SizeConfig.kHeight40,
                                      width: SizeConfig.kHeight40,
                                    ),
                                  ),
                                  Tab(
                                    text: "Cheese",
                                    icon: Image.asset(
                                      ImagePath.biryani,
                                      height: SizeConfig.kHeight40,
                                      width: SizeConfig.kHeight40,
                                    ),
                                  ),
                                  Tab(
                                      text: "Chickens",
                                      icon: Image.asset(
                                        ImagePath.sandwish,
                                        height: SizeConfig.kHeight40,
                                        width: SizeConfig.kHeight40,
                                      )),
                                  Tab(
                                    text: "Paneer",
                                    icon: Image.asset(
                                      ImagePath.thali,
                                      height: SizeConfig.kHeight40,
                                      width: SizeConfig.kHeight40,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: SizeConfig.kHeight30,
                          ),
                          PizzaWidget(),
                        ]))
              ],
            ),
          ),
        ));
  }
}
