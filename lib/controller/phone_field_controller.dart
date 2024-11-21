import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneFieldController extends GetxController {
  final phoneController = TextEditingController();
  bool isValidValue = true;
  String phoneNumber = '';
}