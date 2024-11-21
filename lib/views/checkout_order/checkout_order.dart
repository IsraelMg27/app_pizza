// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/checkout_order_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/my_cart_controller.dart';
import 'package:get/get.dart';

import '../../app_routes/app_routes.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../utils/appbar_common.dart';
import '../../utils/common_material_button.dart';

class CheckoutOrder extends StatefulWidget {
  const CheckoutOrder({Key? key}) : super(key: key);

  @override
  State<CheckoutOrder> createState() => _CheckoutOrderState();
}


class _CheckoutOrderState extends State<CheckoutOrder> {
  DarkModeController darkModeController = Get.put(DarkModeController());
  MyCartController myCartController = Get.put(MyCartController());
  CheckoutOrderController checkoutOrderController =
      Get.put(CheckoutOrderController());

  void incrementCounter(int index) {
    setState(() {
      myCartController.itemQuantities[index]++;
    });
  }

  void decrementCounter(int index) {
    setState(() {
      if (myCartController.itemQuantities[index] > 1) {
        myCartController.itemQuantities[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkModeController.isLightTheme.value
          ? ColorConfig.kWhiteColor
          : ColorConfig.kBlackColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
        child: CommonAppBar(
          title: StringConfig.checkoutOrders,
          leadingImage: ImagePath.arrow,
          color: darkModeController.isLightTheme.value
              ? ColorConfig.kBlackColor
              : ColorConfig.kWhiteColor,
          leadingOnTap: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(SizeConfig.padding20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: SizeConfig.kHeight143,
                    decoration: BoxDecoration(
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kWhiteColor
                          : ColorConfig.kDarkModeColor,
                      borderRadius:
                          BorderRadius.circular(SizeConfig.borderRadius12),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 3,
                          color:
                              ColorConfig.kDarkDialougeColor.withOpacity(0.1),
                          blurRadius: 5,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(SizeConfig.padding16),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: SizeConfig.padding11),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  StringConfig.deliverTo,
                                  style: TextStyle(
                                    fontSize: FontConfig.kFontSize17,
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    fontWeight: FontWeight.w600,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.deliverToScreen);
                                  },
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: SizeConfig.kHeight18,
                                    color: ColorConfig.kPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kDarkModeDividerColor
                                : ColorConfig.kDarkModeDividerColor
                                    .withOpacity(.3),
                            height: SizeConfig.kHeight0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: SizeConfig.padding16),
                            child: Row(
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
                                    Row(
                                      children: [
                                        Text(
                                          StringConfig.home,
                                          style: TextStyle(
                                            fontSize: FontConfig.kFontSize14,
                                            fontFamily: FontFamilyConfig
                                                .urbanistSemiBold,
                                            fontWeight: FontWeight.w600,
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig.kBlackColor
                                                : ColorConfig.kWhiteColor,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: SizeConfig.kHeight14,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: SizeConfig.padding5,
                                              right: SizeConfig.padding5,
                                              top: SizeConfig.padding2,
                                              bottom: SizeConfig.padding2),
                                          decoration: BoxDecoration(
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig
                                                    .kContainerLightColor
                                                : ColorConfig.kHintColor
                                                    .withOpacity(.3),
                                            borderRadius: BorderRadius.circular(
                                                SizeConfig.borderRadius3),
                                          ),
                                          child: Text(
                                            StringConfig.defult,
                                            style: TextStyle(
                                              fontSize: FontConfig.kFontSize10,
                                              fontFamily: FontFamilyConfig
                                                  .urbanistRegular,
                                              fontWeight: FontWeight.w500,
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kPrimaryColor
                                                  : ColorConfig.kWhiteColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: SizeConfig.kHeight6,
                                    ),
                                    Text(
                                      StringConfig.address1,
                                      style: TextStyle(
                                        fontSize: FontConfig.kFontSize12,
                                        fontFamily:
                                            FontFamilyConfig.urbanistRegular,
                                        fontWeight: FontWeight.w500,
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kHintColor
                                            : ColorConfig.kWhiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight27,
                  ),
                  Text(
                    StringConfig.ordersSummary,
                    style: TextStyle(
                      fontSize: FontConfig.kFontSize18,
                      fontFamily: FontFamilyConfig.urbanistRegular,
                      fontWeight: FontWeight.w600,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight18,
                  ),
                  ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(bottom: SizeConfig.kHeight15),
                        child: Container(
                          height: SizeConfig.kHeight104,
                          decoration: BoxDecoration(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kWhiteColor
                                : ColorConfig.kDarkModeColor,
                            borderRadius: BorderRadius.circular(
                                SizeConfig.borderRadius12),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                color: ColorConfig.kDarkDialougeColor
                                    .withOpacity(0.1),
                                blurRadius: 5,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(SizeConfig.kHeight10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Image(
                                image: AssetImage(ImagePath.farmVillaPizza),
                                width: SizeConfig.kHeight88,
                              ),
                              const SizedBox(
                                width: SizeConfig.kHeight10,
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Image(
                                                image:
                                                    AssetImage(ImagePath.veg),
                                                width: SizeConfig.kHeight10,
                                              ),
                                              const SizedBox(
                                                width: SizeConfig.kHeight8,
                                              ),
                                              Text(
                                                myCartController
                                                    .cartItems[index],
                                                style: TextStyle(
                                                  fontSize:
                                                      FontConfig.kFontSize15,
                                                  fontFamily: FontFamilyConfig
                                                      .urbanistRegular,
                                                  fontWeight: FontWeight.w600,
                                                  color: darkModeController
                                                          .isLightTheme.value
                                                      ? ColorConfig.kBlackColor
                                                      : ColorConfig.kWhiteColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                StringConfig.editButton,
                                                style: TextStyle(
                                                  fontSize:
                                                      FontConfig.kFontSize12,
                                                  fontFamily: FontFamilyConfig
                                                      .urbanistRegular,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      ColorConfig.kPrimaryColor,
                                                ),
                                              ),
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                size: SizeConfig.kHeight18,
                                                color:
                                                    ColorConfig.kPrimaryColor,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: SizeConfig.kHeight8,
                                      ),
                                      IntrinsicHeight(
                                        child: Row(
                                          children: [
                                            Text(
                                              myCartController.dishes[index],
                                              style: TextStyle(
                                                fontSize:
                                                    FontConfig.kFontSize12,
                                                fontFamily: FontFamilyConfig
                                                    .urbanistRegular,
                                                fontWeight: FontWeight.w400,
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kBlackColor
                                                    : ColorConfig.kWhiteColor,
                                              ),
                                            ),
                                            VerticalDivider(
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig
                                                      .kDarkModeDividerColor
                                                  : ColorConfig
                                                      .kDarkModeDividerColor
                                                      .withOpacity(.3),
                                              indent: 2,
                                              endIndent: 2,
                                            ),
                                            Text(
                                              myCartController
                                                  .pizzaInches[index],
                                              style: TextStyle(
                                                fontSize:
                                                    FontConfig.kFontSize12,
                                                fontFamily: FontFamilyConfig
                                                    .urbanistRegular,
                                                fontWeight: FontWeight.w400,
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kBlackColor
                                                    : ColorConfig.kWhiteColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: SizeConfig.kHeight8,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            myCartController.pizzaPrice[index],
                                            style: TextStyle(
                                              fontSize: FontConfig.kFontSize14,
                                              fontFamily: FontFamilyConfig
                                                  .urbanistRegular,
                                              fontWeight: FontWeight.w700,
                                              color: ColorConfig.kPrimaryColor,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  decrementCounter(index);
                                                },
                                                child: const Image(
                                                  image: AssetImage(
                                                      ImagePath.minusLogo),
                                                  width: SizeConfig.kHeight16,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: SizeConfig.kHeight6,
                                              ),
                                              Text(
                                                "${myCartController.itemQuantities[index]}",
                                                style: TextStyle(
                                                  fontSize:
                                                      FontConfig.kFontSize12,
                                                  fontFamily: FontFamilyConfig
                                                      .urbanistRegular,
                                                  fontWeight: FontWeight.w400,
                                                  color: darkModeController
                                                          .isLightTheme.value
                                                      ? ColorConfig.kBlackColor
                                                      : ColorConfig.kWhiteColor,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: SizeConfig.kHeight6,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  incrementCounter(index);
                                                },
                                                child: const Image(
                                                  image: AssetImage(
                                                      ImagePath.addLogo),
                                                  width: SizeConfig.kHeight16,
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
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight18,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.addMoreItemsScreen);
                    },
                    child: Container(
                      width: double.infinity,
                      height: SizeConfig.kHeight50,
                      decoration: BoxDecoration(
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kDarkModeColor,
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius12),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 3,
                            color:
                                ColorConfig.kDarkDialougeColor.withOpacity(0.1),
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(SizeConfig.kHeight17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Image(
                                  image: AssetImage(ImagePath.addCircleIcon),
                                  width: SizeConfig.kHeight20,
                                ),
                                const SizedBox(
                                  width: SizeConfig.kHeight8,
                                ),
                                Text(
                                  StringConfig.addMoreItems,
                                  style: TextStyle(
                                    fontSize: FontConfig.kFontSize14,
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    fontWeight: FontWeight.w600,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: SizeConfig.kHeight17,
                              color: ColorConfig.kPrimaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.getDiscountScreen);
                    },
                    child: Container(
                      width: double.infinity,
                      height: SizeConfig.kHeight50,
                      decoration: BoxDecoration(
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kDarkModeColor,
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius12),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 3,
                            color:
                                ColorConfig.kDarkDialougeColor.withOpacity(0.1),
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: SizeConfig.kHeight17,
                            right: SizeConfig.kHeight17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Image(
                                  image: AssetImage(ImagePath.sale),
                                  width: SizeConfig.kHeight20,
                                ),
                                const SizedBox(
                                  width: SizeConfig.kHeight8,
                                ),
                                Text(
                                  StringConfig.getDiscount,
                                  style: TextStyle(
                                    fontSize: FontConfig.kFontSize14,
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    fontWeight: FontWeight.w600,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: SizeConfig.kHeight97,
                                  height: SizeConfig.kHeight28,
                                  decoration: BoxDecoration(
                                    color: ColorConfig.kPrimaryColor,
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.borderRadius22),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: SizeConfig.kHeight10,
                                        right: SizeConfig.kHeight10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          StringConfig.discount20,
                                          style: TextStyle(
                                            fontSize: FontConfig.kFontSize10,
                                            fontFamily: FontFamilyConfig
                                                .urbanistRegular,
                                            fontWeight: FontWeight.w600,
                                            color: ColorConfig.kWhiteColor,
                                          ),
                                        ),
                                        const Image(
                                          image:
                                              AssetImage(ImagePath.closeIcon),
                                          width: SizeConfig.kHeight12,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: SizeConfig.kHeight8,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: SizeConfig.kHeight17,
                                  color: ColorConfig.kPrimaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight32,
                  ),
                  Text(
                    StringConfig.deliveryInstructions,
                    style: TextStyle(
                      fontSize: FontConfig.kFontSize18,
                      fontFamily: FontFamilyConfig.urbanistRegular,
                      fontWeight: FontWeight.w600,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                          : ColorConfig.kWhiteColor,
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight16,
                  ),
                  SizedBox(
                    height: SizeConfig.kHeight120,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        Color imageColor =
                            checkoutOrderController.selectedIndex == index
                                ? ColorConfig.kWhiteColor
                                : ColorConfig.kPrimaryColor;

                        Color textColor = darkModeController
                                    .isLightTheme.value &&
                                checkoutOrderController.selectedIndex == index
                            ? ColorConfig.kWhiteColor
                            : darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor;

                        return Padding(
                          padding: const EdgeInsets.only(
                              right: SizeConfig.padding16,
                              top: SizeConfig.padding8,
                              bottom: SizeConfig.padding8),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                checkoutOrderController.selectedIndex = index;
                              });
                            },
                            child: Container(
                              width: SizeConfig.kHeight100,
                              height: SizeConfig.kHeight73,
                              decoration: BoxDecoration(
                                color: checkoutOrderController.selectedIndex ==
                                        index
                                    ? ColorConfig.kPrimaryColor
                                    : darkModeController.isLightTheme.value
                                        ? ColorConfig.kWhiteColor
                                        : ColorConfig.kDarkModeColor,
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.borderRadius12),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 3,
                                    color: ColorConfig.kDarkDialougeColor
                                        .withOpacity(0.1),
                                    blurRadius: 5,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(checkoutOrderController
                                        .deliveryInstructionsIcon[index]),
                                    width: SizeConfig.kHeight16,
                                    color: imageColor,
                                  ),
                                  const SizedBox(
                                    height: SizeConfig.kHeight10,
                                  ),
                                  Text(
                                    checkoutOrderController
                                        .instructionsString[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: FontConfig.kFontSize14,
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      fontWeight: FontWeight.w500,
                                      color: textColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight32,
                  ),
                  Container(
                    width: double.infinity,
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
                          color:
                              ColorConfig.kDarkDialougeColor.withOpacity(0.1),
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
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: SizeConfig.kHeight70,
        child: Center(
          child: CommonMaterialButton(
            buttonColor: ColorConfig.kPrimaryColor,
            height: SizeConfig.kHeight52,
            txtColor: ColorConfig.kWhiteColor,
            buttonText: StringConfig.placeOrder,
            onButtonClick: () {
              Get.toNamed(AppRoutes.payment);
            },
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
