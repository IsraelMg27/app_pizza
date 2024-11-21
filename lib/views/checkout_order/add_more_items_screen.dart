// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/app_routes/app_routes.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/home_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/my_cart_controller.dart';
import 'package:get/get.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../controller/dark_mode_controller.dart';
import '../../utils/appbar_common.dart';
import '../../utils/common_material_button.dart';

class AddMoreItemsScreen extends StatefulWidget {
  const AddMoreItemsScreen({Key? key}) : super(key: key);

  @override
  State<AddMoreItemsScreen> createState() => _AddMoreItemsScreenState();
}

class _AddMoreItemsScreenState extends State<AddMoreItemsScreen> {
  DarkModeController darkModeController = Get.put(DarkModeController());

  HomeController homeController = Get.put(HomeController());

  MyCartController myCartController = Get.put(MyCartController());

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
    return Obx(
      () => Scaffold(
        backgroundColor: darkModeController.isLightTheme.value
            ? ColorConfig.kWhiteColor
            : ColorConfig.kBlackColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
          child: CommonAppBar(
            leadingImage: ImagePath.arrow,
            color: darkModeController.isLightTheme.value
                ? ColorConfig.kBlackColor
                : ColorConfig.kWhiteColor,
            leadingOnTap: () {
              Get.back();
            },
            actions: [
              Row(
                children: [
                  Icon(
                    Icons.share_outlined,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                    size: SizeConfig.kHeight18,
                  ),
                  const SizedBox(
                    width: SizeConfig.kHeight16,
                  ),
                  Image.asset(
                    ImagePath.search,
                    height: SizeConfig.kHeight20,
                    width: SizeConfig.kHeight20,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
              left: SizeConfig.kHeight16, right: SizeConfig.kHeight16),
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        StringConfig.dPizza,
                        style: TextStyle(
                          fontSize: FontConfig.kFontSize18,
                          fontFamily: FontFamilyConfig.urbanistRegular,
                          fontWeight: FontWeight.w600,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: SizeConfig.kHeight3,
                            left: SizeConfig.kHeight3),
                        child: Text(
                          StringConfig.offDiscount,
                          style: TextStyle(
                            fontSize: FontConfig.kFontSize12,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w500,
                            color: ColorConfig.kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: SizeConfig.padding5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          StringConfig.pizza,
                          style: TextStyle(
                            fontSize: FontConfig.kFontSize12,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w400,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                          ),
                        ),
                        const SizedBox(
                          width: SizeConfig.kHeight6,
                        ),
                        const Image(
                          image: AssetImage(ImagePath.dotIcon),
                          width: SizeConfig.kHeight3,
                        ),
                        const SizedBox(
                          width: SizeConfig.kHeight6,
                        ),
                        Text(
                          StringConfig.fastFood,
                          style: TextStyle(
                            fontSize: FontConfig.kFontSize12,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w400,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                          ),
                        ),
                        const SizedBox(
                          width: SizeConfig.kHeight6,
                        ),
                        const Image(
                          image: AssetImage(ImagePath.dotIcon),
                          width: SizeConfig.kHeight3,
                        ),
                        const SizedBox(
                          width: SizeConfig.kHeight6,
                        ),
                        Text(
                          StringConfig.cocoCola,
                          style: TextStyle(
                            fontSize: FontConfig.kFontSize12,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w400,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                          ),
                        ),
                        const SizedBox(
                          width: SizeConfig.kHeight6,
                        ),
                        const Image(
                          image: AssetImage(ImagePath.dotIcon),
                          width: SizeConfig.kHeight3,
                        ),
                        const SizedBox(
                          width: SizeConfig.kHeight6,
                        ),
                        Text(
                          StringConfig.shorts,
                          style: TextStyle(
                            fontSize: FontConfig.kFontSize12,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w400,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: SizeConfig.padding5),
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringConfig.meter800,
                            style: TextStyle(
                              fontSize: FontConfig.kFontSize12,
                              fontFamily: FontFamilyConfig.urbanistRegular,
                              fontWeight: FontWeight.w400,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                            ),
                          ),
                          VerticalDivider(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kDarkModeDividerColor
                                : ColorConfig.kDarkModeDividerColor
                                    .withOpacity(.3),
                            indent: 2,
                            endIndent: 2,
                          ),
                          const Image(
                            image: AssetImage(ImagePath.star),
                            width: SizeConfig.kHeight13,
                          ),
                          const SizedBox(
                            width: SizeConfig.kHeight4,
                          ),
                          Text(
                            StringConfig.reviews,
                            style: TextStyle(
                              fontSize: FontConfig.kFontSize12,
                              fontFamily: FontFamilyConfig.urbanistRegular,
                              fontWeight: FontWeight.w400,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kDarkModeDividerColor
                        : ColorConfig.kDarkModeDividerColor.withOpacity(.3),
                    height: SizeConfig.kHeight30,
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight10,
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
                          padding: const EdgeInsets.all(SizeConfig.kHeight12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Image(
                                image: AssetImage(ImagePath.farmVillaPizza),
                                width: SizeConfig.kHeight88,
                              ),
                              const SizedBox(
                                width: SizeConfig.kHeight15,
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          GestureDetector(
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
                                                height: SizeConfig.kHeight16,
                                                width: SizeConfig.kHeight16,
                                                color:
                                                    ColorConfig.kPrimaryColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: SizeConfig.kHeight8,
                                      ),
                                      Text(
                                        myCartController.pizzaRatings[index],
                                        style: TextStyle(
                                          fontSize: FontConfig.kFontSize12,
                                          fontFamily:
                                              FontFamilyConfig.urbanistRegular,
                                          fontWeight: FontWeight.w400,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
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
                    height: SizeConfig.kHeight20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: SizeConfig.padding2),
                    child: Text(
                      StringConfig.bestInPizza,
                      style: TextStyle(
                        fontSize: FontConfig.kFontSize18,
                        fontFamily: FontFamilyConfig.urbanistRegular,
                        fontWeight: FontWeight.w600,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kBlackColor
                            : ColorConfig.kWhiteColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: SizeConfig.padding4, right: SizeConfig.padding4),
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
                              spreadRadius: SizeConfig.kHeight1,
                              offset: const Offset(
                                  SizeConfig.kHeight0, SizeConfig.kHeight0)),
                        ],
                      ),
                      height: SizeConfig.kHeight104,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: SizeConfig.kHeight12,
                                    right: SizeConfig.kHeight12,
                                    top: SizeConfig.kHeight15),
                                child: GestureDetector(
                                  onTap: () {
                                    // Get.toNamed(AppRoutes.farmVillaPizza);
                                  },
                                  child: Image.asset(
                                    homeController.pizzaList[0].image ?? "",
                                    fit: BoxFit.fill,
                                    height: SizeConfig.kHeight80,
                                    width: SizeConfig.kHeight88,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: SizeConfig.kHeight17),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          homeController.pizzaList[0].veg ?? "",
                                          height: SizeConfig.kHeight10,
                                          width: SizeConfig.kHeight10,
                                        ),
                                        const SizedBox(
                                          width: SizeConfig.kHeight8,
                                        ),
                                        Text(
                                            homeController.pizzaList[0].name ??
                                                "",
                                            style: TextStyle(
                                              fontFamily: FontFamilyConfig
                                                  .urbanistSemiBold,
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kBlackColor
                                                  : ColorConfig.kWhiteColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: FontConfig.kFontSize16,
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: SizeConfig.kHeight10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        ImagePath.star,
                                        height: SizeConfig.kHeight15,
                                        width: SizeConfig.kHeight15,
                                      ),
                                      const SizedBox(
                                        width: SizeConfig.kHeight5,
                                      ),
                                      Text(
                                        StringConfig.reviews,
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistRegular,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontSize: FontConfig.kFontSize12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: SizeConfig.kHeight10,
                                  ),
                                  Text(
                                    homeController.pizzaList[0].price!,
                                    style: TextStyle(
                                      fontFamily: FontFamilyConfig.urbanistBold,
                                      color: ColorConfig.kPrimaryColor,
                                      fontSize: FontConfig.kFontSize14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: SizeConfig.kHeight12,
                                top: SizeConfig.kHeight17,
                                right: SizeConfig.kHeight12),
                            child: GestureDetector(
                              onTap: () {
                                homeController.internationalTripIndex[0] =
                                    !homeController.internationalTripIndex[0];
                              },
                              child: Obx(
                                () => Image.asset(
                                  homeController.internationalTripIndex[0]
                                      ? ImagePath.heart
                                      : ImagePath.fillHeart,
                                  height: SizeConfig.kHeight16,
                                  width: SizeConfig.kHeight16,
                                  color: ColorConfig.kPrimaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: SizeConfig.padding4, right: SizeConfig.padding4),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius12),
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kDarkModeColor,
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 1,
                              color: ColorConfig.kBlackColor
                                  .withOpacity(SizeConfig.kH02),
                              blurRadius: SizeConfig.borderRadius6,
                              offset: const Offset(
                                  SizeConfig.kHeight0, SizeConfig.kHeight0)),
                        ],
                      ),
                      height: SizeConfig.kHeight104,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: SizeConfig.kHeight12,
                                    right: SizeConfig.kHeight12,
                                    top: SizeConfig.kHeight15),
                                child: Image.asset(
                                  homeController.pizzaList[1].image ?? "",
                                  fit: BoxFit.fill,
                                  height: SizeConfig.kHeight80,
                                  width: SizeConfig.kHeight88,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: SizeConfig.kHeight17),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          homeController.pizzaList[1].veg ?? "",
                                          height: SizeConfig.kHeight10,
                                          width: SizeConfig.kHeight10,
                                        ),
                                        const SizedBox(
                                          width: SizeConfig.kHeight8,
                                        ),
                                        Text(
                                            homeController.pizzaList[1].name ??
                                                "",
                                            style: TextStyle(
                                              fontFamily: FontFamilyConfig
                                                  .urbanistSemiBold,
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kBlackColor
                                                  : ColorConfig.kWhiteColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: FontConfig.kFontSize16,
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: SizeConfig.kHeight10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        ImagePath.star,
                                        height: SizeConfig.kHeight15,
                                        width: SizeConfig.kHeight15,
                                      ),
                                      const SizedBox(
                                        width: SizeConfig.kHeight5,
                                      ),
                                      Text(
                                        StringConfig.reviews,
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistRegular,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontSize: FontConfig.kFontSize12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: SizeConfig.kHeight10,
                                  ),
                                  Text(
                                    homeController.pizzaList[1].price!,
                                    style: TextStyle(
                                      fontFamily: FontFamilyConfig.urbanistBold,
                                      color: ColorConfig.kPrimaryColor,
                                      fontSize: FontConfig.kFontSize14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: SizeConfig.kHeight17,
                                right: SizeConfig.kHeight12,
                                left: SizeConfig.kHeight12),
                            child: GestureDetector(
                              onTap: () {
                                homeController.internationalTripIndex[1] =
                                    !homeController.internationalTripIndex[1];
                              },
                              child: Obx(
                                () => Image.asset(
                                  homeController.internationalTripIndex[1]
                                      ? ImagePath.heart
                                      : ImagePath.fillHeart,
                                  height: SizeConfig.kHeight16,
                                  width: SizeConfig.kHeight16,
                                  color: ColorConfig.kPrimaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: SizeConfig.padding4, right: SizeConfig.padding4),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius12),
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kDarkModeColor,
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 1,
                              color: ColorConfig.kBlackColor
                                  .withOpacity(SizeConfig.kH02),
                              blurRadius: SizeConfig.borderRadius6,
                              offset: const Offset(
                                  SizeConfig.kHeight0, SizeConfig.kHeight0)),
                        ],
                      ),
                      height: SizeConfig.kHeight104,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: SizeConfig.kHeight12,
                                    right: SizeConfig.kHeight12,
                                    top: SizeConfig.kHeight15),
                                child: Image.asset(
                                  homeController.pizzaList[1].image ?? "",
                                  fit: BoxFit.fill,
                                  height: SizeConfig.kHeight80,
                                  width: SizeConfig.kHeight88,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: SizeConfig.kHeight17),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          homeController.pizzaList[1].veg ?? "",
                                          height: SizeConfig.kHeight10,
                                          width: SizeConfig.kHeight10,
                                        ),
                                        const SizedBox(
                                          width: SizeConfig.kHeight8,
                                        ),
                                        Text(
                                            homeController.pizzaList[1].name ??
                                                "",
                                            style: TextStyle(
                                              fontFamily: FontFamilyConfig
                                                  .urbanistSemiBold,
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kBlackColor
                                                  : ColorConfig.kWhiteColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: FontConfig.kFontSize16,
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: SizeConfig.kHeight10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        ImagePath.star,
                                        height: SizeConfig.kHeight15,
                                        width: SizeConfig.kHeight15,
                                      ),
                                      const SizedBox(
                                        width: SizeConfig.kHeight5,
                                      ),
                                      Text(
                                        StringConfig.reviews,
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistRegular,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontSize: FontConfig.kFontSize12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: SizeConfig.kHeight10,
                                  ),
                                  Text(
                                    homeController.pizzaList[1].price!,
                                    style: TextStyle(
                                      fontFamily: FontFamilyConfig.urbanistBold,
                                      color: ColorConfig.kPrimaryColor,
                                      fontSize: FontConfig.kFontSize14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: SizeConfig.kHeight12,
                                top: SizeConfig.kHeight17,
                                right: SizeConfig.kHeight12),
                            child: GestureDetector(
                              onTap: () {
                                homeController.internationalTripIndex[3] =
                                    !homeController.internationalTripIndex[3];
                              },
                              child: Obx(
                                () => Image.asset(
                                  homeController.internationalTripIndex[3]
                                      ? ImagePath.heart
                                      : ImagePath.fillHeart,
                                  height: SizeConfig.kHeight16,
                                  width: SizeConfig.kHeight16,
                                  color: ColorConfig.kPrimaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: SizeConfig.kHeight80,
          child: Center(
            child: CommonMaterialButton(
              buttonColor: ColorConfig.kPrimaryColor,
              height: SizeConfig.kHeight52,
              txtColor: ColorConfig.kWhiteColor,
              buttonText: StringConfig.addToCart,
              onButtonClick: () {
                Get.toNamed(AppRoutes.myCartScreen);
              },
              width: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}
