import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_task/core/routes/app_routes.dart';
import 'package:interview_task/core/routes/pages.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        getPages: AppPages.pages,
        initialRoute: AppRoutes.mainView,

    );
  }
}
