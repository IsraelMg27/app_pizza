import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/font_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/image_path.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:get/get.dart';
import '../../../config/color.dart';
import '../../../config/font_family.dart';
import '../../../config/size_config.dart';
import '../../../controller/profile_controller.dart';
import '../../../utils/appbar_common.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen>
    with SingleTickerProviderStateMixin {
  DarkModeController darkModeController = Get.put(DarkModeController());

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  ProfileController profileController = Get.put(ProfileController());

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
                  title: StringConfig.myReviews,
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
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kWhiteColor
                            : ColorConfig.kBlackColor,
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
                            controller: _tabController,
                            isScrollable: true,
                            tabs: const [
                              Text(StringConfig.restaurants,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: FontConfig.kFontSize17,
                                    fontFamily:
                                        FontFamilyConfig.urbanistSemiBold,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text(
                                StringConfig.dishes,
                                style: TextStyle(
                                  fontSize: FontConfig.kFontSize17,
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
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
                          controller: _tabController,
                          dragStartBehavior: DragStartBehavior.start,
                          children: [
                            restaurantsReviewsList(),
                            dishesReviewsList()
                          ],
                        ),
                      ),
                    ])))));
  }

  restaurantsReviewsList() {
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
                    Image.asset(
                        profileController.reviewsList[index].image ?? "",
                        height: SizeConfig.kHeight44,
                        width: SizeConfig.kHeight44),
                    const SizedBox(width: SizeConfig.kHeight14),
                    Text(profileController.reviewsList[index].title ?? "",
                        style: TextStyle(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontFamily: FontFamilyConfig.urbanistSemiBold,
                            fontWeight: FontWeight.w500,
                            fontSize: FontConfig.kFontSize17)),
                  ],
                ),
                const SizedBox(height: SizeConfig.kHeight4),
                Text(profileController.reviewsList[index].subTitle ?? "",
                    style: TextStyle(
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kHintColor
                            : ColorConfig.kDarkModeDividerColor,
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
                                  right: SizeConfig.kHeight5),
                              child: Image.asset(
                                index == 0
                                    ? profileController.starList[indexs]
                                    : index == 1
                                        ? ImagePath.star
                                        : profileController.starList[indexs],
                                height: SizeConfig.kHeight14,
                                width: SizeConfig.kHeight14,
                              ),
                            )),
                    const SizedBox(width: SizeConfig.kHeight16),
                    Text(profileController.reviewsList[index].day ?? "",
                        style: TextStyle(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kDarkModeDividerColor,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w300,
                            fontSize: FontConfig.kFontSize14))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: SizeConfig.kHeight10),
                  child: Divider(
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kHintColor.withOpacity(SizeConfig.kOpp02)
                        : ColorConfig.kDarkModeDividerColor
                            .withOpacity(SizeConfig.kOpp06),
                  ),
                ),
              ],
            ),
          );
        });
  }

  dishesReviewsList() {
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
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kBlackColor
                                : ColorConfig.kWhiteColor,
                            fontFamily: FontFamilyConfig.urbanistSemiBold,
                            fontWeight: FontWeight.w500,
                            fontSize: FontConfig.kFontSize17)),
                  ],
                ),
                const SizedBox(height: SizeConfig.kHeight4),
                Text(profileController.tab2List[index].subTitle ?? "",
                    style: TextStyle(
                        color: darkModeController.isLightTheme.value
                            ? ColorConfig.kHintColor
                            : ColorConfig.kDarkModeDividerColor,
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
                                  right: SizeConfig.kHeight5),
                              child: Image.asset(
                                index == 0
                                    ? profileController.starList[indexs]
                                    : index == 1
                                        ? ImagePath.star
                                        : profileController.starList[indexs],
                                height: SizeConfig.kHeight14,
                                width: SizeConfig.kHeight14,
                              ),
                            )),
                    const SizedBox(width: SizeConfig.kHeight16),
                    Text(profileController.tab2List[index].day ?? "",
                        style: TextStyle(
                            color: darkModeController.isLightTheme.value
                                ? ColorConfig.kHintColor
                                : ColorConfig.kDarkModeDividerColor,
                            fontFamily: FontFamilyConfig.urbanistRegular,
                            fontWeight: FontWeight.w300,
                            fontSize: FontConfig.kFontSize14))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: SizeConfig.kHeight10),
                  child: Divider(
                    color: darkModeController.isLightTheme.value
                        ? ColorConfig.kHintColor.withOpacity(SizeConfig.kOpp02)
                        : ColorConfig.kDarkModeDividerColor
                            .withOpacity(SizeConfig.kOpp06),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
