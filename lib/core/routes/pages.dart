import 'package:get/get.dart';
import 'package:interview_task/core/routes/app_routes.dart';
import 'package:interview_task/presentations/main/bindings/main_binding.dart';
import 'package:interview_task/presentations/main/views/main_view.dart';

class AppPages {
static final List <GetPage> pages = [
  GetPage(name: AppRoutes.mainView, page: () => MainView() , binding: MainBinding())
];
}