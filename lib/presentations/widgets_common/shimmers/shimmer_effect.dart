import 'package:flutter/material.dart';
import 'package:interview_task/core/constants/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmerEffect extends StatelessWidget {
  const AppShimmerEffect(
      {super.key,
      required this.width,
      required this.height,
      this.radius = 15,
      this.color

      });

  final double width, height, radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color ?? AppColors.appGrey.withValues(alpha: .5),
              // borderRadius: BorderRadius.circular(radius)
          ),
        ));
  }
}
