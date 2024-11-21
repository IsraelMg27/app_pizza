import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/setting_controller.dart';
import 'package:get/get.dart';

import '../../app_routes/app_routes.dart';
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
class Restaurant extends StatelessWidget {
  Restaurant({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  DarkModeController darkModeController = Get.put(DarkModeController());
  final SettingController settingController = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: darkModeController.isLightTheme.value
              ? ColorConfig.kWhiteColor
              : ColorConfig.kBlackColor,
          body: Column(
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
                                    color: darkModeController.isLightTheme.value
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
                                    color: darkModeController.isLightTheme.value
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
                          Obx(
                            () => !homeController.isSort.value
                                ? GestureDetector(
                                    onTap: () {
                                      cuisinesBottomSheet(context);
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
                                          Text(StringConfig.cuisines,
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
                                : Container(
                                    decoration: BoxDecoration(
                                        color: ColorConfig.kPrimaryColor,
                                        borderRadius: BorderRadius.circular(
                                            SizeConfig.borderRadius5)),
                                    height: SizeConfig.kHeight32,
                                    width: SizeConfig.kHeight86,
                                    child: GestureDetector(
                                      onTap: () {
                                        homeController.isSort.value = false;
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(StringConfig.cuisines,
                                              style: TextStyle(
                                                fontFamily: FontFamilyConfig
                                                    .urbanistMedium,
                                                color: ColorConfig.kWhiteColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize:
                                                    FontConfig.kFontSize12,
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
                                      color:
                                          darkModeController.isLightTheme.value
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
                                      color:
                                          darkModeController.isLightTheme.value
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
                                    color: darkModeController.isLightTheme.value
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
                                    color: darkModeController.isLightTheme.value
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
                height: SizeConfig.kHeight15,
              ),
              DefaultTabController(
                  length: 5,
                  child: Expanded(
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
                                        width: 1.5)),
                              ),
                              child: TabBar(
                                tabAlignment: TabAlignment.center,
                                isScrollable: true,
                                padding: EdgeInsets.zero,
                                indicatorColor: ColorConfig.kPrimaryColor,
                                indicatorWeight: 1.5,
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
                            height: SizeConfig.kHeight20,
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount:
                                    homeController.restaurantLists.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Get.toNamed(AppRoutes.pizzaDetail);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: SizeConfig.kHeight10,
                                          horizontal: SizeConfig.kHeight20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              SizeConfig.borderRadius12),
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kWhiteColor
                                              : ColorConfig.kDarkModeColor,
                                          boxShadow: [
                                            BoxShadow(
                                                color: ColorConfig.kBlackColor
                                                    .withOpacity(
                                                        SizeConfig.kH02),
                                                blurRadius:
                                                    SizeConfig.borderRadius6,
                                                offset: const Offset(
                                                    SizeConfig.kHeight0,
                                                    SizeConfig.kHeight0)),
                                          ],
                                        ),
                                        height: SizeConfig.kHeight130,
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: SizeConfig
                                                              .kHeight12,
                                                          right: SizeConfig
                                                              .kHeight12,
                                                          top: SizeConfig
                                                              .kHeight15),
                                                  child: Image.asset(
                                                    homeController
                                                            .restaurantLists[
                                                                index]
                                                            .image ??
                                                        "",
                                                    fit: BoxFit.fill,
                                                    height:
                                                        SizeConfig.kHeight100,
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: SizeConfig
                                                                  .kHeight25),
                                                      child: Row(
                                                        children: [
                                                          Image.asset(
                                                            homeController
                                                                    .restaurantLists[
                                                                        index]
                                                                    .veg ??
                                                                "",
                                                            height: SizeConfig
                                                                .kHeight10,
                                                            width: SizeConfig
                                                                .kHeight10,
                                                          ),
                                                          const SizedBox(
                                                            width: SizeConfig
                                                                .kHeight10,
                                                          ),
                                                          SizedBox(
                                                            width: 120,
                                                            child: Text(
                                                                homeController
                                                                        .restaurantLists[
                                                                            index]
                                                                        .name ??
                                                                    "",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      FontFamilyConfig
                                                                          .urbanistSemiBold,
                                                                  color: darkModeController
                                                                          .isLightTheme
                                                                          .value
                                                                      ? ColorConfig
                                                                          .kBlackColor
                                                                      : ColorConfig
                                                                          .kWhiteColor,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      FontConfig
                                                                          .kFontSize16,
                                                                )),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: SizeConfig
                                                                  .kHeight15),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                              homeController
                                                                      .restaurantLists[
                                                                          index]
                                                                      .name1 ??
                                                                  "",
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    FontFamilyConfig
                                                                        .urbanistRegular,
                                                                color: darkModeController
                                                                        .isLightTheme
                                                                        .value
                                                                    ? ColorConfig
                                                                        .kBlackColor
                                                                    : ColorConfig
                                                                        .kWhiteColor,
                                                                fontSize: FontConfig
                                                                    .kFontSize12,
                                                              )),
                                                          const SizedBox(
                                                            width: SizeConfig
                                                                .kHeight5,
                                                          ),
                                                          Container(
                                                            height: SizeConfig
                                                                .kHeight5,
                                                            width: SizeConfig
                                                                .kHeight5,
                                                            decoration: BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: ColorConfig
                                                                    .kPrimaryColor),
                                                          ),
                                                          const SizedBox(
                                                            width: SizeConfig
                                                                .kHeight5,
                                                          ),
                                                          Text(
                                                              homeController
                                                                      .restaurantLists[
                                                                          index]
                                                                      .name2 ??
                                                                  "",
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    FontFamilyConfig
                                                                        .urbanistRegular,
                                                                color: darkModeController
                                                                        .isLightTheme
                                                                        .value
                                                                    ? ColorConfig
                                                                        .kBlackColor
                                                                    : ColorConfig
                                                                        .kWhiteColor,
                                                                fontSize: FontConfig
                                                                    .kFontSize12,
                                                              )),
                                                          const SizedBox(
                                                            width: SizeConfig
                                                                .kHeight5,
                                                          ),
                                                          Container(
                                                            height: SizeConfig
                                                                .kHeight5,
                                                            width: SizeConfig
                                                                .kHeight5,
                                                            decoration: BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: ColorConfig
                                                                    .kPrimaryColor),
                                                          ),
                                                          const SizedBox(
                                                            width: SizeConfig
                                                                .kHeight5,
                                                          ),
                                                          SizedBox(
                                                            width: 35,
                                                            child: Text(
                                                                homeController
                                                                        .restaurantLists[
                                                                            index]
                                                                        .name3 ??
                                                                    "",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      FontFamilyConfig
                                                                          .urbanistRegular,
                                                                  color: darkModeController
                                                                          .isLightTheme
                                                                          .value
                                                                      ? ColorConfig
                                                                          .kBlackColor
                                                                      : ColorConfig
                                                                          .kWhiteColor,
                                                                  fontSize:
                                                                      FontConfig
                                                                          .kFontSize12,
                                                                )),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: SizeConfig
                                                                  .kHeight15),
                                                      child: IntrinsicHeight(
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                                StringConfig.km,
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      FontFamilyConfig
                                                                          .urbanistRegular,
                                                                  color: darkModeController
                                                                          .isLightTheme
                                                                          .value
                                                                      ? ColorConfig
                                                                          .kBlackColor
                                                                      : ColorConfig
                                                                          .kWhiteColor,
                                                                  fontSize:
                                                                      FontConfig
                                                                          .kFontSize12,
                                                                )),
                                                            const SizedBox(
                                                              width: SizeConfig
                                                                  .kHeight5,
                                                            ),
                                                            VerticalDivider(
                                                              width: SizeConfig
                                                                  .kHeight5,
                                                              endIndent: 2,
                                                              indent: 2,
                                                              thickness:
                                                                  SizeConfig
                                                                      .kHeight1,
                                                              color: ColorConfig
                                                                  .kHintColor,
                                                            ),
                                                            const SizedBox(
                                                              width: SizeConfig
                                                                  .kHeight5,
                                                            ),
                                                            Image.asset(
                                                              ImagePath.star,
                                                              height: SizeConfig
                                                                  .kHeight15,
                                                              width: SizeConfig
                                                                  .kHeight15,
                                                            ),
                                                            const SizedBox(
                                                              width: SizeConfig
                                                                  .kHeight5,
                                                            ),
                                                            Text(
                                                              StringConfig
                                                                  .reviews,
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    FontFamilyConfig
                                                                        .urbanistRegular,
                                                                color: darkModeController
                                                                        .isLightTheme
                                                                        .value
                                                                    ? ColorConfig
                                                                        .kBlackColor
                                                                    : ColorConfig
                                                                        .kWhiteColor,
                                                                fontSize: FontConfig
                                                                    .kFontSize10,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Obx(
                                              () => Padding(
                                                padding: EdgeInsets.only(
                                                    top: SizeConfig.kHeight25,
                                                    right: settingController
                                                            .arb.value
                                                        ? 0
                                                        : SizeConfig.kHeight12,
                                                    left: settingController
                                                            .arb.value
                                                        ? SizeConfig.kHeight12
                                                        : 0),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    homeController
                                                            .internationalTripIndex[
                                                        index] = !homeController
                                                            .internationalTripIndex[
                                                        index];
                                                  },
                                                  child: Obx(
                                                    () => Image.asset(
                                                      homeController
                                                                  .internationalTripIndex[
                                                              index]
                                                          ? ImagePath.heart
                                                          : ImagePath.fillHeart,
                                                      height:
                                                          SizeConfig.kHeight16,
                                                      width:
                                                          SizeConfig.kHeight16,
                                                      color: ColorConfig
                                                          .kPrimaryColor,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                          const SizedBox(
                            height: SizeConfig.kHeight20,
                          ),
                        ]),
                  ))
            ],
          ),
        ));
  }
}
