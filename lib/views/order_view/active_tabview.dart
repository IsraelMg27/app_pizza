// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/app_routes/app_routes.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/image_path.dart';
import 'package:get/get.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../controller/dark_mode_controller.dart';
import '../../controller/home_controller.dart';
import '../widget/cancel_order_bottomsheet.dart';

class ActiveTabView extends StatelessWidget {
  ActiveTabView({Key? key}) : super(key: key);
  HomeController activeController = Get.put(HomeController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: SizeConfig.kHeight20,
        right: SizeConfig.kHeight20,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kBlackColor
                    : ColorConfig.kWhiteColor,
                fontFamily: FontFamilyConfig.urbanistMedium,
                fontWeight: FontWeight.w500,
                fontSize: FontConfig.kFontSize14,
              ),
              decoration: InputDecoration(
                hintText: StringConfig.searchRestaurantAndDishes,
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(SizeConfig.borderRadius8),
                ),
                hintStyle: TextStyle(
                  fontFamily: FontFamilyConfig.urbanistMedium,
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kTextfieldTextColor
                      : ColorConfig.kWhiteColor,
                  fontWeight: FontWeight.w500,
                  fontSize: FontConfig.kFontSize14,
                ),
                contentPadding: const EdgeInsets.only(
                  left: SizeConfig.padding10,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                      left: SizeConfig.padding10, right: SizeConfig.padding10),
                  child: Image(
                    image: const AssetImage(ImagePath.search),
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kTextfieldTextColor
                        : ColorConfig.kWhiteColor,
                  ),
                ),
                prefixIconConstraints: const BoxConstraints(
                  maxWidth: SizeConfig.kHeight38,
                ),
                filled: true,
                fillColor: darkModeController.isLightTheme.value
                    ? ColorConfig.kFillColor
                    : ColorConfig.kDarkModeColor,
              ),
            ),
            const SizedBox(
              height: SizeConfig.kHeight20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeConfig.borderRadius12),
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kWhiteColor
                    : ColorConfig.kDarkModeColor,
                boxShadow: [
                  BoxShadow(
                      color:
                          ColorConfig.kBlackColor.withOpacity(SizeConfig.kH02),
                      blurRadius: SizeConfig.borderRadius6,
                      offset: const Offset(
                          SizeConfig.kHeight0, SizeConfig.kHeight0)),
                ],
              ),
              height: MediaQuery.of(context).size.height / 3.6,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: SizeConfig.kHeight10,
                    right: SizeConfig.kHeight12,
                    top: SizeConfig.kHeight10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: SizeConfig.kHeight45,
                          child: Image.asset(
                            ImagePath.dPizzaSquare,
                            fit: BoxFit.fill,
                            height: SizeConfig.kHeight40,
                            width: SizeConfig.kHeight45,
                          ),
                        ),
                        const SizedBox(
                          width: SizeConfig.kHeight10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfig.dPizza,
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: FontConfig.kFontSize16,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(AppRoutes.pizzaDetail);
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          StringConfig.viewMenu,
                                          style: TextStyle(
                                            fontFamily: FontFamilyConfig
                                                .urbanistSemiBold,
                                            color: ColorConfig.kPrimaryColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: FontConfig.kFontSize10,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: ColorConfig.kPrimaryColor,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: SizeConfig.kHeight4),
                              Text(
                                StringConfig.dPizzaAddressNew,
                                style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontSize: FontConfig.kFontSize12,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: SizeConfig.kHeight12),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: SizeConfig.kHeight1,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kDarkModeDividerColor
                          : ColorConfig.kDarkModeDividerColor.withOpacity(.3),
                    ),
                    const SizedBox(
                      height: SizeConfig.kHeight8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Image.asset(
                                ImagePath.veg,
                                fit: BoxFit.fill,
                                width: SizeConfig.kHeight12,
                              ),
                              const SizedBox(
                                width: SizeConfig.kHeight5,
                              ),
                              Text(
                                StringConfig.pizza2x,
                                style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kTextfieldTextColor
                                        : ColorConfig.kWhiteColor,
                                    fontSize: FontConfig.kFontSize12,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: SizeConfig.kHeight3,
                              ),
                              Text(
                                StringConfig.farmVillaPizza,
                                style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontSize: FontConfig.kFontSize12,
                                    fontWeight: FontWeight.w400),
                              ),
                              VerticalDivider(
                                endIndent: 3,
                                indent: 3,
                                width: SizeConfig.kHeight13,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kDarkModeDividerColor
                                    : ColorConfig.kDarkModeDividerColor
                                        .withOpacity(.3),
                              ),
                              Text(
                                StringConfig.mediumInches,
                                style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kTextfieldTextColor
                                        : ColorConfig.kWhiteColor,
                                    fontSize: FontConfig.kFontSize12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          StringConfig.mins22,
                          style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistRegular,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kTextfieldTextColor
                                  : ColorConfig.kWhiteColor,
                              fontSize: FontConfig.kFontSize10,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Divider(
                      height: SizeConfig.kHeight18,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kDarkModeDividerColor
                          : ColorConfig.kDarkModeDividerColor.withOpacity(.3),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          StringConfig.deliveryTiming,
                          style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistRegular,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kTextfieldTextColor
                                  : ColorConfig.kWhiteColor,
                              fontSize: FontConfig.kFontSize12,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          StringConfig.dollor78,
                          style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistRegular,
                              color: ColorConfig.kPrimaryColor,
                              fontSize: FontConfig.kFontSize14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Divider(
                      height: SizeConfig.kHeight20,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kDarkModeDividerColor
                          : ColorConfig.kDarkModeDividerColor.withOpacity(.3),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            cancelOrderBottomSheet(context);
                          },
                          child: Container(
                            height: SizeConfig.kHeight32,
                            width: MediaQuery.of(context).size.width /
                                SizeConfig.kH27,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(SizeConfig.kHeight50),
                                border: Border.all(
                                    color: ColorConfig.kPrimaryColor,
                                    width: SizeConfig.kH15)),
                            child: Center(
                              child: Text(
                                StringConfig.cancelOrder,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: ColorConfig.kPrimaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize13,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.trackOrderView);
                          },
                          child: Container(
                            height: SizeConfig.kHeight32,
                            width: MediaQuery.of(context).size.width /
                                SizeConfig.kH27,
                            decoration: BoxDecoration(
                                color: ColorConfig.kPrimaryColor,
                                borderRadius:
                                    BorderRadius.circular(SizeConfig.kHeight50),
                                border: Border.all(
                                    color: ColorConfig.kPrimaryColor,
                                    width: SizeConfig.kH15)),
                            child: Center(
                              child: Text(
                                StringConfig.trackOrder,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize13,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: SizeConfig.kHeight24,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeConfig.borderRadius12),
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kWhiteColor
                    : ColorConfig.kDarkModeColor,
                boxShadow: [
                  BoxShadow(
                      color:
                          ColorConfig.kBlackColor.withOpacity(SizeConfig.kH02),
                      blurRadius: SizeConfig.borderRadius6,
                      offset: const Offset(
                          SizeConfig.kHeight0, SizeConfig.kHeight0)),
                ],
              ),
              height: MediaQuery.of(context).size.height / 3.2,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: SizeConfig.kHeight10,
                    right: SizeConfig.kHeight12,
                    top: SizeConfig.kHeight10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: SizeConfig.kHeight45,
                          child: Image.asset(
                            ImagePath.dPizzaSquare,
                            fit: BoxFit.fill,
                            height: SizeConfig.kHeight40,
                            width: SizeConfig.kHeight45,
                          ),
                        ),
                        const SizedBox(
                          width: SizeConfig.kHeight10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfig.dPizza,
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: FontConfig.kFontSize16,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(AppRoutes.pizzaDetail);
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          StringConfig.viewMenu,
                                          style: TextStyle(
                                            fontFamily: FontFamilyConfig
                                                .urbanistSemiBold,
                                            color: ColorConfig.kPrimaryColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: FontConfig.kFontSize10,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: ColorConfig.kPrimaryColor,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: SizeConfig.kHeight4),
                              Text(
                                StringConfig.dPizzaAddressNew,
                                style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontSize: FontConfig.kFontSize12,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: SizeConfig.kHeight12),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      height: SizeConfig.kHeight1,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kDarkModeDividerColor
                          : ColorConfig.kDarkModeDividerColor.withOpacity(.3),
                    ),
                    const SizedBox(
                      height: SizeConfig.kHeight8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IntrinsicHeight(
                              child: Row(
                                children: [
                                  Image.asset(
                                    ImagePath.veg,
                                    fit: BoxFit.fill,
                                    width: SizeConfig.kHeight12,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight5,
                                  ),
                                  Text(
                                    StringConfig.pizza2x,
                                    style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistRegular,
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kTextfieldTextColor
                                            : ColorConfig.kWhiteColor,
                                        fontSize: FontConfig.kFontSize12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight3,
                                  ),
                                  Text(
                                    StringConfig.farmVillaPizza,
                                    style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistSemiBold,
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                        fontSize: FontConfig.kFontSize12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  VerticalDivider(
                                    endIndent: 3,
                                    indent: 3,
                                    width: SizeConfig.kHeight13,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kDarkModeDividerColor
                                        : ColorConfig.kDarkModeDividerColor
                                            .withOpacity(.3),
                                  ),
                                  Text(
                                    StringConfig.mediumInches,
                                    style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistRegular,
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kTextfieldTextColor
                                            : ColorConfig.kWhiteColor,
                                        fontSize: FontConfig.kFontSize12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              StringConfig.mins22,
                              style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistRegular,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kTextfieldTextColor
                                      : ColorConfig.kWhiteColor,
                                  fontSize: FontConfig.kFontSize10,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: SizeConfig.kHeight5,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              ImagePath.veg,
                              fit: BoxFit.fill,
                              width: SizeConfig.kHeight12,
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight5,
                            ),
                            Text(
                              StringConfig.pizza2x,
                              style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistRegular,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kTextfieldTextColor
                                      : ColorConfig.kWhiteColor,
                                  fontSize: FontConfig.kFontSize12,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight3,
                            ),
                            Text(
                              StringConfig.coco,
                              style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontSize: FontConfig.kFontSize12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: SizeConfig.kHeight18,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kDarkModeDividerColor
                          : ColorConfig.kDarkModeDividerColor.withOpacity(.3),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          StringConfig.deliveryTiming,
                          style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistRegular,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kTextfieldTextColor
                                  : ColorConfig.kWhiteColor,
                              fontSize: FontConfig.kFontSize12,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          StringConfig.dollor78,
                          style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistRegular,
                              color: ColorConfig.kPrimaryColor,
                              fontSize: FontConfig.kFontSize14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Divider(
                      height: SizeConfig.kHeight20,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kDarkModeDividerColor
                          : ColorConfig.kDarkModeDividerColor.withOpacity(.3),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            cancelOrderBottomSheet(context);
                          },
                          child: Container(
                            height: SizeConfig.kHeight32,
                            width: MediaQuery.of(context).size.width /
                                SizeConfig.kH27,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(SizeConfig.kHeight50),
                                border: Border.all(
                                    color: ColorConfig.kPrimaryColor,
                                    width: SizeConfig.kH15)),
                            child: Center(
                              child: Text(
                                StringConfig.cancelOrder,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: ColorConfig.kPrimaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize13,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.trackOrderView);
                          },
                          child: Container(
                            height: SizeConfig.kHeight32,
                            width: MediaQuery.of(context).size.width /
                                SizeConfig.kH27,
                            decoration: BoxDecoration(
                                color: ColorConfig.kPrimaryColor,
                                borderRadius:
                                    BorderRadius.circular(SizeConfig.kHeight50),
                                border: Border.all(
                                    color: ColorConfig.kPrimaryColor,
                                    width: SizeConfig.kH15)),
                            child: Center(
                              child: Text(
                                StringConfig.trackOrders,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize13,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
