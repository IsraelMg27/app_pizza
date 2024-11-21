// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';
import '../../../config/color.dart';
import '../../../config/font_config.dart';
import '../../../config/font_family.dart';
import '../../../config/image_path.dart';
import '../../../config/size_config.dart';
import '../../../config/string_config.dart';
import '../../../controller/home_controller.dart';

class DisheFavoriteView extends StatelessWidget {
  DisheFavoriteView({Key? key}) : super(key: key);
  HomeController dishesController = Get.put(HomeController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dishesController.favoriteDishesList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                vertical: SizeConfig.kHeight10,
                horizontal: SizeConfig.kHeight20),
            child: Container(
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
                            top: SizeConfig.kHeight12),
                        child: Image.asset(
                          dishesController.favoriteDishesList[index].image ??
                              "",
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
                                top: SizeConfig.kHeight14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  dishesController
                                          .favoriteDishesList[index].veg ??
                                      "",
                                  height: SizeConfig.kHeight12,
                                  width: SizeConfig.kHeight12,
                                ),
                                const SizedBox(
                                  width: SizeConfig.kHeight10,
                                ),
                                Text(
                                    dishesController
                                            .favoriteDishesList[index].name ??
                                        "",
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: FontConfig.kFontSize16,
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(height: SizeConfig.kHeight12),
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
                                  fontFamily: FontFamilyConfig.urbanistRegular,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontSize: FontConfig.kFontSize12,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: SizeConfig.kHeight12,
                          ),
                          Text(
                            dishesController.favoriteDishesList[index].price!,
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
                        top: SizeConfig.kHeight15,
                        right: SizeConfig.kHeight12,
                        left: SizeConfig.kHeight12),
                    child: GestureDetector(
                      onTap: () {
                        dishesController.internationalTripIndex[index] =
                            !dishesController.internationalTripIndex[index];
                      },
                      child: Obx(
                        () => Image.asset(
                          dishesController.internationalTripIndex[index]
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
          );
        });
  }
}
