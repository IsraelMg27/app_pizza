import 'package:cupertino_will_pop_scope/cupertino_will_pop_scope.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/bottom_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/dark_mode_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/favourite_controller.dart';
import 'package:get/get.dart';
import '../../config/color.dart';
import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../config/image_path.dart';
import '../../config/size_config.dart';
import '../../config/string_config.dart';
import '../../controller/profile_controller.dart';
import '../../utils/appbar_common.dart';
import 'favotite_tabs/dishe_favorite_tab.dart';
import 'favotite_tabs/restaurant_favorite_tab.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen>
    with SingleTickerProviderStateMixin {
  FavouriteController favouriteController = Get.put(FavouriteController());

  @override
  void initState() {
    favouriteController.tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    favouriteController.tabController.dispose();
    super.dispose();
  }

  ProfileController profileController = Get.put(ProfileController());
  DarkModeController darkModeController = Get.put(DarkModeController());
  BottomNavigationController bottomController =
      Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return ConditionalWillPopScope(
      onWillPop: () {
        bottomController.controller.jumpToPage(0);
        bottomController.selected.value = 0;
        return Future(() => false);
      },
      shouldAddCallback: false,
      child: SafeArea(
          child: Obx(() => Scaffold(
              backgroundColor: darkModeController.isLightTheme.value
                  ? ColorConfig.kWhiteColor
                  : ColorConfig.kBlackColor,
              appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
                  child: CommonAppBar(
                    title: StringConfig.myFavorites,
                    leadingImage: ImagePath.restarantMenu,
                    leadingOnTap: () {
                      // Get.back();
                    },
                  )),
              body: Column(
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
                          controller: favouriteController.tabController,
                          isScrollable: true,
                          tabs: const [
                            Text(StringConfig.restaurants,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: FontFamilyConfig.urbanistSemiBold,
                                  fontSize: FontConfig.kFontSize17,
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
                      controller: favouriteController.tabController,
                      dragStartBehavior: DragStartBehavior.start,
                      children: [RestaurantTabView(), DisheFavoriteView()],
                    ))
                  ])))),
    );
  }
}
