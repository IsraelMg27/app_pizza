import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/storage_controller.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    initializeController();
  }

  RxBool vibrateValue = false.obs;
  RxString language = "English".obs;

  void vibrateSwitch(value) {
    vibrateValue.value = value;
  }

  RxString selectedLanOption = 'English'.obs;
  RxBool arb = false.obs;

  Future<void> initializeController() async {
    var lng = await StorageController.instance.getLang() ?? "";

    selectedLanOption.value = lng.isNotEmpty ? lng : 'English';
  }

  Future<void> changeLanguage(String? language) async {
    Locale locale;
    switch (language) {
      case 'English':
        locale = const Locale('en', 'US');
        await StorageController.instance.setLang('English');
        await StorageController.instance.setLanguage('en');
        await StorageController.instance.setCountryCode('US');
        selectedLanOption.value = 'English';
        break;
      case 'Hindi':
        locale = const Locale('hi', 'IN');
        await StorageController.instance.setLang('Hindi');
        await StorageController.instance.setLanguage('hi');
        await StorageController.instance.setCountryCode('IN');
        selectedLanOption.value = 'Hindi';
        break;
      case 'Arabic':
        locale = const Locale('ar', 'SA');
        await StorageController.instance.setLang('Arabic');
        await StorageController.instance.setLanguage('ar');
        await StorageController.instance.setCountryCode('SA');
        arb.value = true;
        selectedLanOption.value = 'Arabic';
        break;
      case 'Chinese':
        locale = const Locale('zh', 'CN');
        await StorageController.instance.setLang('Chinese');
        await StorageController.instance.setLanguage('zh');
        await StorageController.instance.setCountryCode('CN');
        selectedLanOption.value = 'Chinese';
        break;
      case 'French':
        locale = const Locale('fr', 'FR');
        await StorageController.instance.setLang('French');
        await StorageController.instance.setLanguage('fr');
        await StorageController.instance.setCountryCode('FR');
        selectedLanOption.value = 'French';
        break;
      case 'German':
        locale = const Locale('de', 'DE');
        await StorageController.instance.setLang('German');
        await StorageController.instance.setLanguage('de');
        await StorageController.instance.setCountryCode('DE');
        selectedLanOption.value = 'German';
        break;
      case '':
        locale = const Locale('en', 'US');
        await StorageController.instance.setLang('English');
        await StorageController.instance.setLanguage('en');
        await StorageController.instance.setCountryCode('US');
        selectedLanOption.value = 'English';
        break;

      default:
        locale = const Locale('en', 'US');
        await StorageController.instance.setLang('English');
        selectedLanOption.value = 'English';
    }

    Get.updateLocale(locale);
  }

  void loadSelectedLanguage() async {
    language.value = await StorageController.instance.getLanguage() ?? "";
    language.value == "Arabic" || language.value == 'ar'
        ? arb.value = true
        : arb.value = false;
  }

  RxBool isReservation = false.obs;
  RxBool isOffers = false.obs;
  RxBool isLikes = false.obs;
  RxBool isMore = false.obs;
  RxBool isOffers2 = false.obs;
  RxBool isMore2 = false.obs;
}
