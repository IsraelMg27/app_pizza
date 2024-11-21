// ignore_for_file: file_names

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/image_path.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/home_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/restaurant/widget/Pizza_detail_widget.dart';
import 'package:get/get.dart';

import '../../app_routes/app_routes.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../widget/dropdown.dart';
import '../widget/rating_bottomsheet.dart';
import '../widget/sort_bottomsheet.dart';

// ignore: must_be_immutable
class PizzaDetail extends StatelessWidget {
  PizzaDetail({Key? key}) : super(key: key);
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
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                            height: SizeConfig.kHeight400,
                            width: double.infinity,
                            child: Image.asset(
                              ImagePath.pizzaDetail,
                              fit: BoxFit.fill,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: SizeConfig.kHeight10,
                              left: SizeConfig.kHeight20,
                              right: SizeConfig.kHeight20),
                          child: Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Image.asset(
                                    ImagePath.arrow,
                                    height: SizeConfig.kHeight24,
                                    width: SizeConfig.kHeight24,
                                    color: ColorConfig.kWhiteColor,
                                  )),
                              const Spacer(),
                              Text(StringConfig.dPizza,
                                  style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    color: ColorConfig.kWhiteColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: FontConfig.kFontSize22,
                                  )),
                              const Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: ColorConfig.kWhiteColor,
                                size: SizeConfig.kHeight18,
                              ),
                              const SizedBox(
                                width: SizeConfig.kHeight16,
                              ),
                              Image.asset(
                                ImagePath.search,
                                height: SizeConfig.kHeight20,
                                width: SizeConfig.kHeight20,
                                color: ColorConfig.kWhiteColor,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: SizeConfig.kHeight20,
                        ),
                        ListTile(
                            leading: Text(StringConfig.dPizza,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize22,
                                )),
                            trailing: GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.overViewScreen);
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: ColorConfig.kPrimaryColor,
                                  size: SizeConfig.kHeight20,
                                ))),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: SizeConfig.kHeight20),
                          child: Divider(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kDarkModeDividerColor
                                : ColorConfig.kDarkModeDividerColor
                                    .withOpacity(.3),
                            thickness: SizeConfig.kHeight1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: SizeConfig.kHeight20,
                              vertical: SizeConfig.kHeight10),
                          child: Row(
                            children: [
                              Image.asset(
                                ImagePath.star,
                                height: SizeConfig.kHeight20,
                                width: SizeConfig.kHeight20,
                              ),
                              Text('  4.9  ',
                                  style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: FontConfig.kFontSize22,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: SizeConfig.kHeight7),
                                child: Text('(4,959 reviews)  ',
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kHintColor
                                              : ColorConfig.kDividerColor
                                                  .withOpacity(.8),
                                      fontWeight: FontWeight.w500,
                                      fontSize: FontConfig.kFontSize13,
                                    )),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.ratingReview);
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: ColorConfig.kPrimaryColor,
                                  size: SizeConfig.kHeight20,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: SizeConfig.kHeight20),
                          child: Divider(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kDarkModeDividerColor
                                : ColorConfig.kDarkModeDividerColor
                                    .withOpacity(.3),
                            thickness: SizeConfig.kHeight1,
                          ),
                        ),
                        const SizedBox(
                          height: SizeConfig.kHeight5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: SizeConfig.kHeight20,
                              vertical: SizeConfig.kHeight5),
                          child: Row(
                            children: [
                              Image.asset(
                                ImagePath.mapPoint,
                                height: SizeConfig.kHeight15,
                                width: SizeConfig.kHeight15,
                                color: ColorConfig.kPrimaryColor,
                              ),
                              Text('   800m',
                                  style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: FontConfig.kFontSize16,
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: SizeConfig.kHeight20,
                              vertical: SizeConfig.kHeight5),
                          child: IntrinsicHeight(
                            child: Row(
                              children: [
                                Text(StringConfig.deliveryNow,
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: FontConfig.kFontSize12,
                                    )),
                                VerticalDivider(
                                  thickness: SizeConfig.kHeight1,
                                  endIndent: SizeConfig.kHeight2,
                                  indent: SizeConfig.kHeight2,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kDarkModeDividerColor
                                      : ColorConfig.kDarkModeDividerColor
                                          .withOpacity(.3),
                                ),
                                Text(StringConfig.dollar2,
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: FontConfig.kFontSize12,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: SizeConfig.kHeight8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: SizeConfig.kHeight20),
                          child: Divider(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kDarkModeDividerColor
                                : ColorConfig.kDarkModeDividerColor
                                    .withOpacity(.3),
                            thickness: SizeConfig.kHeight1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: SizeConfig.kHeight20,
                              vertical: SizeConfig.kHeight10),
                          child: Row(
                            children: [
                              Image.asset(
                                ImagePath.sale,
                                height: SizeConfig.kHeight20,
                                width: SizeConfig.kHeight20,
                              ),
                              Text(StringConfig.offersAreAvailable,
                                  style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: FontConfig.kFontSize16,
                                  )),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.offers);
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: ColorConfig.kPrimaryColor,
                                  size: SizeConfig.kHeight20,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: SizeConfig.kHeight20),
                          child: Divider(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kDarkModeDividerColor
                                : ColorConfig.kDarkModeDividerColor
                                    .withOpacity(.3),
                            thickness: SizeConfig.kHeight1,
                          ),
                        ),
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
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig.kFillColor
                                                : ColorConfig.kDarkModeColor,
                                            borderRadius: BorderRadius.circular(
                                                SizeConfig.borderRadius5)),
                                        height: SizeConfig.kHeight32,
                                        width: SizeConfig.kHeight86,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                                  fontFamily: FontFamilyConfig
                                                      .urbanistMedium,
                                                  color: darkModeController
                                                          .isLightTheme.value
                                                      ? ColorConfig.kBlackColor
                                                      : ColorConfig.kWhiteColor,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize:
                                                      FontConfig.kFontSize12,
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
                                    Obx(
                                      () => DropdownButtonHideUnderline(
                                        child: DropdownButton2<String>(
                                          items: addDividersAfterItems(items),
                                          value: homeController
                                              .dropDownValue.value,
                                          onChanged: (String? value) {
                                            homeController.dropDownValue.value =
                                                value!;
                                          },
                                          buttonStyleData: ButtonStyleData(
                                            decoration: BoxDecoration(
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kFillColor
                                                    : ColorConfig
                                                        .kDarkModeColor,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        SizeConfig
                                                            .borderRadius5)),
                                            height: SizeConfig.kHeight32,
                                            width: SizeConfig.kHeight94,
                                          ),
                                          style: TextStyle(
                                            color: darkModeController
                                                    .isLightTheme.value
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
                                                    : ColorConfig
                                                        .kDarkModeColor,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        SizeConfig
                                                            .borderRadius10)),
                                          ),
                                          menuItemStyleData: MenuItemStyleData(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal:
                                                    SizeConfig.kHeight8),
                                            customHeights:
                                                getCustomItemsHeights(),
                                          ),
                                          iconStyleData: IconStyleData(
                                            iconEnabledColor: darkModeController
                                                    .isLightTheme.value
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
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig.kFillColor
                                                : ColorConfig.kDarkModeColor,
                                            borderRadius: BorderRadius.circular(
                                                SizeConfig.borderRadius5)),
                                        height: SizeConfig.kHeight32,
                                        width: SizeConfig.kHeight86,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(StringConfig.ratings,
                                                style: TextStyle(
                                                  fontFamily: FontFamilyConfig
                                                      .urbanistMedium,
                                                  color: darkModeController
                                                          .isLightTheme.value
                                                      ? ColorConfig.kBlackColor
                                                      : ColorConfig.kWhiteColor,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize:
                                                      FontConfig.kFontSize12,
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
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: SizeConfig.kHeight20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: SizeConfig.kHeight20),
                          child: Text(StringConfig.forYou,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistSemiBold,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                                fontWeight: FontWeight.w600,
                                fontSize: FontConfig.kFontSize18,
                              )),
                        ),
                        const SizedBox(
                          height: SizeConfig.kHeight20,
                        ),
                        PizzaDetailWidget(homeController: homeController),
                      ],
                    )
                  ],
                ),
              )),
        ));
  }
}
