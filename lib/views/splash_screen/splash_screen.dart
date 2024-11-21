import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/image_path.dart';
import 'package:get/get.dart';

import '../../config/size_config.dart';
import '../../controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: ColorConfig.kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: SizeConfig.kHeight80),
          child: Center(child: Image.asset(ImagePath.logo)),
        ),
      ),
    );
  }
}
