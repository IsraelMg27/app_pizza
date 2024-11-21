// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/color.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/image_path.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/size_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:foodish_delivery_flutter_ui_kit/controller/pizza_controller.dart';
import 'package:foodish_delivery_flutter_ui_kit/utils/appbar_common.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/restaurant/dishes.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/restaurant/restaurant.dart';
import 'package:get/get.dart';

import '../../config/font_config.dart';
import '../../config/font_family.dart';
import '../../controller/dark_mode_controller.dart';

class PizzaRestaurant extends StatefulWidget {
  const PizzaRestaurant({Key? key}) : super(key: key);

  @override
  State<PizzaRestaurant> createState() => _PizzaRestaurantState();
}

class _PizzaRestaurantState extends State<PizzaRestaurant>
    with SingleTickerProviderStateMixin {
  DarkModeController darkModeController = Get.put(DarkModeController());
  PizzaController pizzaController = Get.put(PizzaController());

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    _tabController.addListener(_handleTabChange);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabChange() {
    setState(() {
      if (_tabController.index == 0) {
        pizzaController.appBarTitle = StringConfig.pizzaRestaurants;
      } else if (_tabController.index == 1) {
        pizzaController.appBarTitle = StringConfig.pizzaDishes;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: darkModeController.isLightTheme.value
            ? ColorConfig.kWhiteColor
            : ColorConfig.kBlackColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(SizeConfig.kHeight100),
          child: CommonAppBar(
            leadingImage: ImagePath.arrow,
            color: darkModeController.isLightTheme.value
                ? ColorConfig.kBlackColor
                : ColorConfig.kWhiteColor,
            leadingOnTap: () {
              Get.back();
            },
            title: pizzaController.appBarTitle,
            trailingImage: ImagePath.search,
          ),
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: SizeConfig.kHeight20),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: ColorConfig.kDarkModeDividerColor
                                .withOpacity(.3),
                            width: SizeConfig.kH15)),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    padding: EdgeInsets.zero,
                    labelPadding: EdgeInsets.zero,
                    indicatorPadding: EdgeInsets.zero,
                    indicatorColor: ColorConfig.kPrimaryColor,
                    indicatorWeight: SizeConfig.kH15,
                    unselectedLabelColor: darkModeController.isLightTheme.value
                        ? ColorConfig.kBlackColor
                        : ColorConfig.kWhiteColor,
                    labelColor: ColorConfig.kPrimaryColor,
                    labelStyle: const TextStyle(
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      fontWeight: FontWeight.w600,
                      fontSize: FontConfig.kFontSize14,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontFamily: FontFamilyConfig.urbanistSemiBold,
                      fontWeight: FontWeight.w600,
                      fontSize: FontConfig.kFontSize14,
                    ),
                    tabs: const <Widget>[
                      Tab(
                        text: "Restaurants",
                        iconMargin: EdgeInsets.zero,
                      ),
                      Tab(
                        text: "Dishes",
                        iconMargin: EdgeInsets.zero,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  dragStartBehavior: DragStartBehavior.start,
                  children: <Widget>[Restaurant(), DishesScreen()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
