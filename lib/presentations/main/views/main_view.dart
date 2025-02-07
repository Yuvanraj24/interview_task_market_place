import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:interview_task/core/assets/asset_images.dart';
import 'package:interview_task/core/constants/app_colors.dart';
import 'package:interview_task/presentations/main/controllers/main_controller.dart';
import 'package:interview_task/presentations/widgets_common/appbar/appbar.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(
            title: Obx(() =>  Text(controller.getAppbarTitle().value)),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: InkWell(
                  onTap: (){},
                  child: SvgPicture.asset(AppIcons.appbarActionIcon),
                ),
              )
            ],

          ),
          body: Obx(() => controller.screens[controller.selectedIndex.value]),
          bottomNavigationBar: Obx(
                  () => NavigationBar(
                  height: 80,
                  elevation: 0,
                  selectedIndex: controller.selectedIndex.value,
                  onDestinationSelected: (index) => controller.selectedIndex.value = index,
                  backgroundColor: AppColors.appWhite,
                  indicatorColor:  AppColors.appGrey.withValues(alpha:.1),
                  destinations:  controller.iconTabs
              )
          )
      ),
    );
  }
}