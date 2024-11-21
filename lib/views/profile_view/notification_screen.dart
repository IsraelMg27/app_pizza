import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';
import '../../../config/color.dart';
import '../../../config/font_config.dart';
import '../../../config/font_family.dart';
import '../../../config/image_path.dart';
import '../../../config/size_config.dart';
import '../../../config/string_config.dart';
import '../../../controller/address_controller.dart';
import '../../../utils/appbar_common.dart';

// ignore: must_be_immutable
class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  final AddressController _notificationController =
      Get.put(AddressController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(() => Scaffold(
            backgroundColor: darkModeController.isLightTheme.value
                ? ColorConfig.kWhiteColor
                : ColorConfig.kBlackColor,
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
                child: CommonAppBar(
                  title: StringConfig.notification,
                  color: darkModeController.isLightTheme.value
                      ? ColorConfig.kBlackColor
                      : ColorConfig.kWhiteColor,
                  leadingImage: ImagePath.arrow,
                  leadingOnTap: () {
                    Get.back();
                  },
                )),
            body: Padding(
              padding: const EdgeInsets.only(
                  left: SizeConfig.kHeight10,
                  right: SizeConfig.kHeight20,
                  top: SizeConfig.kHeight10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      _notificationController.notificationText.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(
                            top: SizeConfig.kHeight15,
                            left: SizeConfig.kHeight12,
                            bottom: SizeConfig.kHeight10,
                            right: SizeConfig.kHeight12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                _notificationController.notificationText[index]
                                    ['text'],
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistRegular,
                                  color: darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: FontConfig.kFontSize17,
                                )),
                            const Spacer(),
                            Obx(
                              () => FlutterSwitch(
                                  inactiveColor: ColorConfig.kButtonLightColor,
                                  width: SizeConfig.kHeight45,
                                  height: SizeConfig.kHeight23,
                                  toggleSize: 18,
                                  padding: 1,
                                  value: _notificationController
                                      .selectItems[index],
                                  activeColor: ColorConfig.kPrimaryColor,
                                  borderRadius: 40,
                                  onToggle: (value) => _notificationController
                                          .selectItems[index] =
                                      !_notificationController
                                          .selectItems[index]),
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
            ))));
  }
}
