import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/app_routes/app_routes.dart';
import 'package:get/get.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../controller/dark_mode_controller.dart';
import '../../utils/common_material_button.dart';

creditCardBottomSheet(BuildContext context) {
  DarkModeController darkModeController = Get.put(DarkModeController());
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: darkModeController.isLightTheme.value
          ? ColorConfig.kWhiteColor
          : ColorConfig.kDarkModeColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(SizeConfig.borderRadius25),
          topRight: Radius.circular(SizeConfig.borderRadius25),
        ),
      ),
      builder: (BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;
        const appBarHeight = kToolbarHeight;
        final statusBarHeight = MediaQuery.of(context).padding.top;
        final availableHeight = screenHeight - appBarHeight - statusBarHeight;
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return SizedBox(
            height: availableHeight * 0.9,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: SizeConfig.kHeight20),
                child: SingleChildScrollView(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                      padding: const EdgeInsets.all(SizeConfig.kHeight15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: SizeConfig.kHeight15),
                            child: Image.asset(
                              ImagePath.visa,
                              height: SizeConfig.kHeight35,
                              width: SizeConfig.kHeight35,
                            ),
                          ),
                          Text(
                            StringConfig.debitCreditCard,
                            style: TextStyle(
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                                fontFamily: FontFamilyConfig.urbanistSemiBold,
                                fontWeight: FontWeight.w600,
                                fontSize: SizeConfig.kHeight20),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: SizeConfig.kHeight20),
                      child: Divider(
                        thickness: 1,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kDividerColor
                            : ColorConfig.kWhiteColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: SizeConfig.kHeight20,
                          vertical: SizeConfig.kHeight15),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(StringConfig.cardName,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize16,
                                )),
                            const SizedBox(height: SizeConfig.kHeight16),
                            Container(
                              height: SizeConfig.kHeight50,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                  left: SizeConfig.kHeight12),
                              decoration: BoxDecoration(
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kWhiteColor
                                      : ColorConfig.kDarkModeColor,
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.borderRadius8),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 2,
                                        color: ColorConfig.kShadowColor
                                            .withOpacity(0.1),
                                        blurRadius: 3,
                                        offset: const Offset(0, 0))
                                  ]),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: SizeConfig.kHeight10),
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: StringConfig.johnQuil,
                                  hintStyle: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      fontSize: FontConfig.kFontSize14,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            const SizedBox(height: SizeConfig.kHeight16),
                            Text(StringConfig.cardNumber,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize16,
                                )),
                            const SizedBox(height: SizeConfig.kHeight16),
                            Container(
                              height: SizeConfig.kHeight50,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                  left: SizeConfig.kHeight12),
                              decoration: BoxDecoration(
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kWhiteColor
                                      : ColorConfig.kDarkModeColor,
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.borderRadius8),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 2,
                                        color: ColorConfig.kShadowColor
                                            .withOpacity(0.1),
                                        blurRadius: 3,
                                        offset: const Offset(0, 0))
                                  ]),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: StringConfig.cardNu,
                                  hintStyle: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      fontSize: FontConfig.kFontSize14,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            const SizedBox(height: SizeConfig.kHeight16),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(StringConfig.expiryDate,
                                            style: TextStyle(
                                                fontFamily: FontFamilyConfig
                                                    .urbanistSemiBold,
                                                fontSize:
                                                    FontConfig.kFontSize16,
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kBlackColor
                                                    : ColorConfig.kWhiteColor,
                                                fontWeight: FontWeight.w600)),
                                        const SizedBox(
                                            height: SizeConfig.kHeight16),
                                        Container(
                                            height: SizeConfig.kHeight50,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.only(
                                                left: SizeConfig.kHeight12),
                                            decoration: BoxDecoration(
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kWhiteColor
                                                    : ColorConfig
                                                        .kDarkModeColor,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        SizeConfig
                                                            .borderRadius8),
                                                boxShadow: [
                                                  BoxShadow(
                                                      spreadRadius: 2,
                                                      color: ColorConfig
                                                          .kShadowColor
                                                          .withOpacity(0.1),
                                                      blurRadius: 3,
                                                      offset:
                                                          const Offset(0, 0))
                                                ]),
                                            child: TextField(
                                              textAlign: TextAlign.left,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                contentPadding: const EdgeInsets
                                                    .only(
                                                    left: SizeConfig.kHeight12,
                                                    top: SizeConfig.kHeight5),
                                                border: InputBorder.none,
                                                hintText: "09/12",
                                                hintStyle: TextStyle(
                                                    fontFamily: FontFamilyConfig
                                                        .urbanistSemiBold,
                                                    fontSize:
                                                        FontConfig.kFontSize14,
                                                    color: darkModeController
                                                            .isLightTheme.value
                                                        ? ColorConfig
                                                            .kBlackColor
                                                        : ColorConfig
                                                            .kWhiteColor,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: SizeConfig.kHeight19),
                                  Flexible(
                                      flex: 1,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(StringConfig.cVV,
                                                style: TextStyle(
                                                    fontFamily: FontFamilyConfig
                                                        .urbanistSemiBold,
                                                    fontSize:
                                                        FontConfig.kFontSize16,
                                                    color: darkModeController
                                                            .isLightTheme.value
                                                        ? ColorConfig
                                                            .kBlackColor
                                                        : ColorConfig
                                                            .kWhiteColor,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            const SizedBox(
                                                height: SizeConfig.kHeight16),
                                            Container(
                                                height: SizeConfig.kHeight50,
                                                alignment: Alignment.center,
                                                padding: const EdgeInsets.only(
                                                    left: SizeConfig.kHeight12),
                                                decoration: BoxDecoration(
                                                    color: darkModeController
                                                            .isLightTheme.value
                                                        ? ColorConfig
                                                            .kWhiteColor
                                                        : ColorConfig
                                                            .kDarkModeColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            SizeConfig
                                                                .borderRadius8),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          spreadRadius: 2,
                                                          color: ColorConfig
                                                              .kShadowColor
                                                              .withOpacity(0.1),
                                                          blurRadius: 3,
                                                          offset: const Offset(
                                                              0, 0))
                                                    ]),
                                                child: TextField(
                                                    keyboardType:
                                                        TextInputType.phone,
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets.only(
                                                              left: SizeConfig
                                                                  .kHeight12,
                                                              right: SizeConfig
                                                                  .kHeight12,
                                                              top: SizeConfig
                                                                  .kHeight5),
                                                      border: InputBorder.none,
                                                      hintText: "789",
                                                      hintStyle: TextStyle(
                                                          fontFamily:
                                                              FontFamilyConfig
                                                                  .urbanistSemiBold,
                                                          fontSize: FontConfig
                                                              .kFontSize14,
                                                          color: darkModeController
                                                                  .isLightTheme
                                                                  .value
                                                              ? ColorConfig
                                                                  .kBlackColor
                                                              : ColorConfig
                                                                  .kWhiteColor,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    )))
                                          ]))
                                ])
                          ]),
                    ),
                    const SizedBox(height: SizeConfig.kHeight25),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: SizeConfig.padding15),
                      child: CommonMaterialButton(
                          width: double.infinity,
                          buttonColor: ColorConfig.kPrimaryColor,
                          height: SizeConfig.kHeight52,
                          txtColor: ColorConfig.kWhiteColor,
                          buttonText: StringConfig.payNow,
                          onButtonClick: () {
                            Get.toNamed(AppRoutes.successfulOrder);
                          }),
                    ),
                  ]),
                )),
          );
        });
      });
}
