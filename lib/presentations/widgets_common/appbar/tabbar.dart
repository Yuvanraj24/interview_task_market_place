// import 'package:flutter/material.dart';
// import 'package:trendigo/utils/constants/colors.dart';
// import 'package:trendigo/utils/constants/sizes.dart';
// import 'package:trendigo/utils/device/device_utility.dart';
// import 'package:trendigo/utils/helpers/helper_function.dart';
//
// class SiajTabBar extends StatelessWidget implements PreferredSizeWidget {
//   const SiajTabBar({
//     super.key, required this.tabs,
//   });
//
//   final List<Widget> tabs;
//
//   @override
//   Widget build(BuildContext context) {
//
//     final bool darkMode = SiajHelperFunctions.isDarkMode(context);
//     return Material(
//       color: darkMode ? SiajColors.black : SiajColors.white,
//       child: TabBar(
//           tabs: tabs,
//           isScrollable: true,
//           indicatorColor: SiajColors.primaryColor,
//           unselectedLabelColor: SiajColors.darkGrey,
//           labelColor: darkMode ? SiajColors.white : SiajColors.primaryColor,
//           ),
//     );
//   }
//
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size.fromHeight(SiajDeviceUtils.getAppBarHeight());
// }