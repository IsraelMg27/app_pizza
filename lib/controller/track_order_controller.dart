import 'package:get/get.dart';

import '../config/string_config.dart';

class TrackOrderController extends GetxController {
  List<String> trackList = [
    StringConfig.orderPlaced,
    StringConfig.orderConfirmed,
    StringConfig.outForDelivery,
    StringConfig.orderDelivered
  ];
}