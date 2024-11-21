import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:get/get.dart';

class EditAddressController extends GetxController {
  TextEditingController streetController = TextEditingController(text: StringConfig.textField1);
  TextEditingController street2Controller = TextEditingController(text: StringConfig.textField2);
  TextEditingController landmarkController = TextEditingController(text: StringConfig.textField5);
  TextEditingController cityController = TextEditingController(text: StringConfig.textField3);
  TextEditingController pinCodeController = TextEditingController(text: StringConfig.textField4);
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();
}