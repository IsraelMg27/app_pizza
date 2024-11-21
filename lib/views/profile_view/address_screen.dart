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
import '../../app_routes/app_routes.dart';
import '../../utils/common_material_button.dart';

class AddressScreen extends StatelessWidget {
  AddressScreen({Key? key}) : super(key: key);
  final AddressController _addressController = Get.put(AddressController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          backgroundColor: darkModeController.isLightTheme.value
              ? ColorConfig.kWhiteColor
              : ColorConfig.kBlackColor,
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
                Padding(
                  padding: const EdgeInsets.only(
                      top: SizeConfig.kHeight5,
                      bottom: SizeConfig.kHeight20,
                      left: SizeConfig.kHeight15),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(SizeConfig.kHeight12),
                      color: darkModeController.isLightTheme.value
                          ? ColorConfig.kWhiteColor
                          : ColorConfig.kBlackColor,
                      boxShadow: [
                        BoxShadow(
                          color: darkModeController.isLightTheme.value
                              ? Colors.grey.withOpacity(SizeConfig.kOpp02)
                              : Colors.grey.withOpacity(SizeConfig.kOpp1),
                          blurRadius: 10,
                          // soften the shadow
                          spreadRadius: SizeConfig.kHeight2,
                          //extend the shadow
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            ImagePath.fillLocation,
                            height: SizeConfig.kHeight25,
                            width: SizeConfig.kHeight25,
                          ),
                          const SizedBox(
                            width: SizeConfig.kHeight10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(StringConfig.home,
                                      style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistSemiBold,
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: FontConfig.kFontSize17,
                                      )),
                                  const SizedBox(
                                    width: SizeConfig.kHeight15,
                                  ),
                                  Container(
                                    height: SizeConfig.kHeight15,
                                    width: SizeConfig.kHeight40,
                                    decoration: BoxDecoration(
                                      color: ColorConfig.kPrimaryColor
                                          .withOpacity(SizeConfig.kOpp1),
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.kHeight3),
                                    ),
                                    child: Center(
                                      child: Text(
                                        StringConfig.defult,
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistMedium,
                                          color: darkModeController
                                                  .isLightTheme.value
                                              ? ColorConfig.kPrimaryColor
                                              : ColorConfig.kWhiteColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: FontConfig.kFontSize10,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height /
                                    SizeConfig.kHeight150,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width /
                                    SizeConfig.kH16,
                                child: Text(StringConfig.address1,
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistRegular,
                                      color: darkModeController
                                              .isLightTheme.value
                                          ? ColorConfig.kHintColor
                                          : ColorConfig.kDarkModeDividerColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: FontConfig.kFontSize14,
                                    )),
                              ),
                              const Spacer(),
                            ],
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoutes.editAddressView);
                            },
                            child: Image.asset(
                              ImagePath.pen2,
                              height: SizeConfig.kHeight20,
                              width: SizeConfig.kHeight20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                ...List.generate(
                  _addressController.addressList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(
                        top: SizeConfig.kHeight5,
                        bottom: SizeConfig.kHeight20,
                        left: SizeConfig.kHeight15),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 7,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(SizeConfig.kHeight12),
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kBlackColor,
                        boxShadow: [
                          BoxShadow(
                            color: darkModeController.isLightTheme.value
                                ? Colors.grey.withOpacity(SizeConfig.kOpp02)
                                : Colors.grey.withOpacity(SizeConfig.kOpp1),
                            blurRadius: 10,
                            // soften the shadow
                            spreadRadius: SizeConfig.kHeight2,
                            //extend the shadow
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              ImagePath.fillLocation,
                              height: SizeConfig.kHeight25,
                              width: SizeConfig.kHeight25,
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    _addressController.addressList[index]
                                        ['text'],
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kWhiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: FontConfig.kFontSize17,
                                    )),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 150,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  child: Text(
                                      _addressController.addressList[index]
                                          ['subText'],
                                      style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistRegular,
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kHintColor
                                            : ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: FontConfig.kFontSize14,
                                      )),
                                ),
                                const Spacer(),
                              ],
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.editAddressView);
                              },
                              child: Image.asset(
                                ImagePath.pen2,
                                height: SizeConfig.kHeight20,
                                width: SizeConfig.kHeight20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: SizeConfig.kHeight70,
            child: Center(
              child: CommonMaterialButton(
                buttonColor: ColorConfig.kPrimaryColor,
                height: SizeConfig.kHeight52,
                txtColor: ColorConfig.kWhiteColor,
                buttonText: StringConfig.addNewAddress,
                onButtonClick: () {
                  Get.toNamed(AppRoutes.addNewAddressForm);
                },
                width: double.infinity,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
