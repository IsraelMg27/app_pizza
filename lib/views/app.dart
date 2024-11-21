// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/localization/app_translation.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/splash_screen/splash_screen.dart';
import 'package:get/get.dart';
import '../app_routes/app_routes.dart';
import '../config/color.dart';

class FoodishApp extends StatelessWidget {
  FoodishApp({super.key, this.languageCode, this.countryCode}) {
    darkModeController.getThemeStatus();
  }

  final String? languageCode;
  final String? countryCode;
  DarkModeController darkModeController = Get.put(DarkModeController());

  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(color: ColorConfig.kWhiteColor),
        color: ColorConfig.kBlackColor),
  );

  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(seedColor: ColorConfig.kPrimaryColor),
  );

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale(languageCode ?? "en", countryCode ?? "US"),
      translationsKeys: AppTranslation.translationsKeys,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
      getPages: AppRoutes.pages,
      title: "Foodish Delivery",
    );
  }
}
