// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';
import 'package:timelines/timelines.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import 'cancel_order_bottomsheet.dart';

class CommonProductDetaile extends StatelessWidget {
  String? image;
  String? name;
  String? veg;
  String? price;
  bool? isCompleted;
  bool? isOpen;
  String? completeText;
  Color? textColor;
  bool? isCancel;
  String? fillContainerText;
  String? unFillContainerText;

  CommonProductDetaile(
      {super.key,
      this.image,
      this.name,
      this.price,
      this.veg,
      this.isCompleted = false,
      this.isOpen = false,
      this.textColor,
      this.isCancel = false,
      this.completeText,
      this.fillContainerText,
      this.unFillContainerText});

  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.borderRadius12),
        color: darkModeController.isLightTheme.value
            ? ColorConfig.kWhiteColor
            : ColorConfig.kDarkModeColor,
        boxShadow: [
          BoxShadow(
              color: ColorConfig.kBlackColor.withOpacity(SizeConfig.kH02),
              blurRadius: SizeConfig.borderRadius6,
              offset: const Offset(SizeConfig.kHeight0, SizeConfig.kHeight0)),
        ],
      ),
      height: isCancel == true
          ? MediaQuery.of(context).size.height / 3.9
          : MediaQuery.of(context).size.height / 6.3,
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
                      image ?? "",
                      fit: BoxFit.fill,
                      height: SizeConfig.kHeight40,
                      width: SizeConfig.kHeight45,
                    ),
                    const SizedBox(
                      width: SizeConfig.kHeight10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name ?? "",
                            style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: FontConfig.kFontSize16,
                            )),
                        const SizedBox(height: SizeConfig.kHeight4),
                        Text(
                          StringConfig.dPizzaAddressNew,
                          style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistRegular,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontSize: FontConfig.kFontSize12,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: SizeConfig.kHeight12),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Divider(
              height: SizeConfig.kHeight1,
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
                        veg ?? "",
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
                        StringConfig.farmVillaPizza,
                        style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistSemiBold,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontSize: FontConfig.kFontSize12,
                            fontWeight: FontWeight.w400),
                      ),
                      const VerticalDivider(
                        endIndent: 3,
                        indent: 3,
                      ),
                      Text(
                        StringConfig.mediumInches,
                        style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
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
            const Divider(
              height: SizeConfig.kHeight18,
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
            isCancel == true
                ? Column(
                    children: [
                      const Divider(
                        height: SizeConfig.kHeight18,
                      ),
                      const SizedBox(
                        height: SizeConfig.kHeight3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          isOpen == true
                              ? GestureDetector(
                                  onTap: () {
                                    cancelOrderBottomSheet(context);
                                  },
                                  child: Container(
                                    height: SizeConfig.kHeight32,
                                    width: MediaQuery.of(context).size.width /
                                        SizeConfig.kH27,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            SizeConfig.kHeight50),
                                        border: Border.all(
                                            color: ColorConfig.kPrimaryColor,
                                            width: SizeConfig.kH15)),
                                    child: Center(
                                      child: Text(fillContainerText ?? "",
                                          style: TextStyle(
                                            fontFamily: FontFamilyConfig
                                                .urbanistSemiBold,
                                            color: ColorConfig.kPrimaryColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: FontConfig.kFontSize13,
                                          )),
                                    ),
                                  ),
                                )
                              : Container(
                                  height: SizeConfig.kHeight32,
                                  width: MediaQuery.of(context).size.width /
                                      SizeConfig.kH27,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.kHeight50),
                                      border: Border.all(
                                          color: ColorConfig.kPrimaryColor,
                                          width: SizeConfig.kH15)),
                                  child: Center(
                                    child: Text(fillContainerText ?? "",
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          color: ColorConfig.kPrimaryColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize13,
                                        )),
                                  ),
                                ),
                          isOpen == true
                              ? GestureDetector(
                                  onTap: () async {
                                    trackOrderBottomSheet(context);
                                    // Get.toNamed(AppRoutes.location);
                                    // final availableMaps = await MapLauncher.installedMaps;
                                    // availableMaps[0].showMarker(
                                    //   coords: Coords(37.4220041, -122.0862462),
                                    //   title: 'Set Your Location',
                                    //   description: 'Googleplex',
                                    // );
                                    // trackOrderBottomSheet(context);
                                  },
                                  child: Container(
                                      height: SizeConfig.kHeight32,
                                      width: MediaQuery.of(context).size.width /
                                          SizeConfig.kH26,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              SizeConfig.kHeight50),
                                          color: ColorConfig.kPrimaryColor),
                                      child: Center(
                                          child: Text(unFillContainerText ?? "",
                                              style: TextStyle(
                                                fontFamily: FontFamilyConfig
                                                    .urbanistSemiBold,
                                                color: ColorConfig.kWhiteColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize:
                                                    FontConfig.kFontSize13,
                                              )))),
                                )
                              : Container(
                                  height: SizeConfig.kHeight32,
                                  width: MediaQuery.of(context).size.width /
                                      SizeConfig.kH26,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.kHeight50),
                                      color: ColorConfig.kPrimaryColor),
                                  child: Center(
                                    child: Text(
                                      unFillContainerText ?? "",
                                      style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistSemiBold,
                                        color: ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: FontConfig.kFontSize13,
                                      ),
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  trackOrderBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        useSafeArea: true,
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(SizeConfig.borderRadius25),
            topRight: Radius.circular(SizeConfig.borderRadius25),
          ),
        ),
        backgroundColor: darkModeController.isLightTheme.value
            ? ColorConfig.kWhiteColor
            : ColorConfig.kWhiteColor,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: SizeConfig.kHeight20,
                    horizontal: SizeConfig.kHeight20),
                child: SingleChildScrollView(
                  child: Column(children: [
                    Padding(
                        padding: const EdgeInsets.all(SizeConfig.kHeight15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                StringConfig.trackOrder,
                                style: TextStyle(
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: SizeConfig.kHeight20),
                              )
                            ])),
                    const Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: SizeConfig.kHeight40),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 17,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(SizeConfig.kHeight12),
                          color: ColorConfig.kTabColor
                              .withOpacity(SizeConfig.kOpp03),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              StringConfig.timeSquareNYCSurat,
                              style: TextStyle(
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  fontSize: SizeConfig.kHeight14),
                            ),
                            Image.asset(ImagePath.mapPoint,
                                height: SizeConfig.kHeight16)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 7,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius12),
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kBlackColor,
                        boxShadow: [
                          BoxShadow(
                              color: ColorConfig.kHintColor
                                  .withOpacity(SizeConfig.kH02),
                              blurRadius: SizeConfig.borderRadius6,
                              offset: const Offset(
                                  SizeConfig.kHeight0, SizeConfig.kHeight0)),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: FixedTimeline.tileBuilder(
                          theme: TimelineThemeData(
                            nodePosition: 0,
                            color: Colors.white,
                            indicatorTheme: const IndicatorThemeData(
                              size: 20.0,
                            ),
                          ),
                          builder: TimelineTileBuilder.connected(
                            itemCount: 4,
                            connectionDirection: ConnectionDirection.before,
                            contentsBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringConfig.orderPlaced,
                                          style: TextStyle(
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kBlackColor
                                                  : ColorConfig.kWhiteColor,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: FontFamilyConfig
                                                  .urbanistSemiBold,
                                              fontSize: SizeConfig.kHeight14),
                                        ),
                                        Text(
                                          index == 2
                                              ? StringConfig.pending
                                              : StringConfig.septemberAM,
                                          style: TextStyle(
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kBlackColor
                                                  : ColorConfig.kWhiteColor,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: FontFamilyConfig
                                                  .urbanistRegular,
                                              fontSize: SizeConfig.kHeight12),
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    index == 0
                                        ? Row(
                                            children: [
                                              Image.asset(
                                                ImagePath.timer,
                                                height: SizeConfig.kHeight15,
                                                color:
                                                    ColorConfig.kPrimaryColor,
                                              ),
                                              const SizedBox(
                                                width: SizeConfig.kHeight5,
                                              ),
                                              Text(
                                                StringConfig.onTime,
                                                style: TextStyle(
                                                    color: darkModeController
                                                            .isLightTheme.value
                                                        ? ColorConfig
                                                            .kBlackColor
                                                        : ColorConfig
                                                            .kWhiteColor,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: FontFamilyConfig
                                                        .urbanistSemiBold,
                                                    fontSize:
                                                        SizeConfig.kHeight12),
                                              )
                                            ],
                                          )
                                        : Container()
                                  ],
                                ),
                              );
                            },
                            indicatorBuilder: (_, index) {
                              return index == 2
                                  ? CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                          ColorConfig.kButtonLightColor,
                                      child: Image.asset(
                                        ImagePath.scooter,
                                        height: SizeConfig.kHeight16,
                                      ))
                                  : index == 3
                                      ? CircleAvatar(
                                          radius: 20,
                                          backgroundColor:
                                              ColorConfig.kButtonLightColor,
                                          child: Image.asset(
                                            ImagePath.scooter,
                                            height: SizeConfig.kHeight16,
                                          ))
                                      : CircleAvatar(
                                          radius: 20,
                                          backgroundColor:
                                              ColorConfig.kButtonLightColor,
                                          child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor:
                                                  ColorConfig.kPrimaryColor,
                                              child: Image.asset(
                                                ImagePath.mapPoint,
                                                height: SizeConfig.kHeight15,
                                                color: ColorConfig.kWhiteColor,
                                              )));
                            },
                            connectorBuilder: (_, index, type) {
                              return index == 3
                                  ? Container(
                                      width: 1,
                                      height: 20,
                                      color: ColorConfig.kWhiteColor,
                                    )
                                  : Container(
                                      width: 1,
                                      height: 20,
                                      color: ColorConfig.kPrimaryColor,
                                    );
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: SizeConfig.kHeight15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 7,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius12),
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kBlackColor,
                        boxShadow: [
                          BoxShadow(
                              color: ColorConfig.kHintColor
                                  .withOpacity(SizeConfig.kH02),
                              blurRadius: 2,
                              offset: const Offset(
                                  SizeConfig.kHeight0, SizeConfig.kHeight0)),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: CircleAvatar(
                                  backgroundColor: ColorConfig.kPrimaryColor,
                                  radius: 20,
                                  child: Image.asset(
                                    ImagePath.scooter,
                                    height: SizeConfig.kHeight16,
                                    color: ColorConfig.kWhiteColor,
                                  )),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  StringConfig.zomato,
                                  style: TextStyle(
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      fontSize: SizeConfig.kHeight14),
                                ),
                                const SizedBox(
                                  height: SizeConfig.kHeight5,
                                ),
                                Text(
                                  StringConfig.utranSurat,
                                  style: TextStyle(
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w400,
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      fontSize: SizeConfig.kHeight12),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: SizeConfig.kHeight15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 7,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius12),
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kBlackColor,
                        boxShadow: [
                          BoxShadow(
                              color: ColorConfig.kHintColor
                                  .withOpacity(SizeConfig.kH02),
                              blurRadius: SizeConfig.borderRadius6,
                              offset: const Offset(
                                  SizeConfig.kHeight0, SizeConfig.kHeight0)),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: CircleAvatar(
                                  backgroundColor: ColorConfig.kPrimaryColor,
                                  radius: 20,
                                  child: Image.asset(
                                    ImagePath.bag,
                                    height: SizeConfig.kHeight16,
                                    color: ColorConfig.kWhiteColor,
                                  )),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  StringConfig.orderDetails,
                                  style: TextStyle(
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      fontSize: SizeConfig.kHeight14),
                                ),
                                const SizedBox(
                                  height: SizeConfig.kHeight5,
                                ),
                                Text(
                                  StringConfig.string1,
                                  style: TextStyle(
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w400,
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      fontSize: SizeConfig.kHeight12),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: SizeConfig.kHeight15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 7,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.borderRadius12),
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kBlackColor,
                        boxShadow: [
                          BoxShadow(
                              color: ColorConfig.kHintColor
                                  .withOpacity(SizeConfig.kH02),
                              blurRadius: SizeConfig.borderRadius6,
                              offset: const Offset(
                                  SizeConfig.kHeight0, SizeConfig.kHeight0)),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: CircleAvatar(
                                  backgroundColor: ColorConfig.kPrimaryColor,
                                  radius: 20,
                                  child: Image.asset(
                                    ImagePath.mapPoint,
                                    height: SizeConfig.kHeight16,
                                    color: ColorConfig.kWhiteColor,
                                  )),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  StringConfig.deliveryAddress,
                                  style: TextStyle(
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      fontSize: SizeConfig.kHeight14),
                                ),
                                const SizedBox(
                                  height: SizeConfig.kHeight5,
                                ),
                                Text(
                                  StringConfig.string2,
                                  style: TextStyle(
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w400,
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      fontSize: SizeConfig.kHeight12),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ));
          });
        });
  }
}
