// ignore_for_file: must_be_immutable

import 'dart:developer';
import 'dart:io';
import 'package:cupertino_will_pop_scope/cupertino_will_pop_scope.dart';
import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/app_routes/app_routes.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/bottom_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/profile_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../utils/appbar_common.dart';
import '../../utils/common_short_button.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  ProfileController profileController = Get.put(ProfileController());
  DarkModeController darkModeController = Get.put(DarkModeController());
  BottomNavigationController bottomController =
      Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return ConditionalWillPopScope(
      onWillPop: () {
        bottomController.controller.jumpToPage(0);
        bottomController.selected.value = 0;
        return Future(() => false);
      },
      shouldAddCallback: false,
      child: SafeArea(
          child: Obx(() => Scaffold(
              backgroundColor: darkModeController.isLightTheme.value
                  ? ColorConfig.kWhiteColor
                  : ColorConfig.kBlackColor,
              appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
                  child: CommonAppBar(
                    title: StringConfig.profile,
                    leadingImage: ImagePath.restarantMenu,
                    leadingOnTap: () {
                      // Get.back();
                    },
                  )),
              body: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: SizeConfig.kHeight10,
                          right: SizeConfig.kHeight20,
                          top: SizeConfig.kHeight24),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: SizeConfig.kHeight15,
                                  right: SizeConfig.kHeight5),
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.editProfileView);
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.kHeight12),
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kWhiteColor
                                        : ColorConfig.kBlackColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? Colors.grey
                                                .withOpacity(SizeConfig.kOpp02)
                                            : Colors.grey
                                                .withOpacity(SizeConfig.kOpp1),
                                        blurRadius: 10,
                                        // soften the shadow
                                        spreadRadius: SizeConfig.kHeight2,
                                        //extend the shadow
                                        offset: const Offset(0.0, 0.0),
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: SizeConfig.kHeight25,
                                      ),
                                      Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Container(
                                              width: SizeConfig.kHeight120,
                                              // Adjust the width and height as per your requirements
                                              height: SizeConfig.kHeight120,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color:
                                                      ColorConfig.kPrimaryColor,
                                                  width: SizeConfig.kHeight2,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    SizeConfig.kHeight2),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    ImagePath.profilePic,
                                                    height:
                                                        SizeConfig.kHeight100,
                                                    width: SizeConfig.kWidth100,
                                                    // Replace with your image URL
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0,
                                                      0,
                                                      SizeConfig.kHeight15,
                                                      0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  editProfileSheet(context);
                                                },
                                                child: Image.asset(
                                                    darkModeController
                                                            .isLightTheme.value
                                                        ? ImagePath.editProfile
                                                        : ImagePath
                                                            .editProfileDark,
                                                    height:
                                                        SizeConfig.kHeight25,
                                                    width:
                                                        SizeConfig.kHeight25),
                                              ),
                                            )
                                          ]),
                                      // _buildProfileImage(),
                                      const SizedBox(
                                        width: SizeConfig.kHeight25,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(StringConfig.johnQuil,
                                              style: TextStyle(
                                                fontFamily: FontFamilyConfig
                                                    .urbanistSemiBold,
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kBlackColor
                                                    : ColorConfig.kWhiteColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize:
                                                    FontConfig.kFontSize22,
                                              )),
                                          const SizedBox(
                                            height: SizeConfig.kHeight8,
                                          ),
                                          Text(StringConfig.phoneNumberString,
                                              style: TextStyle(
                                                fontFamily: FontFamilyConfig
                                                    .urbanistRegular,
                                                color: darkModeController
                                                        .isLightTheme.value
                                                    ? ColorConfig.kHintColor
                                                    : ColorConfig
                                                        .kDarkModeDividerColor,
                                                fontWeight: FontWeight.w400,
                                                fontSize:
                                                    FontConfig.kFontSize13,
                                              )),
                                          const SizedBox(
                                            height: SizeConfig.kHeight15,
                                          ),
                                          Row(
                                            children: [
                                              Text(StringConfig.viewActivity,
                                                  style: TextStyle(
                                                    fontFamily: FontFamilyConfig
                                                        .urbanistSemiBold,
                                                    color: ColorConfig
                                                        .kPrimaryColor,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize:
                                                        FontConfig.kFontSize13,
                                                  )),
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    ColorConfig.kPrimaryColor,
                                                size: SizeConfig.kHeight18,
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: SizeConfig.kHeight20,
                            ),
                            ...List.generate(
                                profileController.profileList.length,
                                (index) => GestureDetector(
                                      onTap: () {
                                        profileController.selectedIndex.value =
                                            index;
                                        profileController.selectedIndex.value ==
                                                0
                                            ? Get.toNamed(AppRoutes.reviews)
                                            : profileController
                                                        .selectedIndex.value ==
                                                    1
                                                ? Get.toNamed(AppRoutes.address)
                                                : profileController
                                                            .selectedIndex
                                                            .value ==
                                                        2
                                                    ? Get.toNamed(
                                                        AppRoutes.notification)
                                                    : Get.toNamed(
                                                        AppRoutes.settings);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: SizeConfig.kHeight5,
                                            bottom: SizeConfig.kHeight10,
                                            left: SizeConfig.kHeight17),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  profileController
                                                          .profileList[index]
                                                      ['image'],
                                                  height: SizeConfig.kHeight22,
                                                  width: SizeConfig.kHeight22,
                                                  color: darkModeController
                                                          .isLightTheme.value
                                                      ? ColorConfig.kBlackColor
                                                      : ColorConfig.kWhiteColor,
                                                ),
                                                const SizedBox(
                                                  width: SizeConfig.kHeight22,
                                                ),
                                                Text(
                                                    profileController
                                                            .profileList[index]
                                                        ['text'],
                                                    style: TextStyle(
                                                      fontFamily:
                                                          FontFamilyConfig
                                                              .urbanistSemiBold,
                                                      color: darkModeController
                                                              .isLightTheme
                                                              .value
                                                          ? ColorConfig
                                                              .kBlackColor
                                                          : ColorConfig
                                                              .kWhiteColor,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: FontConfig
                                                          .kFontSize18,
                                                    )),
                                                const Spacer(),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: darkModeController
                                                          .isLightTheme.value
                                                      ? ColorConfig.kBlackColor
                                                      : ColorConfig.kWhiteColor,
                                                  size: SizeConfig.kHeight18,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: SizeConfig.kHeight12,
                                            ),
                                            Divider(
                                              color: darkModeController
                                                      .isLightTheme.value
                                                  ? ColorConfig.kHintColor
                                                      .withOpacity(
                                                          SizeConfig.kOpp02)
                                                  : ColorConfig
                                                      .kDarkModeDividerColor
                                                      .withOpacity(
                                                          SizeConfig.kOpp06),
                                            )
                                          ],
                                        ),
                                      ),
                                    )),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: SizeConfig.kHeight15,
                                  top: SizeConfig.kHeight5),
                              child: GestureDetector(
                                onTap: () {
                                  logoutBottomSheet(context);
                                },
                                child: Row(
                                  children: [
                                    Image.asset(
                                      ImagePath.logout,
                                      height: SizeConfig.kHeight20,
                                      width: SizeConfig.kHeight20,
                                    ),
                                    const SizedBox(
                                      width: SizeConfig.kHeight25,
                                    ),
                                    Text(StringConfig.logout,
                                        style: TextStyle(
                                          fontFamily:
                                              FontFamilyConfig.urbanistSemiBold,
                                          color: ColorConfig.kPrimaryColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: FontConfig.kFontSize18,
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ])))))),
    );
  }

  logoutBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: darkModeController.isLightTheme.value
            ? ColorConfig.kWhiteColor
            : ColorConfig.kBlackColor,
        useRootNavigator: true,
        elevation: SizeConfig.kHeight10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(SizeConfig.kHeight42),
            topRight: Radius.circular(SizeConfig.kHeight42),
          ),
        ),
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: SizeConfig.kHeight20),
                child: SingleChildScrollView(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizeConfig.kHeight25),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          StringConfig.logout,
                          style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: FontConfig.kFontSize22),
                        ),
                        const SizedBox(height: SizeConfig.kHeight16),
                        Divider(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                    .withOpacity(SizeConfig.kOpp02)
                                : ColorConfig.kDarkModeDividerColor
                                    .withOpacity(SizeConfig.kOpp06),
                            height: SizeConfig.kOpp05),
                        const SizedBox(height: SizeConfig.kHeight32),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            StringConfig.areYouSureYouWantToLogOut,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: FontFamilyConfig.urbanistMedium,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.kHeight16),
                          ),
                        ),
                        const SizedBox(height: SizeConfig.kHeight40),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CommonShortButton(
                                  width:
                                      MediaQuery.of(context).size.width / 2.4,
                                  height: SizeConfig.kHeight48,
                                  buttonText: StringConfig.cancel,
                                  buttonColor: ColorConfig.kButtonLightColor,
                                  txtColor: ColorConfig.kPrimaryColor,
                                  onButtonClick: () {
                                    Get.back();
                                  }),
                              CommonShortButton(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  height: SizeConfig.kHeight48,
                                  buttonText: StringConfig.logout,
                                  buttonColor: ColorConfig.kPrimaryColor,
                                  txtColor: ColorConfig.kWhiteColor,
                                  onButtonClick: () {
                                    Get.offAllNamed(AppRoutes.signUpScreen);
                                  })
                            ]),
                        const SizedBox(height: SizeConfig.kHeight20),
                      ]),
                )));
          });
        });
  }

  editProfileSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: darkModeController.isLightTheme.value
            ? ColorConfig.kWhiteColor
            : ColorConfig.kBlackColor,
        useRootNavigator: true,
        elevation: SizeConfig.kHeight10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(SizeConfig.kHeight42),
            topRight: Radius.circular(SizeConfig.kHeight42),
          ),
        ),
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: SizeConfig.kHeight20),
                child: SingleChildScrollView(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizeConfig.kHeight25),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          StringConfig.addProfilePhoto,
                          style: TextStyle(
                              fontFamily: FontFamilyConfig.urbanistSemiBold,
                              color: darkModeController.isLightTheme.value
                                  ? ColorConfig.kBlackColor
                                  : ColorConfig.kWhiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: FontConfig.kFontSize22),
                        ),
                        const SizedBox(height: SizeConfig.kHeight16),
                        Divider(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                    .withOpacity(SizeConfig.kOpp02)
                                : ColorConfig.kDarkModeDividerColor
                                    .withOpacity(SizeConfig.kOpp06),
                            height: SizeConfig.kOpp05),
                        const SizedBox(height: SizeConfig.kHeight32),
                        GestureDetector(
                          onTap: () {
                            pickImageC(ImageSource.camera);
                            Get.back();
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                ImagePath.camera,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                                height: SizeConfig.kHeight20,
                                width: SizeConfig.kHeight20,
                              ),
                              const SizedBox(
                                width: SizeConfig.kHeight10,
                              ),
                              Text(
                                StringConfig.takeAPhoto,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: FontFamilyConfig.urbanistMedium,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: SizeConfig.kHeight16),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: SizeConfig.kHeight20),
                        GestureDetector(
                          onTap: () {
                            pickImageC(ImageSource.gallery);
                            Get.back();
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                ImagePath.gallery,
                                color: darkModeController.isLightTheme.value
                                    ? ColorConfig.kBlackColor
                                    : ColorConfig.kWhiteColor,
                                height: SizeConfig.kHeight18,
                                width: SizeConfig.kHeight18,
                              ),
                              const SizedBox(
                                width: SizeConfig.kHeight10,
                              ),
                              Text(
                                StringConfig.uploadFromGallery,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: FontFamilyConfig.urbanistMedium,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: SizeConfig.kHeight16),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: SizeConfig.kHeight20),
                      ]),
                )));
          });
        });
  }

  Future pickImageC(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      log("======image=====${image?.path}");
      if (image == null) return;
      final imageTemp = File(image.path);
      profileController.image = imageTemp;
    } catch (e) {
      log('Failed to pick image: $e');
    }
  }
}
