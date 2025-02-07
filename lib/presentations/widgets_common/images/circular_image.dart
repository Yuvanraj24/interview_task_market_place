import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/core/constants/app_colors.dart';
import 'package:interview_task/core/constants/app_sizes.dart';
import 'package:interview_task/presentations/widgets_common/shimmers/shimmer_effect.dart';

class SiajCircularImage extends StatelessWidget {
  const SiajCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
     this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
     this.width = 56,
     this.height = 56,
     this.padding = AppSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.appWhite,
          borderRadius: BorderRadius.circular(100)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Center(
          child: isNetworkImage ? CachedNetworkImage(
            fit: fit,
            color: overlayColor,
            imageUrl: image,
            progressIndicatorBuilder: (context, url, downloadProgress) => const AppShimmerEffect(width: 55, height: 55),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ): Image(
            fit: fit,
            image: AssetImage(image) as ImageProvider,
            color: overlayColor,
          ),
        )
      ));
  }
}
