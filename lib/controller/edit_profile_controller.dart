import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  TextEditingController nameController = TextEditingController(text: StringConfig.jhonQuillName);
  TextEditingController phoneNumberController = TextEditingController(text: StringConfig.mobileNumber);
  TextEditingController emailController = TextEditingController(text: StringConfig.email);
  TextEditingController dateController = TextEditingController(text: StringConfig.initialDate);
  TextEditingController genderController = TextEditingController(text: StringConfig.gender);

  DateTime? selectedDate;
}