import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_family.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/help_center_controller.dart';
import 'package:get/get.dart';
import '../../../../config/color.dart';
import '../../../../config/font_config.dart';
import '../../../../config/image_path.dart';
import '../../../../config/size_config.dart';
import '../../../../config/string_config.dart';
import '../../../../controller/profile_controller.dart';
import '../../../../utils/appbar_common.dart';
import '../help_center_view/contact_us_view.dart';
import '../help_center_view/faqtab_view.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({Key? key}) : super(key: key);

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen>
    with SingleTickerProviderStateMixin {
  HelpCenterController helpCenterController = Get.put(HelpCenterController());

  @override
  void initState() {
    helpCenterController.tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    helpCenterController.tabController.dispose();
    super.dispose();
  }

  ProfileController profileController = Get.put(ProfileController());
  DarkModeController darkModeController = Get.put(DarkModeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => SafeArea(
          child: Scaffold(
              backgroundColor: darkModeController.isLightTheme.value
                  ? ColorConfig.kWhiteColor
                  : ColorConfig.kBlackColor,
              appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
                  child: CommonAppBar(
                    title: StringConfig.helpCenter,
                    leadingImage: ImagePath.arrow,
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
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
                        Container(
                          // color: ColorConfig.kWhiteColor,
                          width: Get.width,
                          height: SizeConfig.kHeight30,
                          margin: const EdgeInsets.symmetric(
                              horizontal: SizeConfig.kHeight20),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: ColorConfig.kBgColor
                                          .withOpacity(SizeConfig.kOpp07),
                                      width: SizeConfig.kHeight1)),
                            ),
                            child: TabBar(
                              tabAlignment: TabAlignment.center,
                              labelColor: ColorConfig.kPrimaryColor,
                              indicatorColor: ColorConfig.kPrimaryColor,
                              unselectedLabelColor:
                                  darkModeController.isLightTheme.value
                                      ? ColorConfig.kBlackColor
                                      : ColorConfig.kWhiteColor,
                              indicatorWeight: 2,
                              labelPadding: const EdgeInsets.only(
                                  left: SizeConfig.kHeight50,
                                  right: SizeConfig.kHeight50,
                                  bottom: SizeConfig.kHeight6),
                              indicatorSize: TabBarIndicatorSize.tab,
                              controller: helpCenterController.tabController,
                              isScrollable: true,
                              tabs: const [
                                Text(StringConfig.faq,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily:
                                          FontFamilyConfig.urbanistSemiBold,
                                      fontSize: FontConfig.kFontSize17,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Text(
                                  StringConfig.contactUs,
                                  style: TextStyle(
                                    fontSize: FontConfig.kFontSize17,
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: SizeConfig.kHeight26),
                        Expanded(
                            child: TabBarView(
                          controller: helpCenterController.tabController,
                          dragStartBehavior: DragStartBehavior.start,
                          children: [FaqView(), ContactUsView()],
                        ))
                      ]))),
        ));
  }
}
