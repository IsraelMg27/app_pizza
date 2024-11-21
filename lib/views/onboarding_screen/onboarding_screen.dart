import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_family.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/image_path.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/size_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/utils/common_material_button.dart';
import 'package:get/get.dart';

import '../../app_routes/app_routes.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImagePath.onBoarding), fit: BoxFit.fill)),
      child: Stack(
        children: [
          Image.asset(
            ImagePath.bg,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Column(
            children: [
              const SizedBox(
                height: SizeConfig.kHeight180,
              ),
              Center(
                  child: Image.asset(
                ImagePath.logo,
                height: SizeConfig.kHeight130,
                width: SizeConfig.kHeight130,
              )),
              const SizedBox(
                height: SizeConfig.kHeight40,
              ),
              Text(
                StringConfig.helloFoodie,
                style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistExtraBold,
                    fontSize: FontConfig.kFontSize32,
                    color: ColorConfig.kWhiteColor),
              ),
              const SizedBox(
                height: SizeConfig.kHeight6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: SizeConfig.kHeight53),
                child: Text(
                  StringConfig.foodDeliveryIsThe,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FontFamilyConfig.urbanistSemiBold,
                    fontSize: FontConfig.kFontSize16,
                    color: ColorConfig.kWhiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: SizeConfig.kHeight70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonMaterialButton(
                      isButtonText: true,
                      height: SizeConfig.kHeight45,
                      width: SizeConfig.kHeight140,
                      buttonColor: ColorConfig.kPrimaryColor,
                      textSize: FontConfig.kFontSize18,
                      txtColor: ColorConfig.kWhiteColor,
                      buttonText: StringConfig.signIn,
                      onButtonClick: () {
                        Get.toNamed(AppRoutes.signInScreen);
                      }),
                  CommonMaterialButton(
                      isButtonText: true,
                      height: SizeConfig.kHeight45,
                      width: SizeConfig.kHeight140,
                      buttonColor: ColorConfig.kButtonLightColor,
                      txtColor: ColorConfig.kPrimaryColor,
                      buttonText: StringConfig.signUp,
                      textSize: FontConfig.kFontSize18,
                      onButtonClick: () {
                        Get.toNamed(AppRoutes.signUpScreen);
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
