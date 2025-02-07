import 'package:get/get.dart';
import 'package:interview_task/presentations/main/controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }

}