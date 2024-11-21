import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:get/get.dart';

class MyCartController extends GetxController {
  List<int> itemQuantities = List.generate(4, (index) => 1);
  int containerCount = 0;
  int container1Count = 0;

  List<String> cartItems = [
    StringConfig.farmVillaPizza,
    StringConfig.doubleCheese,
    StringConfig.farmVillaPizza,
    StringConfig.doubleCheese,
  ];

  List<String> dishes = [
    StringConfig.dishe,
    StringConfig.dish1,
    StringConfig.dishe,
    StringConfig.dish1,
  ];

  List<String> pizzaInches = [
    StringConfig.mediumInches,
    StringConfig.normalInches,
    StringConfig.mediumInches,
    StringConfig.normalInches,
  ];

  List<String> pizzaPrice = [
    StringConfig.dollor78,
    StringConfig.dollor20,
    StringConfig.dollor78,
    StringConfig.dollor20,
  ];

  List<String> pizzaRatings =[
    StringConfig.reviews4,
    StringConfig.reviews4half,
  ];
}