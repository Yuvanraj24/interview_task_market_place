import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_task/core/constants/app_colors.dart';
import 'package:interview_task/core/constants/app_sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColors.appBlack,
              ))
          : leadingIcon != null
              ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
              : null,
      title: title,
      titleTextStyle: Theme.of(context).textTheme.titleMedium!.apply(color: AppColors.appWhite),
      actions: actions,
      // flexibleSpace: Container(
      //   decoration: const BoxDecoration(
      //     gradient: LinearGradient(
      //         begin: Alignment.topCenter,
      //         end: Alignment.bottomCenter,
      //         colors: <Color>[Colors.pink, Colors.deepOrangeAccent, Colors.black45]),
      //
      //   ),
      // ),
      backgroundColor: AppColors.orange.withValues(alpha: .8),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
