// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/track_order_controller.dart';
import 'package:get/get.dart';
import 'package:timelines/timelines.dart';

import '../../config/color.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../controller/dark_mode_controller.dart';
import '../../utils/appbar_common.dart';
import '../map_screen/map_screen.dart';

class TrackOrderView extends StatelessWidget {
  TrackOrderView({Key? key}) : super(key: key);

  DarkModeController darkModeController = Get.put(DarkModeController());
  TrackOrderController trackOrderController = Get.put(TrackOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkModeController.isLightTheme.value
          ? ColorConfig.kWhiteColor
          : ColorConfig.kBlackColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
        child: CommonAppBar(
          title: StringConfig.trackOrder,
          leadingImage: ImagePath.arrow,
          color: darkModeController.isLightTheme.value
              ? ColorConfig.kBlackColor
              : ColorConfig.kWhiteColor,
          leadingOnTap: () {
            Get.back();
          },
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: SizeConfig.kHeight400,
              floating: true,
              pinned: false,
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                background: MapScreen(
                  latitude: "37.4220041",
                  longitude: "-122.0862462",
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0),
                child: Container(
                  color: Colors.transparent,
                  child: const Text(''),
                ),
              ),
            ),
          ];
        },
        body: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(SizeConfig.borderRadius34),
            topLeft: Radius.circular(SizeConfig.borderRadius34),
          ),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(SizeConfig.borderRadius34),
                topLeft: Radius.circular(SizeConfig.borderRadius34),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: SizeConfig.kHeight5,
                            horizontal: SizeConfig.kHeight20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: SizeConfig.kHeight20),
                              child: Container(
                                width: double.infinity,
                                height: MediaQuery.of(context).size.height / 17,
                                padding: const EdgeInsets.only(
                                  left: SizeConfig.kHeight10,
                                  right: SizeConfig.kHeight10,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.kHeight12),
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kTabColor
                                      : ColorConfig.kDarkModeColor,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      StringConfig.timeSquareNYCSurat,
                                      style: TextStyle(
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w600,
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          fontSize: SizeConfig.kHeight14),
                                    ),
                                    Image.asset(
                                      ImagePath.mapPoint,
                                      height: SizeConfig.kHeight16,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.borderRadius12),
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kWhiteColor
                                    : ColorConfig.kDarkModeColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: SizeConfig.kHeight20),
                                child: FixedTimeline.tileBuilder(
                                  theme: TimelineThemeData(
                                    nodePosition: 0,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kWhiteColor
                                        : ColorConfig.kDarkModeColor,
                                    indicatorTheme: const IndicatorThemeData(
                                      size: 20.0,
                                    ),
                                  ),
                                  builder: TimelineTileBuilder.connected(
                                    itemCount: 4,
                                    connectionDirection:
                                        ConnectionDirection.before,
                                    contentsBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 25),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  trackOrderController
                                                      .trackList[index],
                                                  style: TextStyle(
                                                      color: darkModeController
                                                              .isLightTheme
                                                              .value
                                                          ? ColorConfig
                                                              .kBlackColor
                                                          : ColorConfig
                                                              .kWhiteColor,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily:
                                                          FontFamilyConfig
                                                              .urbanistSemiBold,
                                                      fontSize:
                                                          SizeConfig.kHeight14),
                                                ),
                                                Text(
                                                  index == 2
                                                      ? StringConfig.pending
                                                      : StringConfig
                                                          .septemberAM,
                                                  style: TextStyle(
                                                      color: darkModeController
                                                              .isLightTheme
                                                              .value
                                                          ? ColorConfig
                                                              .kBlackColor
                                                          : ColorConfig
                                                              .kWhiteColor,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily:
                                                          FontFamilyConfig
                                                              .urbanistRegular,
                                                      fontSize:
                                                          SizeConfig.kHeight12),
                                                )
                                              ],
                                            ),
                                            const Spacer(),
                                            index == 0
                                                ? Row(
                                                    children: [
                                                      Image.asset(
                                                        ImagePath.timer,
                                                        height: SizeConfig
                                                            .kHeight15,
                                                        color: ColorConfig
                                                            .kPrimaryColor,
                                                      ),
                                                      const SizedBox(
                                                        width:
                                                            SizeConfig.kHeight5,
                                                      ),
                                                      Text(
                                                        StringConfig.onTime,
                                                        style: TextStyle(
                                                            color: darkModeController
                                                                    .isLightTheme
                                                                    .value
                                                                ? ColorConfig
                                                                    .kBlackColor
                                                                : ColorConfig
                                                                    .kWhiteColor,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontFamily:
                                                                FontFamilyConfig
                                                                    .urbanistSemiBold,
                                                            fontSize: SizeConfig
                                                                .kHeight12),
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
                                              backgroundColor: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig
                                                      .kButtonLightColor
                                                  : ColorConfig
                                                      .kDarkDialougeColor,
                                              child: Image.asset(
                                                ImagePath.scooter,
                                                height: SizeConfig.kHeight16,
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kBlackColor
                                                    : ColorConfig.kWhiteColor,
                                              ))
                                          : index == 3
                                              ? CircleAvatar(
                                                  radius: 20,
                                                  backgroundColor:
                                                      darkModeController
                                                              .isLightTheme
                                                              .value
                                                          ? ColorConfig
                                                              .kButtonLightColor
                                                          : ColorConfig
                                                              .kDarkDialougeColor,
                                                  child: Image.asset(
                                                    ImagePath.scooter,
                                                    height:
                                                        SizeConfig.kHeight16,
                                                    color: darkModeController
                                                            .isLightTheme.value
                                                        ? ColorConfig
                                                            .kBlackColor
                                                        : ColorConfig
                                                            .kWhiteColor,
                                                  ))
                                              : CircleAvatar(
                                                  radius: 20,
                                                  backgroundColor:
                                                      darkModeController
                                                              .isLightTheme
                                                              .value
                                                          ? ColorConfig
                                                              .kButtonLightColor
                                                          : ColorConfig
                                                              .kDarkDialougeColor,
                                                  child: CircleAvatar(
                                                      radius: 15,
                                                      backgroundColor:
                                                          ColorConfig
                                                              .kPrimaryColor,
                                                      child: Image.asset(
                                                        ImagePath.mapPoint,
                                                        height: SizeConfig
                                                            .kHeight15,
                                                        color: ColorConfig
                                                            .kWhiteColor,
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
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.borderRadius12),
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kWhiteColor
                                    : ColorConfig.kDarkModeColor,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: CircleAvatar(
                                          backgroundColor:
                                              ColorConfig.kPrimaryColor,
                                          radius: 20,
                                          child: Image.asset(
                                            ImagePath.scooter,
                                            height: SizeConfig.kHeight16,
                                            color: ColorConfig.kWhiteColor,
                                          )),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringConfig.zomato,
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
                                        const SizedBox(
                                          height: SizeConfig.kHeight5,
                                        ),
                                        Text(
                                          StringConfig.utranSurat,
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
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.borderRadius12),
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kWhiteColor
                                    : ColorConfig.kDarkModeColor,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: CircleAvatar(
                                          backgroundColor:
                                              ColorConfig.kPrimaryColor,
                                          radius: 20,
                                          child: Image.asset(
                                            ImagePath.bag,
                                            height: SizeConfig.kHeight16,
                                            color: ColorConfig.kWhiteColor,
                                          )),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringConfig.orderDetails,
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
                                        const SizedBox(
                                          height: SizeConfig.kHeight5,
                                        ),
                                        Text(
                                          StringConfig.string1,
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
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.borderRadius12),
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kWhiteColor
                                    : ColorConfig.kDarkModeColor,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: CircleAvatar(
                                          backgroundColor:
                                              ColorConfig.kPrimaryColor,
                                          radius: 20,
                                          child: Image.asset(
                                            ImagePath.mapPoint,
                                            height: SizeConfig.kHeight16,
                                            color: ColorConfig.kWhiteColor,
                                          )),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          StringConfig.deliveryAddress,
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
                                        const SizedBox(
                                          height: SizeConfig.kHeight5,
                                        ),
                                        Text(
                                          StringConfig.string2,
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
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
