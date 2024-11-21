import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/app.dart';

import 'controller/storage_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? languageCode = await StorageController.instance.getLanguage();
  String? countryCode = await StorageController.instance.getCountryCode();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(FoodishApp(
    countryCode: countryCode,
    languageCode: languageCode,
  ));
}
