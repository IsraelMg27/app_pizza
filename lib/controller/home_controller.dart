import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../config/image_path.dart';
import '../config/size_config.dart';
import '../config/string_config.dart';
import '../model/carusoal_model.dart';
import '../model/category_model.dart';
import '../model/pizza_model.dart';
import '../model/restaurant_detail_model.dart';

class HomeController extends GetxController{

  RxInt pageViewIndex = 0.obs;
  int selectedContainerIndex = -1;
  List<bool> deliverToIndex = [false, false, false, false];
  RxList<bool> internationalTripIndex = List.generate(7, (index) => false).obs;
  RxString dropDownValue = StringConfig.pureVeg.obs;
  RxBool isSort=false.obs;
  RxBool isPureVeg=false.obs;
  RxBool isRating=false.obs;
  RxBool isCuisine=false.obs;
  int counter = 0;
  double currentIndex = SizeConfig.kHeight0;
  int index = 0;
  List<bool> isSelected = List.generate(5, (index) => false);
  TextEditingController searchController = TextEditingController();

  RxList<RestaurantDetailModel>restaurantList= [
    RestaurantDetailModel(image: ImagePath.restaurant1,name: "Tipsy Toma...",veg: ImagePath.veg,name1: "Burger",name2: "Fast Food",name3: "Coca-Cola"),
    RestaurantDetailModel(image: ImagePath.restaurant2,name: "Burger King",veg: ImagePath.veg,name1: "Burger",name2: "Fast Food",name3: "Coca-Cola"),
    RestaurantDetailModel(image: ImagePath.restaurant3,name: "The D Pizza",veg: ImagePath.nonVeg,name1: "Pizza",name2: "Fast Food",name3: "Coca-Cola"),
    RestaurantDetailModel(image: ImagePath.restaurant4,name: "The Pie",veg: ImagePath.veg,name1: "Pure Veg",name2: "Sweets",name3: "Bhaji"),
    RestaurantDetailModel(image: ImagePath.bhel,name: "Skyline Pizza",veg: ImagePath.veg,name1: "Burger",name2: "Chinese",name3: "Bhaji"),
    RestaurantDetailModel(image: ImagePath.fPizza,name: "Trishiv Chinese Cor...",veg: ImagePath.nonVeg,name1: "Pure Veg",name2: "Chinese",name3: "Pasta"),
  ].obs;

  List<PizzaModel>favoriteDishesList=[
    PizzaModel(image: ImagePath.favoriteDishe1,name: "Farm Villa Pizza",veg: ImagePath.veg,price: "\$34"),
    PizzaModel(image: ImagePath.favoriteDishe2,name: "Double Cheese...",veg: ImagePath.nonVeg,price: "\$31.5"),
    PizzaModel(image: ImagePath.favoriteDishe3,name: "Capsicum Pizza",veg: ImagePath.veg,price: "\$20"),
    PizzaModel(image: ImagePath.favoriteDishe4,name: "Onions Pizza",veg: ImagePath.nonVeg,price: "\$105"),
  ];

  List<CarouselSliderModel> carouselSliderList = [
    CarouselSliderModel(image: ImagePath.banner1),
    CarouselSliderModel(image: ImagePath.banner2),
    CarouselSliderModel(image: ImagePath.banner3),
    CarouselSliderModel(image: ImagePath.banner1),
  ];

  List<CarouselSliderModel> pizzaSliderList = [
    CarouselSliderModel(image: ImagePath.pizzaBite),
    CarouselSliderModel(image: ImagePath.pizzaDetail),
    CarouselSliderModel(image: ImagePath.pizzaBite),
    CarouselSliderModel(image: ImagePath.pizzaBite),
  ];

  List<CategoryModel> categoryList = [
    CategoryModel(image: ImagePath.pizza, name: "Pizza"),
    CategoryModel(image: ImagePath.burger, name: "Burger"),
    CategoryModel(image: ImagePath.sandwish, name: "Sandwich"),
    CategoryModel(image: ImagePath.cake, name: "Cake"),

  ];

  List<CategoryModel> categoryList1 = [
    CategoryModel(image: ImagePath.biryani, name: "Biryani"),
    CategoryModel(image: ImagePath.icecream, name: "Ice cream"),
    CategoryModel(image: ImagePath.dhosa, name: "Dosa"),
    CategoryModel(image: ImagePath.thali, name: "Thali"),
  ];

  List<PizzaModel>pizzaList=[
    PizzaModel(image: ImagePath.farmVilla,name: "Farm Villa Pizza",veg: ImagePath.veg,price: "\$34"),
    PizzaModel(image: ImagePath.capsicum,name: "Double Cheese...",veg: ImagePath.veg,price: "\$31.5"),
    PizzaModel(image: ImagePath.doubleCheese,name: "Capsicum Pizza",veg: ImagePath.veg,price: "\$20"),
    PizzaModel(image: ImagePath.farmVilla,name: "Onions Pizza",veg: ImagePath.veg,price: "\$105"),
    PizzaModel(image: ImagePath.doubleCheese,name: "Double Cheese...",veg: ImagePath.veg,price: "\$67.2"),
    PizzaModel(image: ImagePath.fPizza,name: "Capsicum Pizza",veg: ImagePath.veg,price: "\$31",),
  ];

  List<RestaurantDetailModel>restaurantLists=[
    RestaurantDetailModel(image: ImagePath.fPizza,name: "La Pino’z Pizza",veg: ImagePath.veg,name1: "Pure Veg",name2: "Pizza",name3: "Pasta"),
    RestaurantDetailModel(image: ImagePath.burgerKing,name: "Burger King",veg: ImagePath.veg,name1: "Burger",name2: "Fast Food",name3: "Coca-Cola"),
    RestaurantDetailModel(image: ImagePath.sweet,name: "Kailash Sweet...",veg: ImagePath.veg,name1: "Pure Veg",name2: "Sweets",name3: "Snacks"),
    RestaurantDetailModel(image: ImagePath.grill,name: "Grill Bar",veg: ImagePath.veg,name1: "Pure Veg",name2: "Chinese",name3: "Bhaji"),
    RestaurantDetailModel(image: ImagePath.bhel,name: "Gangour",veg: ImagePath.veg,name1: "Burger",name2: "Chinese",name3: "Aalupuri"),
    RestaurantDetailModel(image: ImagePath.fPizza,name: "Trishiv Chinese Cor...",veg: ImagePath.veg,name1: "Pure Veg",name2: "Chinese",name3: "Pasta"),
  ];

  List<Map> pizzaIngredients = [
    {
      "pizzaIngredientsName": "Onion",
      "isChecked": false,
      "pizzaIngredientsName1": "\$50"
    },
    {
      "pizzaIngredientsName": "Tomato",
      "isChecked": false,
      "pizzaIngredientsName1": "\$34"
    },
    {
      "pizzaIngredientsName": "Capsicum",
      "isChecked": false,
      "pizzaIngredientsName1": "\$10"
    },
    {
      "pizzaIngredientsName": "Olive",
      "isChecked": false,
      "pizzaIngredientsName1": "\$5"
    },
    {
      "pizzaIngredientsName": "Jalapeno",
      "isChecked": false,
      "pizzaIngredientsName1": "\$12"
    }
  ];
}