import 'dart:io';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../config/image_path.dart';
import '../config/string_config.dart';
import '../model/review_model.dart';

class ProfileController extends GetxController{

  File? image;
  RxInt selectedIndex = 0.obs;
  List<Map<String, dynamic>> profileList = [
    {"image": ImagePath.onlyStar, "text": StringConfig.myReviews},
    {"image": ImagePath.mapPoint, "text": StringConfig.addressSetting},
    {"image": ImagePath.bell, "text": StringConfig.notifications},
    {"image": ImagePath.settings, "text": StringConfig.settings},
  ];
  List<ReviewsModel> reviewsList = [
    ReviewsModel(
        title: StringConfig.theBluePlate,
        image: ImagePath.review1,
        subTitle:StringConfig.review1String,
        day: StringConfig.string_6daysAgo
    ),
    ReviewsModel(
        title: StringConfig.cozyCorner,
        image: ImagePath.review2,
        subTitle:StringConfig.review2String,
        day: StringConfig.string_15daysAgo
    ),
    ReviewsModel(
        title: StringConfig.eastsideCafe,
        image: ImagePath.review3,
        subTitle:StringConfig.review3String,
        day: StringConfig.string_24JanAgo
    ),
    ReviewsModel(
        title: StringConfig.theFourSeasons,
        image: ImagePath.review4,
        subTitle: StringConfig.review4String,
        day: StringConfig.string_3FebAgo
    ),
    ReviewsModel(
        title: StringConfig.leeASun,
        image: ImagePath.review5,
        subTitle:StringConfig.review5String,
        day: StringConfig.string_6daysAgo
    ),
  ];
  List<ReviewsModel> userReviewsList = [
    ReviewsModel(
        title: StringConfig.augustaWind,
        image: ImagePath.review1,
        subTitle:StringConfig.review1String,
        day: StringConfig.string_6daysAgo
    ),
    ReviewsModel(
        title: StringConfig.leeASun,
        image: ImagePath.review2,
        subTitle:StringConfig.review2String,
        day: StringConfig.string_6daysAgo
    ),
    ReviewsModel(
        title: StringConfig.bridgetTheriveaquai,
        image: ImagePath.review3,
        subTitle:StringConfig.review3String,
        day: StringConfig.string_6daysAgo
    ),
    ReviewsModel(
        title: StringConfig.leeASun,
        image: ImagePath.review5,
        subTitle:StringConfig.review4String,
        day: StringConfig.string_6daysAgo
    ),
  ];

  List starList = [
    ImagePath.star,
    ImagePath.star,
    ImagePath.star,
    ImagePath.starUnfill,
    ImagePath.starUnfill,
  ];
  List<ReviewsModel> tab2List = [
    ReviewsModel(
        title: StringConfig.doubleCheese,
        image: ImagePath.tab2_review1,
        subTitle:StringConfig.review1String,
        day: StringConfig.string_6daysAgo
    ),
    ReviewsModel(
        title: StringConfig.farmVillaPizza,
        image: ImagePath.tab2_review2,
        subTitle:StringConfig.review2String,
        day: StringConfig.string_15daysAgo
    ),
    ReviewsModel(
        title: StringConfig.bunnyPizza,
        image: ImagePath.tab2_review3,
        subTitle:StringConfig.review3String,
        day: StringConfig.string_24JanAgo
    ),
    ReviewsModel(
        title: StringConfig.jiraRice,
        image: ImagePath.tab2_review4,
        subTitle: StringConfig.review4String,
        day: StringConfig.string_3FebAgo
    ),
    ReviewsModel(
        title: StringConfig.thePie,
        image: ImagePath.tab2_review5,
        subTitle:StringConfig.review1String,
        day: StringConfig.string_3FebAgo
    ),
  ];

}