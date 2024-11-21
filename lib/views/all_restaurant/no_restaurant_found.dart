import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../controller/home_controller.dart';
import '../widget/cuisine_bottomsheet.dart';
import '../widget/dropdown.dart';
import '../widget/rating_bottomsheet.dart';
import '../widget/sort_bottomsheet.dart';

// ignore: must_be_immutable
class NoRestaurantFound extends StatelessWidget {
  NoRestaurantFound({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => SafeArea(
          child: Scaffold(
            backgroundColor: darkModeController.isLightTheme.value
                ? ColorConfig.kWhiteColor
                : ColorConfig.kBlackColor,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: SizeConfig.kHeight20,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: SizeConfig.kHeight100,
                      child: Row(
                        children: [
                          GestureDetector(
                            child: Image.asset(
                              ImagePath.arrow,
                              height: SizeConfig.kHeight24,
                              width: SizeConfig.kHeight24,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                            ),
                            onTap: () {
                              Get.back();
                            },
                          ),
                          const SizedBox(
                            width: SizeConfig.kHeight16,
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: homeController.searchController,
                              cursorColor: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              style: TextStyle(
                                  color: ColorConfig.kPrimaryColor,
                                  height: 0.8),
                              validator: (value) {
                                if (value!.isNotEmpty) {
                                  return '';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  isDense: true,
                                  prefixIcon: Icon(
                                    CupertinoIcons.search,
                                    color: ColorConfig.kPrimaryColor,
                                    size: SizeConfig.kHeight15,
                                  ),
                                  fillColor:
                                      darkModeController.isLightTheme.value
                                          ? ColorConfig.kButtonLightColor
                                          : ColorConfig.kDarkDialougeColor,
                                  filled: true,
                                  hintText: StringConfig.dsdfdffdf,
                                  hintStyle: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    color: ColorConfig.kPrimaryColor,
                                    fontWeight: FontWeight.w300,
                                    fontSize: FontConfig.kFontSize14,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                            SizeConfig.borderRadius10)),
                                    borderSide: BorderSide(
                                        style: BorderStyle.solid,
                                        color: ColorConfig.kPrimaryColor),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.borderRadius12),
                                    borderSide: BorderSide(
                                        style: BorderStyle.solid,
                                        color: ColorConfig.kPrimaryColor),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.borderRadius12),
                                    borderSide: BorderSide(
                                        style: BorderStyle.solid,
                                        color: ColorConfig.kPrimaryColor),
                                    // borderSide: BorderSide(
                                    //   color: ColorConfig.kHintColor,
                                    // ),
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      homeController.searchController.clear();
                                    },
                                    child: Icon(
                                      Icons.close_outlined,
                                      color: ColorConfig.kPrimaryColor,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  sortBottomSheet(context);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kFillColor
                                              : ColorConfig.kDarkModeColor,
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.borderRadius5)),
                                  height: SizeConfig.kHeight32,
                                  width: SizeConfig.kHeight86,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        ImagePath.short,
                                        height: SizeConfig.kHeight12,
                                        width: SizeConfig.kHeight12,
                                        color: darkModeController
                                                .isLightTheme.value
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
                                        color: darkModeController
                                                .isLightTheme.value
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
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kFillColor
                                              : ColorConfig.kDarkModeColor,
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.borderRadius5)),
                                  height: SizeConfig.kHeight32,
                                  width: SizeConfig.kHeight86,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                        color: darkModeController
                                                .isLightTheme.value
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
                                      homeController.dropDownValue.value =
                                          value!;
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
                                    dropdownStyleData: DropdownStyleData(
                                      maxHeight: SizeConfig.kHeight80,
                                      width: SizeConfig.kHeight120,
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
                                        color: darkModeController
                                                .isLightTheme.value
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
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kFillColor
                                              : ColorConfig.kDarkModeColor,
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.borderRadius5)),
                                  height: SizeConfig.kHeight32,
                                  width: SizeConfig.kHeight86,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: SizeConfig.kHeight50,
                          bottom: SizeConfig.kHeight50),
                      child: Image.asset(
                        darkModeController.isLightTheme.value
                            ? ImagePath.noFound
                            : ImagePath.darkManSearch,
                      ),
                    ),
                    Text(StringConfig.notFound,
                        style: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: FontConfig.kFontSize22,
                        )),
                    const SizedBox(
                      height: SizeConfig.kHeight10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: SizeConfig.kHeight30),
                      child: Text(StringConfig.sorryTheKeyword,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize14,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
