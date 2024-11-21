// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/widget/custom_progress.dart';
import 'package:get/get.dart';

import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../controller/profile_controller.dart';
import '../../model/number_model.dart';
import '../../utils/appbar_common.dart';

class RatingReviewScreen extends StatelessWidget {
  RatingReviewScreen({Key? key}) : super(key: key);

  ProfileController profileController = Get.put(ProfileController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: darkModeController.isLightTheme.value
              ? ColorConfig.kWhiteColor
              : ColorConfig.kBlackColor,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
              child: CommonAppBar(
                leadingOnTap: () {
                  Get.back();
                },
                leadingImage: ImagePath.arrow,
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kBlackColor
                    : ColorConfig.kWhiteColor,
                title: StringConfig.ratingReview,
              )),
          body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: SizeConfig.kHeight20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: SizeConfig.kHeight3,
                ),
                IntrinsicHeight(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(StringConfig.rating49,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize28,
                                )),
                            const SizedBox(
                              height: SizeConfig.kHeight12,
                            ),
                            RatingBar.builder(
                              itemSize: SizeConfig.kHeight18,
                              initialRating: SizeConfig.kH45,
                              unratedColor: ColorConfig.kButtonLightColor,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.symmetric(
                                  horizontal: SizeConfig.kHeight4),
                              itemBuilder: (context, _) =>
                                  Image.asset(ImagePath.star),
                              onRatingUpdate: (rating) {},
                            ),
                            const SizedBox(
                              height: SizeConfig.kHeight10,
                            ),
                            Text(StringConfig.reviews4959,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistRegular,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kHintColor
                                      : ColorConfig.kDividerColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: FontConfig.kFontSize14,
                                )),
                          ],
                        ),
                        VerticalDivider(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kDarkModeDividerColor
                              : ColorConfig.kDarkModeDividerColor
                                  .withOpacity(.2),
                          thickness: SizeConfig.kHeight1,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomProgressBar(
                              text: "5",
                              width: SizeConfig.kHeight150,
                              value: 90,
                              totalValue: 100,
                            ),
                            CustomProgressBar(
                              text: "4",
                              width: SizeConfig.kHeight151,
                              value: SizeConfig.kInt80,
                              totalValue: SizeConfig.kInt100,
                            ),
                            CustomProgressBar(
                              text: "3",
                              width: SizeConfig.kHeight152,
                              value: SizeConfig.kInt40,
                              totalValue: SizeConfig.kInt100,
                            ),
                            CustomProgressBar(
                              text: "2",
                              width: SizeConfig.kHeight151,
                              value: SizeConfig.kInt60,
                              totalValue: SizeConfig.kInt100,
                            ),
                            CustomProgressBar(
                              text: "1",
                              width: SizeConfig.kHeight154,
                              value: SizeConfig.kInt10,
                              totalValue: SizeConfig.kInt100,
                            )
                          ],
                        ),
                      ]),
                ),
                const SizedBox(
                  height: SizeConfig.kHeight10,
                ),
                Divider(
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kDarkModeDividerColor
                      : ColorConfig.kDarkModeDividerColor.withOpacity(.2),
                  thickness: SizeConfig.kHeight1,
                ),
                const SizedBox(
                  height: SizeConfig.kHeight15,
                ),
                _buildAllList(),
                const SizedBox(
                  height: SizeConfig.kHeight10,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: profileController.userReviewsList.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            const SizedBox(height: SizeConfig.kHeight6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                    profileController
                                            .userReviewsList[index].image ??
                                        "",
                                    height: SizeConfig.kHeight44,
                                    width: SizeConfig.kHeight44),
                                const SizedBox(width: SizeConfig.kHeight14),
                                Text(
                                    profileController
                                            .userReviewsList[index].title ??
                                        "",
                                    style: TextStyle(
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                        fontFamily:
                                            FontFamilyConfig.urbanistSemiBold,
                                        fontWeight: FontWeight.w500,
                                        fontSize: FontConfig.kFontSize17)),
                              ],
                            ),
                            const SizedBox(height: SizeConfig.kHeight8),
                            Text(
                                profileController
                                        .userReviewsList[index].subTitle ??
                                    "",
                                style: TextStyle(
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kHintColor
                                        : ColorConfig.kDividerColor,
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    fontWeight: FontWeight.w300,
                                    fontSize: FontConfig.kFontSize14)),
                            const SizedBox(height: SizeConfig.kHeight15),
                            Row(
                              children: [
                                ...List.generate(
                                    5,
                                    (indexs) => Padding(
                                          padding: const EdgeInsets.only(
                                              right: SizeConfig.kHeight3),
                                          child: Image.asset(ImagePath.star,
                                              height: SizeConfig.kHeight14,
                                              width: SizeConfig.kHeight14),
                                        )),
                                const SizedBox(width: SizeConfig.kHeight16),
                                Text(
                                    profileController
                                            .userReviewsList[index].day ??
                                        "",
                                    style: TextStyle(
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kHintColor
                                            : ColorConfig.kDividerColor,
                                        fontFamily:
                                            FontFamilyConfig.urbanistRegular,
                                        fontWeight: FontWeight.w300,
                                        fontSize: FontConfig.kFontSize14)),
                                const Spacer(),
                                Image.asset(ImagePath.plain,
                                    height: SizeConfig.kHeight14,
                                    width: SizeConfig.kHeight14),
                                Text(StringConfig.shareButton,
                                    style: TextStyle(
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kHintColor
                                            : ColorConfig.kDividerColor,
                                        fontFamily:
                                            FontFamilyConfig.urbanistRegular,
                                        fontWeight: FontWeight.w400,
                                        fontSize: FontConfig.kFontSize12)),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: SizeConfig.kHeight10),
                              child: Divider(
                                color: ColorConfig.kHintColor.withOpacity(0.4),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ));
  }

  List<Number> numberList = [
    Number(
      number: "All",
    ),
    Number(
      number: "5",
    ),
    Number(
      number: "4",
    ),
    Number(
      number: "3",
    ),
    Number(
      number: "2",
    ),
    Number(
      number: "1",
    ),
  ];

  _buildAllList() {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return SizedBox(
          height: SizeConfig.kHeight32,
          child: ListView.builder(
            itemCount: numberList.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (index == 0) {
                      bool allSelected = numberList
                          .skip(1)
                          .every((number) => number.isSelected == true);
                      for (final number in numberList) {
                        number.isSelected = !allSelected;
                      }
                    } else {
                      bool currentSelected =
                          numberList[index].isSelected ?? false;
                      numberList[index].isSelected = !currentSelected;
                    }
                    bool allOtherSelected = numberList
                        .skip(1)
                        .every((number) => number.isSelected == true);
                    numberList[0].isSelected = allOtherSelected;
                  });
                },
                child: Container(
                  width: SizeConfig.kHeight66,
                  margin: EdgeInsets.only(
                      left: index == 0
                          ? SizeConfig.kHeight1
                          : SizeConfig.kHeight10),
                  decoration: BoxDecoration(
                    color: index == 0
                        ? numberList[index].isSelected == true
                            ? ColorConfig.kPrimaryColor
                            : darkModeController.isLightTheme.value
                                ? ColorConfig.kFillColor
                                : ColorConfig.kDarkModeColor
                        : numberList[index].isSelected == true
                            ? ColorConfig.kPrimaryColor
                            : darkModeController.isLightTheme.value
                                ? ColorConfig.kFillColor
                                : ColorConfig.kDarkModeColor,
                    borderRadius: BorderRadius.circular(SizeConfig.kHeight21),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      index == 0
                          ? Text(
                              "All",
                              style: TextStyle(
                                color: numberList[index].isSelected!
                                    ? ColorConfig.kWhiteColor
                                    : darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                fontFamily: FontFamilyConfig.urbanistSemiBold,
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig.kHeight14,
                              ),
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  numberList[index].number ?? "",
                                  style: TextStyle(
                                    color: numberList[index].isSelected!
                                        ? ColorConfig.kWhiteColor
                                        : darkModeController.isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    fontWeight: FontWeight.w500,
                                    fontSize: SizeConfig.kHeight14,
                                  ),
                                ),
                                const SizedBox(width: SizeConfig.kHeight8),
                                Image.asset(
                                  ImagePath.onlyStar,
                                  height: SizeConfig.kHeight14,
                                  width: SizeConfig.kHeight14,
                                  color: numberList[index].isSelected!
                                      ? ColorConfig.kWhiteColor
                                      : ColorConfig.kPrimaryColor,
                                )
                              ],
                            )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void toggleAllSelection() {
    final allSelected = numberList[0].isSelected;
    for (int i = 1; i < numberList.length; i++) {
      numberList[i].isSelected = !allSelected!;
    }
  }
}
