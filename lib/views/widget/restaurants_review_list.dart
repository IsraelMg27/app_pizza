import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/profile_controller.dart';

import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';

restaurantsReviewsList(ProfileController profileController) {
  return ListView.builder(
      itemCount: profileController.reviewsList.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: SizeConfig.kHeight15),
          child: Column(
            children: [
              const SizedBox(height: SizeConfig.kHeight6),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(profileController.reviewsList[index].image ?? "",
                      height: SizeConfig.kHeight44,
                      width: SizeConfig.kHeight44),
                  const SizedBox(width: SizeConfig.kHeight14),
                  Text(profileController.reviewsList[index].title ?? "",
                      style: TextStyle(
                          color: ColorConfig.kBlackColor,
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          fontWeight: FontWeight.w500,
                          fontSize: FontConfig.kFontSize17)),
                ],
              ),
              const SizedBox(height: SizeConfig.kHeight4),
              Text(profileController.reviewsList[index].subTitle ?? "",
                  style: TextStyle(
                      color: ColorConfig.kHintColor,
                      fontFamily: FontFamilyConfig.urbanistRegular,
                      fontWeight: FontWeight.w300,
                      fontSize: FontConfig.kFontSize14)),
              const SizedBox(height: SizeConfig.kHeight12),
              Row(
                children: [
                  ...List.generate(
                      5,
                      (indexs) => Padding(
                            padding: const EdgeInsets.only(
                                right: SizeConfig.kHeight3),
                            child: Image.asset(ImagePath.star,
                                height: SizeConfig.kHeight14,
                                width: SizeConfig.kHeight14),
                          )),
                  const SizedBox(width: SizeConfig.kHeight16),
                  Text(profileController.reviewsList[index].day ?? "",
                      style: TextStyle(
                          color: ColorConfig.kHintColor,
                          fontFamily: FontFamilyConfig.urbanistRegular,
                          fontWeight: FontWeight.w300,
                          fontSize: FontConfig.kFontSize14))
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: SizeConfig.kHeight10),
                child: Divider(
                  color: ColorConfig.kHintColor.withOpacity(0.4),
                ),
              ),
            ],
          ),
        );
      });
}

dishesReviewsList(ProfileController profileController) {
  return ListView.builder(
      itemCount: profileController.tab2List.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: SizeConfig.kHeight15),
          child: Column(
            children: [
              const SizedBox(height: SizeConfig.kHeight6),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(profileController.tab2List[index].image ?? "",
                      height: SizeConfig.kHeight44,
                      width: SizeConfig.kHeight44),
                  const SizedBox(width: SizeConfig.kHeight14),
                  Text(profileController.tab2List[index].title ?? "",
                      style: TextStyle(
                          color: ColorConfig.kBlackColor,
                          fontFamily: FontFamilyConfig.urbanistSemiBold,
                          fontWeight: FontWeight.w500,
                          fontSize: FontConfig.kFontSize17)),
                ],
              ),
              const SizedBox(height: SizeConfig.kHeight4),
              Text(profileController.tab2List[index].subTitle ?? "",
                  style: TextStyle(
                      color: ColorConfig.kHintColor,
                      fontFamily: FontFamilyConfig.urbanistRegular,
                      fontWeight: FontWeight.w300,
                      fontSize: FontConfig.kFontSize14)),
              const SizedBox(height: SizeConfig.kHeight12),
              Row(
                children: [
                  ...List.generate(
                      5,
                      (indexs) => Padding(
                            padding: const EdgeInsets.only(
                                right: SizeConfig.kHeight3),
                            child: Image.asset(ImagePath.star,
                                height: SizeConfig.kHeight14,
                                width: SizeConfig.kHeight14),
                          )),
                  const SizedBox(width: SizeConfig.kHeight16),
                  Text(profileController.tab2List[index].day ?? "",
                      style: TextStyle(
                          color: ColorConfig.kHintColor,
                          fontFamily: FontFamilyConfig.urbanistRegular,
                          fontWeight: FontWeight.w300,
                          fontSize: FontConfig.kFontSize14))
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: SizeConfig.kHeight10),
                child: Divider(
                  color: ColorConfig.kHintColor.withOpacity(0.4),
                ),
              ),
            ],
          ),
        );
      });
}
