import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_task/presentations/marketplace/maket_place.dart';

class MainController extends GetxController {

  static MainController get instance => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  RxString getAppbarTitle({
    RxString? input
}){
    switch (selectedIndex.value){
      case 0 : return "Explore".obs;
      case 1 : return "Marketplace".obs;
      case 2 : return "Search".obs;
      case 3 : return "Activity".obs;
      case 4 : return "Profile".obs;
      default : return input ?? ''.obs;
    }
  }

  final RxInt selectedIndex = 1.obs;

  final List<Widget> screens = [
    Center(child: Text("Explore")),
    MarketPlaceView(),
    Center(child: Text("Search")),
    Center(child: Text("Activity")),
    Center(child: Text("Profile")),

  ];

  final iconTabs = <NavigationDestination> [
      NavigationDestination(icon: Icon(Icons.explore), label: "Explore"),
      NavigationDestination(icon: Icon(Icons.business_sharp), label: "Marketplace"),
      NavigationDestination(icon: Icon(Icons.search), label: "Search"),
      NavigationDestination(icon: Icon(Icons.history), label: "Activity"),
      NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
  ];

}