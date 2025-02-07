import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_task/core/assets/asset_images.dart';
import 'package:interview_task/core/constants/app_colors.dart';
import 'package:interview_task/core/constants/app_sizes.dart';
import 'package:interview_task/presentations/widgets_common/custom_shapes/containers/rounded_container.dart';
import 'package:interview_task/presentations/widgets_common/images/circular_image.dart';
import 'package:interview_task/presentations/widgets_common/images/rounded_image.dart';
import 'package:interview_task/presentations/widgets_common/shimmers/shimmer_effect.dart';

class MarketPlaceView extends StatelessWidget {
  const MarketPlaceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppRoundedContainer(
          padding: EdgeInsets.all(AppSizes.md),
          child: Column(
            children: [
              Row(
                children: [
                  CachedNetworkImage(
                    height: 65,
                    width: 65,
                    imageUrl: AppImages.user,
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.fill,
                           ),
                      ),
                    ),
                    progressIndicatorBuilder: (context, url, downloadProgress) => const AppShimmerEffect(width: 55, height: 55),
                    errorWidget: (context, url, error) => Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(AppImages.user),
                            fit: BoxFit.fill,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(width: AppSizes.lg),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Angel Rosser",
                      style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      SizedBox(
                        width: Get.width / 1.6,
                        child: Text('Sales Manager at Meesho privated limited',
                        style: Theme.of(context).textTheme.titleMedium!.apply(color: AppColors.appGrey.withValues(alpha: .5)),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.history,
                            color: AppColors.appGrey.withValues(alpha: .4),
                          ),
                          Text('2s',style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.appGrey.withValues(alpha: .8),),)
                        ],
                      )
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios)
              ],)
            ],
          ),
        )
      ],
    );
  }
}
