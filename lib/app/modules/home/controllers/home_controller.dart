import 'package:food_delivery/app/data/models/fooditemlist.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  List<String> categories = [
    'assets/images/burger_Final.png',
    'assets/images/hot_dog.png',
    'assets/images/sandwich1.png',
    'assets/images/fries1.png'
  ];

  List<FoodItemList> foodList = RxList<FoodItemList>();
  @override
  void onInit() {
    super.onInit();
    foodList.add(FoodItemList('Exact Huricane', 'italian , Chinese, Indain...', 9.12, 'assets/images/burger1.png'));
    foodList.add(FoodItemList('Heal Eat', 'italian , Chinese, Indain...', 9.12, 'assets/images/pizza.png'));
    foodList.add(FoodItemList('Exact Huricane', 'italian , Chinese, Indain...', 9.12, 'assets/images/salad.png'));

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
