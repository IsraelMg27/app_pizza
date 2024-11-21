import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/size_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/setting_controller.dart';
import 'package:get/get.dart';
import '../../app_routes/app_routes.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/string_config.dart';
import '../../controller/home_controller.dart';
import '../widget/cuisine_bottomsheet.dart';
import '../widget/dropdown.dart';
import '../widget/rating_bottomsheet.dart';
import '../widget/sort_bottomsheet.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = PageController();
  HomeController homeController = Get.put(HomeController());
  DarkModeController darkModeController = Get.put(DarkModeController());
  final SettingController settingController = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    settingController.loadSelectedLanguage();
    return SafeArea(
        child: Obx(() => Scaffold(
            backgroundColor: darkModeController.isLightTheme.value
                ? ColorConfig.kWhiteColor
                : ColorConfig.kBlackColor,
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const SizedBox(
                    height: SizeConfig.kHeight26,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: SizeConfig.kHeight20,
                        right: SizeConfig.kHeight12),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  StringConfig.currentLocation,
                                  style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kHintColor
                                        : ColorConfig.kDarkModeDividerColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: FontConfig.kFontSize12,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kHintColor
                                      : ColorConfig.kDarkModeDividerColor,
                                  size: SizeConfig.kHeight19,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: SizeConfig.kHeight2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  ImagePath.mapPoint,
                                  height: SizeConfig.kHeight16,
                                  width: SizeConfig.kHeight16,
                                  color: ColorConfig.kPrimaryColor,
                                ),
                                const SizedBox(
                                  width: SizeConfig.kHeight5,
                                ),
                                Text(
                                  StringConfig.address,
                                  style: TextStyle(
                                    fontFamily: FontFamilyConfig.urbanistMedium,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: FontConfig.kFontSize16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.notificationHomeScreen);
                          },
                          child: Image.asset(
                            darkModeController.isLightTheme.value
                                ? ImagePath.notification
                                : ImagePath.notificationDark,
                            height: SizeConfig.kHeight50,
                            width: SizeConfig.kHeight50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConfig.kHeight20),
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
                              ? ColorConfig.kHintColor.withOpacity(.6)
                              : ColorConfig.kWhiteColor,
                        ),
                        fillColor: darkModeController.isLightTheme.value
                            ? ColorConfig.kFillColor
                            : ColorConfig.kDarkModeColor,
                        filled: true,
                        hintText: StringConfig.search,
                        hintStyle: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistRegular,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kHintColor
                              : ColorConfig.kDarkModeDividerColor,
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
                  const SizedBox(height: SizeConfig.kHeight30),
                  _buildPagerView(),
                  const SizedBox(height: SizeConfig.kHeight6),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        homeController.carouselSliderList.length,
                        (int index) => buildDot(index: index),
                      ),
                    ),
                  ),
                  const SizedBox(height: SizeConfig.kHeight30),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConfig.kHeight20),
                    child: Text(StringConfig.categories,
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
                    height: SizeConfig.kHeight24,
                  ),
                  SizedBox(
                    height: SizeConfig.kHeight100,
                    child: ListView.builder(
                        itemCount: homeController.categoryList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: SizeConfig.kHeight20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: Image.asset(
                                    homeController.categoryList[index].image!,
                                    height: SizeConfig.kHeight60,
                                    width: SizeConfig.kHeight60,
                                  ),
                                  onTap: () {
                                    Get.toNamed(AppRoutes.pizzaRestaurants);
                                  },
                                ),
                                const SizedBox(
                                  height: SizeConfig.kHeight12,
                                ),
                                Text(
                                  homeController.categoryList[index].name!,
                                  style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: FontConfig.kFontSize14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight20,
                  ),
                  SizedBox(
                    height: SizeConfig.kHeight100,
                    child: ListView.builder(
                        itemCount: homeController.categoryList1.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: SizeConfig.kHeight20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  homeController.categoryList1[index].image!,
                                  height: SizeConfig.kHeight60,
                                  width: SizeConfig.kHeight60,
                                ),
                                const SizedBox(
                                  height: SizeConfig.kHeight12,
                                ),
                                Text(
                                  homeController.categoryList1[index].name!,
                                  style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: FontConfig.kFontSize14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConfig.kHeight20),
                    child: Row(
                      children: [
                        Text(StringConfig.allRestaurants,
                            style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: FontConfig.kFontSize18,
                            )),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.allRestaurant);
                          },
                          child: Text(StringConfig.seeAll,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistSemiBold,
                                color: ColorConfig.kPrimaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: FontConfig.kFontSize13,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight10,
                  ),
                  SizedBox(
                    height: 40,
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
                                width: 16,
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
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
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
                                    style: TextStyle(
                                      color:
                                          darkModeController.isLightTheme.value
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
                                width: 16,
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
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight10,
                  ),
                  SizedBox(
                    height: SizeConfig.kHeight910,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: homeController.restaurantLists.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: SizeConfig.kHeight20,
                                vertical: SizeConfig.kHeight10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.borderRadius12),
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kWhiteColor
                                    : ColorConfig.kDarkModeColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorConfig.kBlackColor
                                          .withOpacity(SizeConfig.kH02),
                                      blurRadius: SizeConfig.borderRadius6,
                                      offset: const Offset(SizeConfig.kHeight0,
                                          SizeConfig.kHeight0)),
                                ],
                              ),
                              height: SizeConfig.kHeight130,
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: SizeConfig.kHeight12,
                                            right: SizeConfig.kHeight12,
                                            top: SizeConfig.kHeight15),
                                        child: Image.asset(
                                          homeController.restaurantLists[index]
                                                  .image ??
                                              "",
                                          fit: BoxFit.fill,
                                          height: SizeConfig.kHeight100,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: SizeConfig.kHeight25),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  homeController
                                                          .restaurantLists[
                                                              index]
                                                          .veg ??
                                                      "",
                                                  height: SizeConfig.kHeight10,
                                                  width: SizeConfig.kHeight10,
                                                ),
                                                const SizedBox(
                                                  width: SizeConfig.kHeight10,
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
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
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
                                                            FontWeight.w600,
                                                        fontSize: FontConfig
                                                            .kFontSize16,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: SizeConfig.kHeight15),
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
                                                  width: SizeConfig.kHeight5,
                                                ),
                                                Container(
                                                  height: SizeConfig.kHeight5,
                                                  width: SizeConfig.kHeight5,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: ColorConfig
                                                          .kPrimaryColor),
                                                ),
                                                const SizedBox(
                                                  width: SizeConfig.kHeight5,
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
                                                  width: SizeConfig.kHeight5,
                                                ),
                                                Container(
                                                  height: SizeConfig.kHeight5,
                                                  width: SizeConfig.kHeight5,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: ColorConfig
                                                          .kPrimaryColor),
                                                ),
                                                const SizedBox(
                                                  width: SizeConfig.kHeight5,
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                  child: Text(
                                                      homeController
                                                              .restaurantLists[
                                                                  index]
                                                              .name3 ??
                                                          "",
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: SizeConfig.kHeight15),
                                            child: IntrinsicHeight(
                                              child: Row(
                                                children: [
                                                  Text(StringConfig.km,
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
                                                    width: SizeConfig.kHeight5,
                                                  ),
                                                  VerticalDivider(
                                                    thickness:
                                                        SizeConfig.kHeight1,
                                                    color:
                                                        ColorConfig.kHintColor,
                                                  ),
                                                  const SizedBox(
                                                    width: SizeConfig.kHeight5,
                                                  ),
                                                  Image.asset(
                                                    ImagePath.star,
                                                    height:
                                                        SizeConfig.kHeight15,
                                                    width: SizeConfig.kHeight15,
                                                  ),
                                                  const SizedBox(
                                                    width: SizeConfig.kHeight5,
                                                  ),
                                                  SizedBox(
                                                    width: 70,
                                                    child: Text(
                                                      StringConfig.reviews,
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
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: SizeConfig.kHeight5,
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
                                          right: settingController.arb.value
                                              ? 0
                                              : SizeConfig.kHeight12,
                                          left: settingController.arb.value
                                              ? SizeConfig.kHeight12
                                              : 0),
                                      child: GestureDetector(
                                        onTap: () {
                                          homeController.internationalTripIndex[
                                                  index] =
                                              !homeController
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
                                            height: SizeConfig.kHeight16,
                                            width: SizeConfig.kHeight16,
                                            color: ColorConfig.kPrimaryColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight20,
                  ),
                ])))));
  }

  buildDot({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: SizeConfig.kHeight3point),
      height: homeController.pageViewIndex.value == index
          ? SizeConfig.kHeight6
          : SizeConfig.kHeight8,
      width: homeController.pageViewIndex.value == index
          ? SizeConfig.kHeight16
          : SizeConfig.kHeight8,
      decoration: BoxDecoration(
        color: homeController.pageViewIndex.value == index
            ? ColorConfig.kPrimaryColor
            : ColorConfig.kButtonLightColor,
        borderRadius: BorderRadius.circular(SizeConfig.borderRadius20),
      ),
    );
  }

  _buildPagerView() {
    return SizedBox(
      height: SizeConfig.kHeight140,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SizeConfig.kHeight20),
        child: PageView.builder(
            itemCount: homeController.carouselSliderList.length,
            controller: controller,
            allowImplicitScrolling: true,
            onPageChanged: (value) {
              homeController.pageViewIndex.value = value;
            },
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: homeController.pageViewIndex.value == index
                        ? SizeConfig.kHeight0
                        : SizeConfig.kHeight8),
                child: Image.asset(
                  homeController.carouselSliderList[index].image ?? "",
                  fit: BoxFit.fill,
                ),
              );
            }),
      ),
    );
  }
}
