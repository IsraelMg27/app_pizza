// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:get/get.dart';

import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../controller/dark_mode_controller.dart';
import '../../utils/appbar_common.dart';
import '../../utils/common_material_button.dart';

class OrderSummaryView extends StatelessWidget {
  OrderSummaryView({Key? key}) : super(key: key);

  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkModeController.isLightTheme.value
          ? ColorConfig.kWhiteColor
          : ColorConfig.kBlackColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
        child: CommonAppBar(
          title: StringConfig.orderSummary,
          leadingImage: ImagePath.arrow,
          color: darkModeController.isLightTheme.value
              ? ColorConfig.kBlackColor
              : ColorConfig.kWhiteColor,
          leadingOnTap: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: SizeConfig.kHeight5,
          left: SizeConfig.kHeight15,
          right: SizeConfig.kHeight15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: SizeConfig.kHeight5,
                        right: SizeConfig.kHeight5,
                        top: SizeConfig.kHeight5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius12),
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kDarkModeColor,
                        boxShadow: [
                          BoxShadow(
                              color: ColorConfig.kBlackColor
                                  .withOpacity(SizeConfig.kH02),
                              blurRadius: SizeConfig.borderRadius6,
                              offset: const Offset(
                                  SizeConfig.kHeight0, SizeConfig.kHeight0)),
                        ],
                      ),
                      height: MediaQuery.of(context).size.height / 5,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      ImagePath.dPizzaSquare,
                                      fit: BoxFit.fill,
                                      height: SizeConfig.kHeight40,
                                      width: SizeConfig.kHeight45,
                                    ),
                                    const SizedBox(
                                      width: SizeConfig.kHeight10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              ImagePath.veg,
                                              fit: BoxFit.fill,
                                              width: SizeConfig.kHeight12,
                                            ),
                                            const SizedBox(
                                              width: SizeConfig.kHeight8,
                                            ),
                                            Text(
                                              StringConfig.dPizza,
                                              style: TextStyle(
                                                fontFamily: FontFamilyConfig
                                                    .urbanistSemiBold,
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kBlackColor
                                                    : ColorConfig.kWhiteColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize:
                                                    FontConfig.kFontSize16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                            height: SizeConfig.kHeight4),
                                        Text(
                                          StringConfig.dPizzaAddressNew,
                                          style: TextStyle(
                                              fontFamily: FontFamilyConfig
                                                  .urbanistRegular,
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kBlackColor
                                                  : ColorConfig.kWhiteColor,
                                              fontSize: FontConfig.kFontSize12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        const SizedBox(
                                            height: SizeConfig.kHeight12),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Divider(
                              height: SizeConfig.kHeight1,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kDarkModeDividerColor
                                  : ColorConfig.kDarkModeDividerColor
                                      .withOpacity(.3),
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
                                      Text(
                                        StringConfig.pizza2x,
                                        style: TextStyle(
                                            fontFamily: FontFamilyConfig
                                                .urbanistRegular,
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig
                                                    .kTextfieldTextColor
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
                                            fontFamily: FontFamilyConfig
                                                .urbanistSemiBold,
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
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kDarkModeDividerColor
                                            : ColorConfig.kFillColor,
                                      ),
                                      Text(
                                        StringConfig.mediumInches,
                                        style: TextStyle(
                                            fontFamily: FontFamilyConfig
                                                .urbanistRegular,
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig
                                                    .kTextfieldTextColor
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
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      color:
                                          darkModeController.isLightTheme.value
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
                                  : ColorConfig.kDarkModeDividerColor
                                      .withOpacity(.3),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  StringConfig.deliveryTiming,
                                  style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kTextfieldTextColor
                                              : ColorConfig.kWhiteColor,
                                      fontSize: FontConfig.kFontSize12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  StringConfig.dollor78,
                                  style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      color: ColorConfig.kPrimaryColor,
                                      fontSize: FontConfig.kFontSize14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.kHeight10, right: SizeConfig.kHeight10),
                    child: Image(
                      image: AssetImage(ImagePath.call),
                      width: SizeConfig.kHeight28,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: SizeConfig.kHeight24,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: SizeConfig.kHeight5, right: SizeConfig.kHeight5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(SizeConfig.borderRadius12),
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    boxShadow: [
                      BoxShadow(
                          color: ColorConfig.kBlackColor
                              .withOpacity(SizeConfig.kH02),
                          blurRadius: SizeConfig.borderRadius6,
                          offset: const Offset(
                              SizeConfig.kHeight0, SizeConfig.kHeight0)),
                    ],
                  ),
                  height: SizeConfig.kHeight49,
                  width: double.infinity,
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: SizeConfig.kHeight16,
                        ),
                        const Image(
                          image: AssetImage(ImagePath.star),
                          width: SizeConfig.kHeight15,
                        ),
                        const SizedBox(
                          width: SizeConfig.kHeight5,
                        ),
                        Text(
                          StringConfig.ratings45,
                          style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontSize: FontConfig.kFontSize14,
                              fontWeight: FontWeight.w400),
                        ),
                        VerticalDivider(
                          endIndent: 19,
                          indent: 19,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kDarkModeDividerColor
                              : ColorConfig.kFillColor,
                        ),
                        Text(
                          StringConfig.thankYouForRating,
                          style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontSize: FontConfig.kFontSize14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: SizeConfig.kHeight24,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: SizeConfig.kHeight5, right: SizeConfig.kHeight5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(SizeConfig.borderRadius12),
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    boxShadow: [
                      BoxShadow(
                          color: ColorConfig.kBlackColor
                              .withOpacity(SizeConfig.kH02),
                          blurRadius: SizeConfig.borderRadius6,
                          offset: const Offset(
                              SizeConfig.kHeight0, SizeConfig.kHeight0)),
                    ],
                  ),
                  height: SizeConfig.kHeight67,
                  width: double.infinity,
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: SizeConfig.kHeight16,
                        ),
                        const Image(
                          image: AssetImage(ImagePath.man1),
                          width: SizeConfig.kHeight26,
                        ),
                        const SizedBox(
                          width: SizeConfig.kHeight10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              StringConfig.prajapatiRakesh,
                              style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontSize: FontConfig.kFontSize14,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: SizeConfig.kHeight2,
                            ),
                            Text(
                              StringConfig.yourDeliveryPartner,
                              style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistMedium,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kTextfieldTextColor
                                      : ColorConfig.kDarkModeDividerColor,
                                  fontSize: FontConfig.kFontSize12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: SizeConfig.kHeight24,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: SizeConfig.kHeight5, right: SizeConfig.kHeight5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(SizeConfig.borderRadius12),
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    boxShadow: [
                      BoxShadow(
                          color: ColorConfig.kBlackColor
                              .withOpacity(SizeConfig.kH02),
                          blurRadius: SizeConfig.borderRadius6,
                          offset: const Offset(
                              SizeConfig.kHeight0, SizeConfig.kHeight0)),
                    ],
                  ),
                  height: SizeConfig.kHeight245,
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    left: SizeConfig.kHeight16,
                    right: SizeConfig.kHeight16,
                    top: SizeConfig.kHeight16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Image(
                            image: AssetImage(ImagePath.man2),
                            width: SizeConfig.kHeight26,
                          ),
                          const SizedBox(
                            width: SizeConfig.kHeight10,
                          ),
                          Text(
                            StringConfig.jhonQuill,
                            style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistSemiBold,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                                fontSize: FontConfig.kFontSize14,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Divider(
                        height: SizeConfig.kHeight20,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kDarkModeDividerColor
                            : ColorConfig.kDarkModeDividerColor.withOpacity(.3),
                      ),
                      Text(
                        StringConfig.orderNumber,
                        style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistMedium,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kTextfieldTextColor
                                : ColorConfig.kWhiteColor,
                            fontSize: FontConfig.kFontSize12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight2,
                      ),
                      Text(
                        StringConfig.orderInNumber,
                        style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistSemiBold,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontSize: FontConfig.kFontSize14,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight16,
                      ),
                      Text(
                        StringConfig.payment,
                        style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistMedium,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kTextfieldTextColor
                                : ColorConfig.kWhiteColor,
                            fontSize: FontConfig.kFontSize12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight2,
                      ),
                      Text(
                        StringConfig.usingUpi,
                        style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistSemiBold,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontSize: FontConfig.kFontSize14,
                            fontWeight: FontWeight.w500),
                      ),
                      Divider(
                        height: SizeConfig.kHeight20,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kDarkModeDividerColor
                            : ColorConfig.kDarkModeDividerColor.withOpacity(.3),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Image(
                            image: AssetImage(ImagePath.mapLocation),
                            width: SizeConfig.kHeight28,
                          ),
                          const SizedBox(
                            width: SizeConfig.kHeight8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: SizeConfig.kHeight250,
                                height: SizeConfig.kHeight19,
                                child: Text(
                                  StringConfig.home,
                                  style: TextStyle(
                                    fontSize: FontConfig.kFontSize14,
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    fontWeight: FontWeight.w600,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: SizeConfig.kHeight6,
                              ),
                              Text(
                                StringConfig.address1,
                                style: TextStyle(
                                  fontSize: FontConfig.kFontSize12,
                                  fontFamily: FontFamilyConfig.urbanistRegular,
                                  fontWeight: FontWeight.w500,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kHintColor
                                      : ColorConfig.kWhiteColor,
                                ),
                              ),
                            ],
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
              Padding(
                padding: const EdgeInsets.only(
                    left: SizeConfig.kHeight5,
                    right: SizeConfig.kHeight5,
                    bottom: SizeConfig.kHeight10),
                child: Container(
                  width: SizeConfig.kHeight335,
                  height: SizeConfig.kHeight158,
                  decoration: BoxDecoration(
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kWhiteColor
                        : ColorConfig.kDarkModeColor,
                    borderRadius:
                        BorderRadius.circular(SizeConfig.borderRadius12),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 3,
                        color: ColorConfig.kDarkDialougeColor.withOpacity(0.1),
                        blurRadius: 5,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(SizeConfig.padding16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              StringConfig.subtotal,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: FontConfig.kFontSize14,
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                fontWeight: FontWeight.w500,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                              ),
                            ),
                            Text(
                              StringConfig.dollar96,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: FontConfig.kFontSize14,
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                fontWeight: FontWeight.w500,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: SizeConfig.kHeight10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              StringConfig.deliveryFee,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: FontConfig.kFontSize14,
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                fontWeight: FontWeight.w500,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                              ),
                            ),
                            Text(
                              StringConfig.dollar2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: FontConfig.kFontSize14,
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                fontWeight: FontWeight.w500,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: SizeConfig.kHeight10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              StringConfig.discount,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: FontConfig.kFontSize14,
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                fontWeight: FontWeight.w500,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                              ),
                            ),
                            Text(
                              StringConfig.dollar0,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: FontConfig.kFontSize14,
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                fontWeight: FontWeight.w500,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kDarkModeDividerColor
                              : ColorConfig.kDarkModeDividerColor
                                  .withOpacity(.3),
                          height: FontConfig.kFontSize26,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              StringConfig.total,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: FontConfig.kFontSize14,
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                fontWeight: FontWeight.w500,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                              ),
                            ),
                            Text(
                              StringConfig.dollar98,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: FontConfig.kFontSize14,
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                fontWeight: FontWeight.w500,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: SizeConfig.kHeight75,
        child: Center(
          child: CommonMaterialButton(
            buttonColor: ColorConfig.kPrimaryColor,
            height: SizeConfig.kHeight52,
            txtColor: ColorConfig.kWhiteColor,
            buttonText: StringConfig.orderAgain,
            onButtonClick: () {},
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
