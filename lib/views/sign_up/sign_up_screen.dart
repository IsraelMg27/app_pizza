import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/image_path.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/sign_up_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/utils/common_material_button.dart';
import 'package:foodish_delivery_flutter_ui_kit/utils/common_text_button.dart';
import 'package:get/get.dart';
import '../../app_routes/app_routes.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../utils/appbar_common.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignUpController signUpController = Get.put(SignUpController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  final countryPicker = const FlCountryCodePicker();

  late FlCountryCodePicker countryPickerWithParams;

  @override
  void initState() {
    countryPickerWithParams = FlCountryCodePicker(
      localize: true,
      showDialCode: true,
      showSearchBar: true,
      countryTextStyle: TextStyle(
        fontFamily: FontFamilyConfig.urbanistRegular,
        color: darkModeController.isLightTheme.value
            ? ColorConfig.kHintColor
            : ColorConfig.kWhiteColor,
        fontWeight: FontWeight.w300,
        fontSize: FontConfig.kFontSize14,
      ),
      dialCodeTextStyle: TextStyle(
        fontFamily: FontFamilyConfig.urbanistRegular,
        color: darkModeController.isLightTheme.value
            ? ColorConfig.kHintColor
            : ColorConfig.kWhiteColor,
        fontWeight: FontWeight.w300,
        fontSize: FontConfig.kFontSize14,
      ),
      title: const Text(
        '',
      ),
      searchBarDecoration: InputDecoration(
        filled: true,
        fillColor: darkModeController.isLightTheme.value
            ? ColorConfig.kFillColor
            : ColorConfig.kDarkModeColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeConfig.borderRadius10),
          borderSide: BorderSide(
            color: ColorConfig.kTextfieldTextColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeConfig.borderRadius10),
          borderSide: BorderSide(
            color: ColorConfig.kTextfieldTextColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeConfig.borderRadius10),
          borderSide: BorderSide(
            color: ColorConfig.kTextfieldTextColor,
          ),
        ),
        isDense: true,
        suffixIcon: Icon(
          Icons.search_rounded,
          color: darkModeController.isLightTheme.value
              ? ColorConfig.kFillColor
              : ColorConfig.kWhiteColor,
        ),
        suffixIconColor: darkModeController.isLightTheme.value
            ? ColorConfig.kFillColor
            : ColorConfig.kWhiteColor,
        iconColor: darkModeController.isLightTheme.value
            ? ColorConfig.kFillColor
            : ColorConfig.kWhiteColor,
        hintText: StringConfig.searchCountry,
        hintStyle: TextStyle(
          fontFamily: FontFamilyConfig.urbanistRegular,
          color: darkModeController.isLightTheme.value
              ? ColorConfig.kBlackColor
              : ColorConfig.kWhiteColor,
          fontWeight: FontWeight.w300,
          fontSize: FontConfig.kFontSize14,
        ),
      ),
    );
    super.initState();
  }

  void _showCountryPicker() async {
    final code = await countryPickerWithParams.showPicker(
      context: context,
      backgroundColor: darkModeController.isLightTheme.value
          ? ColorConfig.kWhiteColor
          : ColorConfig.kDarkModeColor,
    );
    if (code != null) {
      setState(() {
        signUpController.selectedCountryCode = code.dialCode;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() => Scaffold(
            backgroundColor: darkModeController.isLightTheme.value
                ? ColorConfig.kWhiteColor
                : ColorConfig.kBlackColor,
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
                child: CommonAppBar(
                  title: "",
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
                  Center(
                    child: Text(
                      StringConfig.createAccount,
                      style: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          fontSize: FontConfig.kFontSize24,
                          fontWeight: FontWeight.w600,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor),
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConfig.kHeight30),
                    child: Text(
                      StringConfig.pleaseEnterYourNumber,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistRegular,
                          fontSize: FontConfig.kFontSize14,
                          fontWeight: FontWeight.w400,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor),
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConfig.kHeight20),
                    child: TextFormField(
                      controller: signUpController.nameController,
                      style: TextStyle(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                          height: SizeConfig.kH07),
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return '';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        prefixIcon: _buildPrefixButton(),
                        fillColor: darkModeController.isLightTheme.value
                            ? ColorConfig.kFillColor
                            : ColorConfig.kDarkModeColor,
                        filled: true,
                        hintText: StringConfig.enterYourName,
                        hintStyle: TextStyle(
                          fontFamily: FontFamilyConfig.urbanistRegular,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kHintColor
                              : ColorConfig.kWhiteColor,
                          fontWeight: FontWeight.w300,
                          fontSize: FontConfig.kFontSize14,
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(SizeConfig.borderRadius10)),
                          borderSide: BorderSide(
                            width: SizeConfig.kHeight0,
                            style: BorderStyle.none,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(SizeConfig.borderRadius12),
                          borderSide: const BorderSide(
                            width: SizeConfig.kHeight0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight16,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: SizeConfig.kHeight20),
                      child: Container(
                        height: SizeConfig.kHeight50,
                        decoration: BoxDecoration(
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kFillColor
                              : ColorConfig.kDarkModeColor,
                          borderRadius:
                              BorderRadius.circular(SizeConfig.borderRadius10),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: SizeConfig.kHeight10),
                              child: GestureDetector(
                                onTap: () async {
                                  _showCountryPicker();
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      signUpController.selectedCountryCode,
                                      style: TextStyle(
                                        fontFamily:
                                            FontFamilyConfig.urbanistSemiBold,
                                        color: darkModeController
                                                .isLightTheme.value
                                            ? ColorConfig.kBlackColor
                                            : ColorConfig.kWhiteColor,
                                        fontWeight: FontWeight.w300,
                                        fontSize: FontConfig.kFontSize14,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: SizeConfig.kHeight5,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color:
                                          darkModeController.isLightTheme.value
                                              ? ColorConfig.kBlackColor
                                              : ColorConfig.kFillColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            VerticalDivider(
                              color: Colors.grey.withOpacity(0.2),
                              thickness: 1,
                              width: SizeConfig.kHeight10,
                              indent: SizeConfig.kHeight12,
                              endIndent: SizeConfig.kHeight12,
                            ),
                            const SizedBox(
                              width: SizeConfig.kHeight5,
                            ),
                            Expanded(
                              child: TextField(
                                controller: signUpController.phoneController,
                                keyboardType: TextInputType.phone,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(10),
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                ],
                                style: TextStyle(
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kBlackColor
                                        : ColorConfig.kWhiteColor,
                                    height: SizeConfig.kH07),
                                decoration: InputDecoration(
                                  hintText: StringConfig.enterPhoneNumber,
                                  hintStyle: TextStyle(
                                    fontFamily:
                                        FontFamilyConfig.urbanistRegular,
                                    color: darkModeController.isLightTheme.value
                                        ? ColorConfig.kHintColor
                                        : ColorConfig.kWhiteColor,
                                    fontWeight: FontWeight.w300,
                                    fontSize: FontConfig.kFontSize14,
                                  ),
                                  border: const UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: SizeConfig.kHeight60,
                  ),
                  CommonMaterialButton(
                      height: SizeConfig.kHeight52,
                      width: double.infinity,
                      buttonColor: ColorConfig.kPrimaryColor,
                      txtColor: ColorConfig.kWhiteColor,
                      buttonText: StringConfig.signUp,
                      onButtonClick: () {
                        Get.toNamed(AppRoutes.otpScreen);
                      }),
                  const SizedBox(
                    height: SizeConfig.kHeight32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConfig.kHeight20),
                    child: Row(children: <Widget>[
                      Expanded(
                          child: Divider(
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kDividerColor
                            : ColorConfig.kDarkModeDividerColor,
                        thickness: SizeConfig.kHeight1,
                      )),
                      const SizedBox(
                        width: SizeConfig.kHeight10,
                      ),
                      Text(
                        StringConfig.orContinueWith,
                        style: TextStyle(
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontSize: FontConfig.kFontSize12,
                            fontWeight: FontWeight.w400,
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor),
                      ),
                      const SizedBox(
                        width: SizeConfig.kHeight10,
                      ),
                      Expanded(
                          child: Divider(
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kDividerColor
                            : ColorConfig.kDarkModeDividerColor,
                        thickness: SizeConfig.kHeight1,
                      )),
                    ]),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight38,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConfig.kHeight20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonTextButton(
                          buttonText: StringConfig.google,
                          onButtonClick: () {},
                          image: ImagePath.google,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                        ),
                        const Spacer(),
                        CommonTextButton(
                          buttonText: StringConfig.faceBook,
                          onButtonClick: () {},
                          image: ImagePath.faceBook,
                          color: darkModeController.isLightTheme.value
                              ? ColorConfig.kBlackColor
                              : ColorConfig.kWhiteColor,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: SizeConfig.kHeight60,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.signInScreen);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: StringConfig.alreadyHaveAnAccount,
                              style: TextStyle(
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontFamily: FontFamilyConfig.urbanistRegular,
                                  fontSize: FontConfig.kFontSize14,
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: StringConfig.signIn,
                              style: TextStyle(
                                  color: ColorConfig.kPrimaryColor,
                                  fontFamily: FontFamilyConfig.urbanistBold,
                                  fontSize: FontConfig.kFontSize14,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }

  _buildPrefixButton() {
    return IntrinsicHeight(
        child: Padding(
      padding: const EdgeInsets.only(left: SizeConfig.kHeight10),
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              ImagePath.userLogo,
              height: SizeConfig.kHeight20,
              width: SizeConfig.kHeight20,
              color: darkModeController.isLightTheme.value
                  ? ColorConfig.kBlackColor
                  : ColorConfig.kWhiteColor,
            ),
            const SizedBox(width: SizeConfig.kHeight8),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: SizeConfig.kHeight10),
              child: VerticalDivider(
                color: Colors.grey.withOpacity(0.2),
                thickness: 1,
                width: SizeConfig.kHeight10,
              ),
            ),
            const SizedBox(width: 8),
          ]),
    ));
  }
}
