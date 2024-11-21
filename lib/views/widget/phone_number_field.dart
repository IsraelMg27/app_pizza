import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_family.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/size_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/phone_field_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/widget/phone_field/country_picker_dialog.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/widget/phone_field/intl_phone_field.dart';
import 'package:get/get.dart';

import '../../config/string_config.dart';

// ignore: must_be_immutable
class PhoneNumberField extends StatefulWidget {
  const PhoneNumberField({Key? key}) : super(key: key);

  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  DarkModeController darkModeController = Get.put(DarkModeController());

  PhoneFieldController phoneFieldController = Get.put(PhoneFieldController());

  @override
  Widget build(BuildContext context) {
    // phoneController.text = phoneNumber;
    return SingleChildScrollView(
      child: IntlPhoneField(
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        disableLengthCheck: true,
        style: TextStyle(
            color: darkModeController.isLightTheme.value
                ? ColorConfig.kBlackColor
                : ColorConfig.kWhiteColor,
            height: SizeConfig.kH07),
        controller: phoneFieldController.phoneController,
        dropdownIconPosition: IconPosition.trailing,
        decoration: InputDecoration(
          fillColor: darkModeController.isLightTheme.value
              ? ColorConfig.kFillColor
              : ColorConfig.kDarkModeColor,
          filled: true,
          hintText: StringConfig.enterPhoneNumber,
          hintStyle: TextStyle(
            fontFamily: FontFamilyConfig.urbanistRegular,
            color: darkModeController.isLightTheme.value
                ? ColorConfig.kHintColor
                : ColorConfig.kWhiteColor,
            fontWeight: FontWeight.w300,
            fontSize: FontConfig.kFontSize14,
          ),
          border: const OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(SizeConfig.borderRadius10)),
            borderSide: BorderSide(
              width: SizeConfig.kHeight0,
              style: BorderStyle.none,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SizeConfig.borderRadius12),
            borderSide: BorderSide(
              color: phoneFieldController.isValidValue
                  ? ColorConfig.kPrimaryColor
                  : ColorConfig.kHintColor,
            ),
          ),
        ),
        keyboardType: TextInputType.phone,
        initialCountryCode: 'IN',
        cursorColor: phoneFieldController.isValidValue
            ? ColorConfig.kPrimaryColor
            : ColorConfig.kHintColor,
        dropdownTextStyle: TextStyle(
          color: darkModeController.isLightTheme.value
              ? ColorConfig.kHintColor
              : ColorConfig.kWhiteColor,
        ),
        dropdownDecoration: BoxDecoration(
          color: darkModeController.isLightTheme.value
              ? ColorConfig.kFillColor
              : ColorConfig.kDarkModeColor,
        ),
        pickerDialogStyle: PickerDialogStyle(
          backgroundColor: darkModeController.isLightTheme.value
              ? ColorConfig.kWhiteColor
              : ColorConfig.kDarkModeColor,
          countryCodeStyle: TextStyle(
            color: darkModeController.isLightTheme.value
                ? ColorConfig.kBlackColor
                : ColorConfig.kWhiteColor,
          ),
          countryNameStyle: TextStyle(
            color: darkModeController.isLightTheme.value
                ? ColorConfig.kBlackColor
                : ColorConfig.kWhiteColor,
          ),
          searchFieldInputDecoration: InputDecoration(
            iconColor: darkModeController.isLightTheme.value
                ? ColorConfig.kHintColor
                : ColorConfig.kWhiteColor,
            hintStyle: TextStyle(
              color: darkModeController.isLightTheme.value
                  ? ColorConfig.kHintColor
                  : ColorConfig.kWhiteColor,
            ),
          ),
        ),
        dropdownIcon: Icon(
          Icons.arrow_drop_down_sharp,
          color: darkModeController.isLightTheme.value
              ? ColorConfig.kHintColor
              : ColorConfig.kWhiteColor,
          size: SizeConfig.kHeight30,
        ),
        showCountryFlag: false,
        onChanged: (phone) {
          if (kDebugMode) {
            print(phone.completeNumber);
          }
          setState(() {
            phoneFieldController.phoneNumber = phone.completeNumber;
          });
          Get.back();
        },
        onCountryChanged: (country) {},
      ),
    );
  }
}
