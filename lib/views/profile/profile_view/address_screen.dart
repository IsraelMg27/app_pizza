// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/address_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';
import '../../../config/color.dart';
import '../../../config/font_config.dart';
import '../../../config/font_family.dart';
import '../../../config/image_path.dart';
import '../../../config/size_config.dart';
import '../../../config/string_config.dart';
import '../../../utils/appbar_common.dart';

class AddressScreen extends StatelessWidget {
  AddressScreen({Key? key}) : super(key: key);
  final AddressController _addressController = Get.put(AddressController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConfig.kWhiteColor,
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
                child: CommonAppBar(
                  title: StringConfig.addressProfile,
                  leadingImage: ImagePath.arrow,
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kBlackColor
                      : ColorConfig.kWhiteColor,
                  leadingOnTap: () {
                    Get.back();
                  },
                )),
            body: Padding(
                padding: const EdgeInsets.only(
                    left: SizeConfig.kHeight10,
                    right: SizeConfig.kHeight20,
                    top: SizeConfig.kHeight10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(
                          _addressController.addressList.length,
                          (index) => Padding(
                                padding: const EdgeInsets.only(
                                    top: SizeConfig.kHeight5,
                                    bottom: SizeConfig.kHeight20,
                                    left: SizeConfig.kHeight15),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 9.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.kHeight12),
                                    color: ColorConfig.kWhiteColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        blurRadius: 10, // soften the shadow
                                        spreadRadius: SizeConfig
                                            .kHeight2, //extend the shadow
                                        offset: const Offset(0.0, 0.0),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: SizeConfig.kHeight12,
                                        left: SizeConfig.kHeight12,
                                        right: SizeConfig.kHeight12),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          ImagePath.fillLocation,
                                          height: SizeConfig.kHeight30,
                                          width: SizeConfig.kHeight30,
                                        ),
                                        const SizedBox(
                                          width: SizeConfig.kHeight10,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                _addressController
                                                    .addressList[index]['text'],
                                                style: TextStyle(
                                                  fontFamily: FontFamilyConfig
                                                      .urbanistSemiBold,
                                                  color:
                                                      ColorConfig.kBlackColor,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize:
                                                      FontConfig.kFontSize17,
                                                )),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  150,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.6,
                                              child: Text(
                                                  _addressController
                                                          .addressList[index]
                                                      ['subText'],
                                                  style: TextStyle(
                                                    fontFamily: FontFamilyConfig
                                                        .urbanistRegular,
                                                    color:
                                                        ColorConfig.kHintColor,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize:
                                                        FontConfig.kFontSize14,
                                                  )),
                                            ),
                                            const Spacer(),
                                          ],
                                        ),
                                        const Spacer(),
                                        Image.asset(
                                          ImagePath.pen2,
                                          height: SizeConfig.kHeight20,
                                          width: SizeConfig.kHeight20,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                    ]))));
  }
}
