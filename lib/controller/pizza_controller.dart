import 'package:foodish_delivery_flutter_ui_kit/config/string_config.dart';
import 'package:get/get.dart';

class PizzaController extends GetxController {

  int currentTabIndex = 0;
  String appBarTitle = StringConfig.pizzaRestaurants;

  List<Map> pizzaSize = [
    {"name": "Normal (6 inches)", "isChecked": false, "name1": "\$34"},
    {"name": "Medium (9 inches)", "isChecked": false, "name1": "\$60"},
    {"name": "Large (12inches)", "isChecked": false, "name1": "\$98"}
  ];

  List<Map> availableHobbies = [
    {"name": "Fast Food", "isChecked": false},
    {"name": "North Indian", "isChecked": false},
    {
      "name": "Desserts",
      "isChecked": false,
    },
    {"name": "Pizza", "isChecked": false},
    {"name": "Chinese", "isChecked": false},
    {"name": "Shake", "isChecked": false},
    {"name": "SandWish", "isChecked": false}
  ];
}