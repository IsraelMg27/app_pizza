// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/image_path.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:get/get.dart';
import '../../../../../config/color.dart';
import '../../../../../config/font_config.dart';
import '../../../../../config/font_family.dart';
import '../../../../../config/size_config.dart';
import '../../controller/dark_mode_controller.dart';

class ContactUsView extends StatelessWidget {
  ContactUsView({Key? key}) : super(key: key);

  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: SizeConfig.kHeight10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(StringConfig.getInTouch,
                  style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistSemiBold,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: FontConfig.kFontSize18,
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: SizeConfig.kHeight10),
                child: Text(StringConfig.weLoveToHearFromYou,
                    style: TextStyle(
                      fontFamily: FontFamilyConfig.urbanistRegular,
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kBlackColor
                              .withOpacity(SizeConfig.kOpp08)
                          : ColorConfig.kWhiteColor,
                      fontWeight: FontWeight.w400,
                      fontSize: FontConfig.kFontSize14,
                    )),
              ),
              const SizedBox(
                height: SizeConfig.kHeight20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    ImagePath.letter,
                    height: SizeConfig.kHeight20,
                    width: SizeConfig.kHeight20,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                  ),
                  const SizedBox(
                    width: SizeConfig.kHeight20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(StringConfig.emailUs,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistSemiBold,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w600,
                            fontSize: FontConfig.kFontSize16,
                          )),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: SizeConfig.kHeight5),
                        child: Text(StringConfig.ourFriendlyTeamIsHereToHelp,
                            style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistRegular,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kHintColor
                                      .withOpacity(SizeConfig.kOpp05)
                                  : ColorConfig.kDividerColor.withOpacity(.9),
                              fontWeight: FontWeight.w400,
                              fontSize: FontConfig.kFontSize14,
                            )),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 90,
                        child: Divider(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kDividerColor
                              : ColorConfig.kFillColor,
                          height: SizeConfig.kHeight25,
                        ),
                      ),
                      Text(StringConfig.email1,
                          style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistSemiBold,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontWeight: FontWeight.w600,
                            fontSize: FontConfig.kFontSize14,
                          )),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: SizeConfig.kHeight40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    ImagePath.mapPoint,
                    height: SizeConfig.kHeight20,
                    width: SizeConfig.kHeight20,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                  ),
                  const SizedBox(
                    width: SizeConfig.kHeight20,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(StringConfig.office,
                            style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: FontConfig.kFontSize16,
                            )),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: SizeConfig.kHeight5),
                          child: Text(StringConfig.comeSayHelloAtOurOfficeHQ,
                              style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistRegular,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kHintColor
                                        .withOpacity(SizeConfig.kOpp05)
                                    : ColorConfig.kDividerColor.withOpacity(.9),
                                fontWeight: FontWeight.w400,
                                fontSize: FontConfig.kFontSize14,
                              )),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 90,
                          child: Divider(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kDividerColor
                                : ColorConfig.kFillColor,
                            height: SizeConfig.kHeight25,
                          ),
                        ),
                        Text(StringConfig.email2,
                            style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: FontConfig.kFontSize14,
                            ))
                      ])
                ],
              ),
              const SizedBox(
                height: SizeConfig.kHeight40,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Image.asset(
                  ImagePath.phone,
                  height: SizeConfig.kHeight20,
                  width: SizeConfig.kHeight20,
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kBlackColor
                      : ColorConfig.kWhiteColor,
                ),
                const SizedBox(
                  width: SizeConfig.kHeight20,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(StringConfig.phone,
                      style: TextStyle(
                        fontFamily: FontFamilyConfig.urbanistSemiBold,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kBlackColor
                            : ColorConfig.kWhiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: FontConfig.kFontSize16,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: SizeConfig.kHeight5),
                    child: Text(StringConfig.monFriFromAmToPm,
                        style: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistRegular,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kHintColor
                              : ColorConfig.kDividerColor.withOpacity(.9),
                          fontWeight: FontWeight.w400,
                          fontSize: FontConfig.kFontSize14,
                        )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 90,
                    child: Divider(
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kDividerColor
                          : ColorConfig.kFillColor,
                      height: SizeConfig.kHeight25,
                    ),
                  ),
                  Text(StringConfig.email3,
                      style: TextStyle(
                        fontFamily: FontFamilyConfig.urbanistSemiBold,
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kBlackColor
                            : ColorConfig.kWhiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: FontConfig.kFontSize14,
                      )),
                ])
              ]),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImagePath.whatsapp,
                    height: SizeConfig.kHeight18,
                    width: SizeConfig.kHeight18,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kTextfieldTextColor
                        : ColorConfig.kWhiteColor,
                  ),
                  const SizedBox(
                    width: SizeConfig.kHeight24,
                  ),
                  Image.asset(
                    ImagePath.facebook,
                    height: SizeConfig.kHeight18,
                    width: SizeConfig.kHeight18,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kTextfieldTextColor
                        : ColorConfig.kWhiteColor,
                  ),
                  const SizedBox(
                    width: SizeConfig.kHeight24,
                  ),
                  Image.asset(
                    ImagePath.twitter,
                    height: SizeConfig.kHeight18,
                    width: SizeConfig.kHeight18,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kTextfieldTextColor
                        : ColorConfig.kWhiteColor,
                  ),
                  const SizedBox(
                    width: SizeConfig.kHeight24,
                  ),
                  Image.asset(
                    ImagePath.instagram,
                    height: SizeConfig.kHeight18,
                    width: SizeConfig.kHeight18,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kTextfieldTextColor
                        : ColorConfig.kWhiteColor,
                  )
                ],
              ),
              const SizedBox(
                height: SizeConfig.kHeight10,
              ),
            ]));
  }
}
