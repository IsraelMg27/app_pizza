// ignore_for_file: must_be_immutable

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
import '../../controller/radio_controller.dart';
import '../../utils/appbar_common.dart';
import '../../utils/common_material_button.dart';
import '../widget/creditcard_bottomsheet.dart';

class PaymentScreen extends StatelessWidget {
  RadioController radioController = Get.put(RadioController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: darkModeController.isLightTheme.value
              ? ColorConfig.kWhiteColor
              : ColorConfig.kBlackColor,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
              child: CommonAppBar(
                title: StringConfig.payment,
                leadingImage: ImagePath.arrow,
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kBlackColor
                    : ColorConfig.kWhiteColor,
                leadingOnTap: () {
                  Get.back();
                },
              )),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizeConfig.padding20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: SizeConfig.kHeight5,
                      ),
                      Text(StringConfig.paymentString,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: FontConfig.kFontSize14,
                          )),
                      const SizedBox(
                        height: SizeConfig.kHeight15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: SizeConfig.padding20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(StringConfig.creditAndDebitCard,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize16,
                                )),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.addNewCard);
                              },
                              child: Image.asset(
                                ImagePath.plus,
                                height: SizeConfig.kHeight20,
                              ),
                            )
                          ],
                        ),
                      ),
                      Obx(
                        () => GestureDetector(
                          onTap: () {
                            radioController.isSelected.value = true;
                            radioController.isSecSelected.value = false;
                          },
                          child: Container(
                              height: SizeConfig.kHeight101,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                  left: SizeConfig.kHeight8),
                              decoration: BoxDecoration(
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kWhiteColor
                                      : ColorConfig.kDarkModeColor,
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.borderRadius8),
                                  border: Border.all(
                                      color: radioController.isSelected.value
                                          ? ColorConfig.kPrimaryColor
                                          : ColorConfig.kWhiteColor,
                                      width: radioController.isSelected.value
                                          ? 2
                                          : 2),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 2,
                                        color: ColorConfig.kShadowColor
                                            .withOpacity(0.1),
                                        blurRadius: 3,
                                        offset: const Offset(0, 0))
                                  ]),
                              child: Row(children: [
                                Image.asset(
                                  ImagePath.onlyCard,
                                  height: SizeConfig.kHeight100,
                                  width: SizeConfig.kHeight134,
                                ),
                                const SizedBox(
                                  width: SizeConfig.kHeight10,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: SizeConfig.padding13,
                                            bottom: SizeConfig.padding10),
                                        child: Row(
                                          children: [
                                            Text(StringConfig.wadeWarren,
                                                style: TextStyle(
                                                  fontFamily: FontFamilyConfig
                                                      .urbanistRegular,
                                                  color: darkModeController
                                                          .isLightTheme.value
                                                      ? ColorConfig.kBlackColor
                                                      : ColorConfig.kWhiteColor,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize:
                                                      FontConfig.kFontSize14,
                                                )),
                                            const SizedBox(
                                              width: SizeConfig.kHeight54,
                                            ),
                                            GestureDetector(
                                              onTapDown:
                                                  (TapDownDetails details) {
                                                _showPopupMenu(context,
                                                    details.globalPosition);
                                              },
                                              child: Image.asset(
                                                ImagePath.dots,
                                                height: SizeConfig.kHeight4,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(StringConfig.cardText,
                                          style: TextStyle(
                                            fontFamily: FontFamilyConfig
                                                .urbanistRegular,
                                            color: darkModeController
                                                    .isLightTheme.value
                                                ? ColorConfig.kBlackColor
                                                : ColorConfig.kWhiteColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: FontConfig.kFontSize13,
                                          )),
                                      const SizedBox(
                                        height: SizeConfig.kHeight4,
                                      ),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(StringConfig.expiryDate,
                                                style: TextStyle(
                                                  fontFamily: FontFamilyConfig
                                                      .urbanistRegular,
                                                  color: darkModeController
                                                          .isLightTheme.value
                                                      ? ColorConfig.kBlackColor
                                                      : ColorConfig.kWhiteColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize:
                                                      FontConfig.kFontSize8,
                                                )),
                                            Text(StringConfig.date2,
                                                style: TextStyle(
                                                  fontFamily: FontFamilyConfig
                                                      .urbanistRegular,
                                                  color: darkModeController
                                                          .isLightTheme.value
                                                      ? ColorConfig.kBlackColor
                                                      : ColorConfig.kWhiteColor,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize:
                                                      FontConfig.kFontSize13,
                                                )),
                                          ])
                                    ])
                              ])),
                        ),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight25,
                      ),
                      Obx(
                        () => GestureDetector(
                            onTap: () {
                              radioController.isSecSelected.value = true;
                              radioController.isSelected.value = false;
                            },
                            child: Container(
                                height: SizeConfig.kHeight101,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                    left: SizeConfig.kHeight10),
                                decoration: BoxDecoration(
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kWhiteColor
                                        : ColorConfig.kDarkModeColor,
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.borderRadius8),
                                    border: Border.all(
                                        color:
                                            radioController.isSecSelected.value
                                                ? ColorConfig.kPrimaryColor
                                                : ColorConfig.kWhiteColor,
                                        width:
                                            radioController.isSecSelected.value
                                                ? 2
                                                : 2),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          color: ColorConfig.kShadowColor
                                              .withOpacity(0.1),
                                          blurRadius: 3,
                                          offset: const Offset(0, 0))
                                    ]),
                                child: Row(children: [
                                  Image.asset(
                                    ImagePath.onlyCard,
                                    height: SizeConfig.kHeight100,
                                    width: SizeConfig.kHeight134,
                                  ),
                                  const SizedBox(
                                    width: SizeConfig.kHeight10,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: SizeConfig.padding13,
                                              bottom: SizeConfig.padding10),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(StringConfig.wadeWarren,
                                                  style: TextStyle(
                                                    fontFamily: FontFamilyConfig
                                                        .urbanistRegular,
                                                    color: darkModeController
                                                            .isLightTheme.value
                                                        ? ColorConfig
                                                            .kBlackColor
                                                        : ColorConfig
                                                            .kWhiteColor,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize:
                                                        FontConfig.kFontSize14,
                                                  )),
                                              const SizedBox(
                                                width: SizeConfig.kHeight52,
                                              ),
                                              GestureDetector(
                                                  onTap: () {
                                                    buildPopupDialog(context);
                                                  },
                                                  child: Image.asset(
                                                    ImagePath.dots,
                                                    height: SizeConfig.kHeight4,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Text(StringConfig.cardText,
                                            style: TextStyle(
                                              fontFamily: FontFamilyConfig
                                                  .urbanistRegular,
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kBlackColor
                                                  : ColorConfig.kWhiteColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: FontConfig.kFontSize13,
                                            )),
                                        const SizedBox(
                                          height: SizeConfig.kHeight4,
                                        ),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(StringConfig.expiryDate,
                                                  style: TextStyle(
                                                    fontFamily: FontFamilyConfig
                                                        .urbanistRegular,
                                                    color: darkModeController
                                                            .isLightTheme.value
                                                        ? ColorConfig
                                                            .kBlackColor
                                                        : ColorConfig
                                                            .kWhiteColor,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize:
                                                        FontConfig.kFontSize8,
                                                  )),
                                              Text(StringConfig.date2,
                                                  style: TextStyle(
                                                    fontFamily: FontFamilyConfig
                                                        .urbanistRegular,
                                                    color: darkModeController
                                                            .isLightTheme.value
                                                        ? ColorConfig
                                                            .kBlackColor
                                                        : ColorConfig
                                                            .kWhiteColor,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize:
                                                        FontConfig.kFontSize13,
                                                  ))
                                            ])
                                      ])
                                ]))),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(StringConfig.otherPaymentOption,
                            style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: FontConfig.kFontSize16,
                            )),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight20,
                      ),
                      Column(children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                bottom: SizeConfig.kHeight20),
                            child: Container(
                                height: SizeConfig.kHeight50,
                                decoration: BoxDecoration(
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kWhiteColor
                                        : ColorConfig.kDarkModeColor,
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.kHeight8),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          color: ColorConfig.kShadowColor
                                              .withOpacity(0.1),
                                          blurRadius: 3,
                                          offset: const Offset(0, 0))
                                    ]),
                                child: Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: SizeConfig.kHeight20),
                                    child: Image.asset(
                                      ImagePath.visa,
                                      height: SizeConfig.kHeight37,
                                      width: SizeConfig.kHeight37,
                                    ),
                                  ),
                                  Text(StringConfig.debitCreditCard,
                                      style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontSize: FontConfig.kFontSize16,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w600)),
                                  const Spacer(),
                                  Obx(() => Radio(
                                      value: StringConfig.debitCreditCard,
                                      groupValue:
                                          radioController.selectedOption.value,
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) =>
                                              ColorConfig.kPrimaryColor),
                                      onChanged: (value) {
                                        radioController.selectedOption.value =
                                            value!;
                                      }))
                                ]))),
                        Padding(
                            padding: const EdgeInsets.only(
                                bottom: SizeConfig.kHeight20),
                            child: Container(
                                height: SizeConfig.kHeight50,
                                decoration: BoxDecoration(
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kWhiteColor
                                        : ColorConfig.kDarkModeColor,
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.kHeight8),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          color: ColorConfig.kShadowColor
                                              .withOpacity(0.1),
                                          blurRadius: 3,
                                          offset: const Offset(0, 0))
                                    ]),
                                child: Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: SizeConfig.kHeight24),
                                    child: Image.asset(
                                      ImagePath.netBanking,
                                      height: SizeConfig.kHeight28,
                                      width: SizeConfig.kHeight28,
                                    ),
                                  ),
                                  Text(StringConfig.netBanking,
                                      style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontSize: FontConfig.kFontSize16,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w600)),
                                  const Spacer(),
                                  Obx(() => Radio(
                                      value: StringConfig.netBanking,
                                      groupValue:
                                          radioController.selectedOption.value,
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) =>
                                              ColorConfig.kPrimaryColor),
                                      onChanged: (value) {
                                        radioController.selectedOption.value =
                                            value!;
                                      }))
                                ])))
                      ]),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: SizeConfig.kHeight20),
                        child: Container(
                            height: SizeConfig.kHeight50,
                            decoration: BoxDecoration(
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kWhiteColor
                                    : ColorConfig.kDarkModeColor,
                                borderRadius:
                                    BorderRadius.circular(SizeConfig.kHeight8),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      color: ColorConfig.kShadowColor
                                          .withOpacity(0.1),
                                      blurRadius: 3,
                                      offset: const Offset(0, 0))
                                ]),
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: SizeConfig.kHeight20),
                                child: Image.asset(
                                  ImagePath.upi,
                                  height: SizeConfig.kHeight35,
                                  width: SizeConfig.kHeight35,
                                ),
                              ),
                              Text(StringConfig.upiPayment,
                                  style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      fontSize: FontConfig.kFontSize16,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600)),
                              const Spacer(),
                              Obx(() => Radio(
                                  value: StringConfig.upiPayment,
                                  groupValue:
                                      radioController.selectedOption.value,
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => ColorConfig.kPrimaryColor),
                                  onChanged: (value) {
                                    radioController.selectedOption.value =
                                        value!;
                                  }))
                            ])),
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight20,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: SizeConfig.padding15),
                    child: CommonMaterialButton(
                        width: double.infinity,
                        buttonColor: ColorConfig.kPrimaryColor,
                        height: SizeConfig.kHeight52,
                        txtColor: ColorConfig.kWhiteColor,
                        buttonText: StringConfig.placeOrder,
                        onButtonClick: () {
                          creditCardBottomSheet(context);
                        }),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  buildPopupDialog(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(StringConfig.creditAndDebitCard,
                    style: TextStyle(
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      color: ColorConfig.kBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: FontConfig.kFontSize16,
                    )),
              )
            ]));
  }

  void _showPopupMenu(BuildContext context, Offset tapPosition) {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        tapPosition,
        tapPosition,
      ),
      Offset.zero & overlay.size,
    );

    showMenu(
      context: context,
      position: position,
      constraints: const BoxConstraints(
        maxWidth: SizeConfig.kHeight130,
      ),
      color: darkModeController.isLightTheme.value
          ? ColorConfig.kWhiteColor
          : ColorConfig.kBlackColor,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeConfig.borderRadius8),
        borderSide: BorderSide.none,
      ),
      items: [
        PopupMenuItem(
          value: 'delete',
          child: Text('Delete Card',
              style: TextStyle(
                fontFamily: FontFamilyConfig.urbanistSemiBold,
                color: darkModeController.isLightTheme.value
                    ? ColorConfig.kBlackColor
                    : ColorConfig.kWhiteColor,
                fontWeight: FontWeight.w500,
                fontSize: FontConfig.kFontSize14,
              )),
        ),
      ],
    ).then((value) {
      if (value == 'delete') {}
    });
  }
}
