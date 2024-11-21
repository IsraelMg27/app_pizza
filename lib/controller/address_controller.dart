import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../config/string_config.dart';

class AddressController extends GetxController {
  TextEditingController streetController = TextEditingController();
  TextEditingController street2Controller = TextEditingController();
  TextEditingController landmarkController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  RxList<bool> selectItems = List.generate(8, (index) => false).obs;
  List<Map<String, dynamic>> addressList = [
    {"text": StringConfig.myOffice, "subText": StringConfig.address2},
    {"text": StringConfig.myVilla, "subText": StringConfig.address3},
    {"text": StringConfig.parentHouse, "subText": StringConfig.address1},
  ];

  List<Map<String, dynamic>> notificationText = [
    {"text": StringConfig.sound},
    {"text": StringConfig.vibrate},
    {"text": StringConfig.specialOffers},
    {"text": StringConfig.promoDiscount},
    {"text": StringConfig.payments},
    {"text": StringConfig.cashback},
    {"text": StringConfig.appUpdates},
    {"text": StringConfig.newServiceAvailable},
  ];
}
