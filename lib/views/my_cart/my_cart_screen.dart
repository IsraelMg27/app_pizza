// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/my_cart_controller.dart';
import 'package:get/get.dart';

import '../../app_routes/app_routes.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../controller/dark_mode_controller.dart';
import '../../utils/appbar_common.dart';
import '../../utils/common_material_button.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  DarkModeController darkModeController = Get.put(DarkModeController());
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
            title: StringConfig.myCart,
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
              left: SizeConfig.kHeight20,
              right: SizeConfig.kHeight20),
          child: ListView.builder(
            itemCount: myCartController.itemQuantities.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: SizeConfig.kHeight15),
                child: Container(
                  height: SizeConfig.kHeight104,
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
                                        image: AssetImage(ImagePath.veg),
                                        width: SizeConfig.kHeight10,
                                      ),
                                      const SizedBox(
                                        width: SizeConfig.kHeight8,
                                      ),
                                      Text(
                                        myCartController.cartItems[index],
                                        style: TextStyle(
                                          fontSize: FontConfig.kFontSize15,
                                          fontFamily:
                                              FontFamilyConfig.urbanistRegular,
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
                                      Get.toNamed(AppRoutes.pizzaDetail);
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          StringConfig.editButton,
                                          style: TextStyle(
                                            fontSize: FontConfig.kFontSize12,
                                            fontFamily: FontFamilyConfig
                                                .urbanistRegular,
                                            fontWeight: FontWeight.w500,
                                            color: ColorConfig.kPrimaryColor,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          size: SizeConfig.kHeight18,
                                          color: ColorConfig.kPrimaryColor,
                                        ),
                                      ],
                                    ),
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
                                    VerticalDivider(
                                      color: darkModeController
                                              .isLightTheme.value
                                          ? ColorConfig.kDarkModeDividerColor
                                          : ColorConfig.kDarkModeDividerColor
                                              .withOpacity(.3),
                                      indent: 2,
                                      endIndent: 2,
                                    ),
                                    Text(
                                      myCartController.pizzaInches[index],
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
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
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
                                          image:
                                              AssetImage(ImagePath.minusLogo),
                                          width: SizeConfig.kHeight16,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: SizeConfig.kHeight6,
                                      ),
                                      Text(
                                        "${myCartController.itemQuantities[index]}",
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
                                        width: SizeConfig.kHeight6,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          incrementCounter(index);
                                        },
                                        child: const Image(
                                          image: AssetImage(ImagePath.addLogo),
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
                Get.toNamed(AppRoutes.checkoutOrder);
              },
              width: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}
