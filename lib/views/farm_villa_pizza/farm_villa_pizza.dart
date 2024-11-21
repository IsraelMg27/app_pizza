// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/home_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/utils/common_material_button.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/farm_villa_pizza/pizza_ingredients.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/farm_villa_pizza/pizza_size.dart';
import 'package:get/get.dart';
import '../../app_routes/app_routes.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';

class FarmVillaPizzaScreen extends StatefulWidget {
  const FarmVillaPizzaScreen({Key? key}) : super(key: key);

  @override
  State<FarmVillaPizzaScreen> createState() => _FarmVillaPizzaScreenState();
}

class _FarmVillaPizzaScreenState extends State<FarmVillaPizzaScreen> {
  HomeController homeController = HomeController();
  final controller = PageController();
  DarkModeController darkModeController = Get.put(DarkModeController());

  void incrementCounter() {
    setState(() {
      homeController.counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (homeController.counter > 0) {
        homeController.counter--;
      }
    });
  }

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
                      _buildPagerView(),
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
                            Text(StringConfig.farmVillaPizza,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
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
                      Obx(
                        () => Padding(
                          padding:
                              const EdgeInsets.only(top: SizeConfig.kHeight380),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              homeController.carouselSliderList.length,
                              (int index) => buildDot(index: index),
                            ),
                          ),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: SizeConfig.kHeight20),
                        child: Row(
                          children: [
                            Image.asset(
                              ImagePath.veg,
                              height: SizeConfig.kHeight16,
                              width: SizeConfig.kHeight16,
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight12,
                            ),
                            Text(StringConfig.farmVillaPizza,
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: SizeConfig.kHeight20,
                            vertical: SizeConfig.kHeight15),
                        child: Row(
                          children: [
                            Text(StringConfig.dollor34,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: ColorConfig.kPrimaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize16,
                                )),
                            const SizedBox(
                              width: SizeConfig.kHeight24,
                            ),
                            RatingBar.builder(
                              itemSize: SizeConfig.kHeight18,
                              initialRating: 1,
                              unratedColor: ColorConfig.kButtonLightColor,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 1,
                              itemBuilder: (context, _) =>
                                  Image.asset(ImagePath.star),
                              onRatingUpdate: (rating) {},
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.ratingReview);
                              },
                              child: Text(' 4.9  (4,959 reviews)  ',
                                  style: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kHintColor
                                        : ColorConfig.kDividerColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: FontConfig.kFontSize12,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight3,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: SizeConfig.kHeight20,
                            vertical: SizeConfig.kHeight5),
                        child: Row(
                          children: [
                            Text(StringConfig.description,
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
                                decrementCounter();
                              },
                              child: CircleAvatar(
                                radius: 11,
                                backgroundColor: ColorConfig.kPrimaryColor,
                                child: Center(
                                  child: Text(' - ',
                                      style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistSemiBold,
                                        color: ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: FontConfig.kFontSize16,
                                      )),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight5,
                            ),
                            Text('  ${homeController.counter} ',
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: FontConfig.kFontSize14,
                                )),
                            const SizedBox(
                              width: SizeConfig.kHeight5,
                            ),
                            GestureDetector(
                              onTap: () {
                                incrementCounter();
                              },
                              child: CircleAvatar(
                                radius: 11,
                                backgroundColor: ColorConfig.kPrimaryColor,
                                child: Center(
                                  child: Text(' + ',
                                      style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistSemiBold,
                                        color: ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: FontConfig.kFontSize16,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight3,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: SizeConfig.kHeight20),
                        child: Divider(
                          color:
                              ColorConfig.kDarkModeDividerColor.withOpacity(.3),
                          thickness: SizeConfig.kHeight1,
                          height: SizeConfig.kHeight5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: SizeConfig.kHeight20,
                            vertical: SizeConfig.kHeight10),
                        child: RichText(
                            text: TextSpan(
                                text:
                                    "The freeshness of capsicum, tometos, consectetur. Elit sed integer donec mauris massa turpis. Senectus faucibus dictum blandit pharetra mauris in tortor vulputate. Ultrices in  ",
                                style: TextStyle(
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontSize: FontConfig.kFontSize14,
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    fontWeight: FontWeight.w400),
                                children: [
                              TextSpan(
                                  text: "View More...",
                                  style: TextStyle(
                                      color: ColorConfig.kPrimaryColor,
                                      fontSize: FontConfig.kFontSize16,
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      fontWeight: FontWeight.w600))
                            ])),
                      ),
                      Padding(
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
                          height: SizeConfig.kHeight150,
                          width: double.infinity,
                          child: const PizzaSize(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: SizeConfig.kHeight20,
                            vertical: SizeConfig.kHeight10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConfig.extraToppings,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize18,
                                )),
                            const SizedBox(
                              height: SizeConfig.kHeight5,
                            ),
                            Text(StringConfig.selectUpTo5Options,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistRegular,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kHintColor
                                      : ColorConfig.kDividerColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: FontConfig.kFontSize12,
                                )),
                            const SizedBox(
                              height: SizeConfig.kHeight10,
                            ),
                            Divider(
                              color: ColorConfig.kDarkModeDividerColor
                                  .withOpacity(.3),
                              thickness: SizeConfig.kHeight1,
                            ),
                            const PizzaIngredients(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('+5 more  ',
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      color: ColorConfig.kPrimaryColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: FontConfig.kFontSize12,
                                    )),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: ColorConfig.kPrimaryColor,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: SizeConfig.kHeight10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight20,
                      ),
                    ],
                  )
                ],
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
        ));
  }

  buildDot({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: SizeConfig.kHeight4),
      height: homeController.pageViewIndex.value == index
          ? SizeConfig.kHeight6
          : SizeConfig.kHeight10,
      width: homeController.pageViewIndex.value == index
          ? SizeConfig.kHeight16
          : SizeConfig.kHeight10,
      decoration: BoxDecoration(
        color: homeController.pageViewIndex.value == index
            ? ColorConfig.kPrimaryColor
            : ColorConfig.kWhiteColor,
        borderRadius: BorderRadius.circular(SizeConfig.borderRadius20),
      ),
    );
  }

  _buildPagerView() {
    return SizedBox(
      height: SizeConfig.kHeight400,
      width: double.infinity,
      child: PageView.builder(
          itemCount: homeController.pizzaSliderList.length,
          controller: controller,
          allowImplicitScrolling: true,
          onPageChanged: (value) {
            homeController.pageViewIndex.value = value;
          },
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
                height: SizeConfig.kHeight400,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: homeController.pageViewIndex.value == index
                          ? SizeConfig.kHeight0
                          : SizeConfig.kHeight8),
                  child: Image.asset(
                    ImagePath.pizzaBite,
                    fit: BoxFit.fill,
                  ),
                ));
          }),
    );
  }
}
