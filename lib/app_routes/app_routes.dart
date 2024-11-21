import 'package:foodish_delivery_flutter_ui_kit/views/all_restaurant/all_restaurant.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/all_restaurant/no_restaurant_found.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/bottom_bar/bottom_bar.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/checkout_order/add_more_items_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/checkout_order/checkout_order.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/checkout_order/get_discount_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/deliver_to/add_new_address/add_new_address_form_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/deliver_to/add_new_address/add_new_address_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/deliver_to/deliver_to_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/farm_villa_pizza/farm_villa_pizza.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/my_cart/my_cart_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/notification_screen/notification_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/offer/offer_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/order_view/order_summary_view.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/order_view/track_order_view.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/payment_screen/payment_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/payment_view/leave_a_dish_review.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/payment_view/leave_a_restaurant_review.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/profile/profile_view/edit_profile_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/profile_view/edit_address_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/restaurant/overview_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/restaurant/pizza_Detail.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/restaurant/pizza_restaurant.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/rating_review/rating_review_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/sign_in/sign_in_screen.dart';
import 'package:foodish_delivery_flutter_ui_kit/views/sign_up/sign_up_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../views/favorite_screen/favorite_screen.dart';
import '../views/home/home_page.dart';
import '../views/onboarding_screen/onboarding_screen.dart';
import '../views/order_screen/order_screen.dart';
import '../views/otp_screen/otp_screen.dart';
import '../views/payment_view/add_new_card.dart';
import '../views/payment_view/successful_order.dart';
import '../views/profile/profile_screen.dart';
import '../views/profile_view/address_screen.dart';
import '../views/profile_view/notification_screen.dart';
import '../views/profile_view/reviews_screen.dart';
import '../views/profile_view/settings_screen.dart';
import '../views/setting_view/help_center.dart';
import '../views/setting_view/language_screen.dart';
import '../views/setting_view/terms_service_screen.dart';
import '../views/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splashScreen';
  static const String onBoardingScreen = '/onBoardingScreen';
  static const String signInScreen = '/signInScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String otpScreen = '/otpScreen';
  static const String bottomBar = '/bottomBar';
  static const String homePage = '/homePage';
  static const String allRestaurant = '/allRestaurant';
  static const String noFound = '/noFound';
  static const String pizzaRestaurants = '/pizzaRestaurants';
  static const String pizzaDetail = '/pizzaDetail';
  static const String overViewScreen = '/overViewScreen';
  static const String profile = '/profile';
  static const String ratingReview = '/ratingReview';
  static const String offers = '/offers';
  static const String reviews = '/Reviews';
  static const String address = '/Address';
  static const String notification = '/Notification';
  static const String settings = '/Settings';
  static const String language = '/Language';
  static const String notificationHomeScreen = '/notificationHomeScreen';
  static const String farmVillaPizza = '/farmVillaPizza';
  static const String helpCenter = '/HelpCenter';
  static const String termsService = '/TermsService';
  static const String favorite = '/Favorite';
  static const String order = '/Order';
  static const String location = '/Location';
  static const String addNewCard = '/AddNewCard';
  static const String successfulOrder = '/SuccessfulOrder';
  static const String payment = '/Payment';
  static const String checkoutOrder = '/Checkout_order';
  static const String addMoreItemsScreen = '/add_more_items_screen';
  static const String myCartScreen = '/my_cart_screen';
  static const String deliverToScreen = '/deliver_to_screen';
  static const String addNewAddress = '/add_new_address_screen';
  static const String addNewAddressForm = '/add_new_address_form_screen';
  static const String getDiscountScreen = '/get_discount_screen';
  static const String leaveARestaurantReviewScreen = '/leave_a_restaurant_review';
  static const String leaveADishReviewScreen = '/leave_a_dish_review';
  static const String trackOrderView = '/track_order_view';
  static const String orderSummaryView = '/order_summary_view';
  static const String editProfileView = '/edit_profile_view';
  static const String editAddressView = '/edit_address_view';

  static List<GetPage> pages = [
    GetPage(name: splashScreen, page: () =>  SplashScreen()),
    GetPage(name: onBoardingScreen, page: () => const OnBoardingScreen()),
    GetPage(name: signInScreen, page: () => const SignInScreen()),
    GetPage(name: signUpScreen, page: () =>  const SignUpScreen()),
    GetPage(name: otpScreen, page: () =>  OtpScreen()),
     GetPage(name: bottomBar, page: () =>  BottomBarScreen()),
     GetPage(name: homePage, page: () =>  HomePage()),
     GetPage(name: allRestaurant, page: () =>  AllRestaurant()),
     GetPage(name: profile, page: () =>  ProfileScreen()),
     GetPage(name: reviews, page: () =>  const ReviewsScreen()),
     GetPage(name: address, page: () =>  AddressScreen()),
     GetPage(name: settings, page: () => SettingsScreen()),
     GetPage(name: notification, page: () =>  NotificationScreen()),
     GetPage(name: language, page: () =>  LanguageScreen()),
     GetPage(name: helpCenter, page: () =>  const HelpCenterScreen()),
     GetPage(name: termsService, page: () =>  TermsServiceScreen()),
     GetPage(name: favorite, page: () =>  const FavoriteScreen()),
     GetPage(name: noFound, page: () =>  NoRestaurantFound()),
     GetPage(name: pizzaRestaurants, page: () =>  const PizzaRestaurant()),
     GetPage(name: pizzaDetail, page: () =>  PizzaDetail()),
     GetPage(name: overViewScreen, page: () =>  OverViewScreen()),
     GetPage(name: ratingReview, page: () =>  RatingReviewScreen()),
     GetPage(name: offers, page: () =>  OfferScreen()),
     GetPage(name: notificationHomeScreen, page: () =>  NotificationHomeScreen()),
     GetPage(name: farmVillaPizza, page: () =>  const FarmVillaPizzaScreen()),
     GetPage(name: order, page: () =>  const OrderScreen()),
     // GetPage(name: location, page: () =>  LocationScreen()),
     GetPage(name: addNewCard, page: () =>  AddNewCardScreen()),
     GetPage(name: successfulOrder, page: () => SuccessfulOrderScreen()),
     GetPage(name: payment, page: () => PaymentScreen()),
     GetPage(name: checkoutOrder, page: () => const CheckoutOrder()),
     GetPage(name: addMoreItemsScreen, page: () => const AddMoreItemsScreen()),
     GetPage(name: myCartScreen, page: () => const MyCartScreen()),
     GetPage(name: deliverToScreen, page: () => const DeliverTo()),
     GetPage(name: addNewAddress, page: () => AddNewAddressScreen()),
     GetPage(name: addNewAddressForm, page: () => const AddNewAddressFormScreen()),
     GetPage(name: getDiscountScreen, page: () => const GetDiscountScreen()),
     GetPage(name: leaveARestaurantReviewScreen, page: () => LeaveARestaurantReview()),
     GetPage(name: leaveADishReviewScreen, page: () => LeaveADishReview()),
     GetPage(name: trackOrderView, page: () => TrackOrderView()),
     GetPage(name: orderSummaryView, page: () => OrderSummaryView()),
     GetPage(name: editProfileView, page: () => const EditProfileScreen()),
     GetPage(name: editAddressView, page: () => const EditNewAddressFormScreen()),
  ];
}
