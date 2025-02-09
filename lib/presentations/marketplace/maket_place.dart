import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:interview_task/core/assets/asset_images.dart';
import 'package:interview_task/core/constants/app_colors.dart';
import 'package:interview_task/core/constants/app_sizes.dart';
import 'package:interview_task/presentations/widgets_common/custom_shapes/containers/rounded_container.dart';
import 'package:interview_task/presentations/widgets_common/shimmers/shimmer_effect.dart';

class MarketPlaceView extends StatelessWidget {
  const MarketPlaceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppRoundedContainer(
        padding: EdgeInsets.all(AppSizes.md),
        child: Column(children: [
          // Heading with User Image
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  const AppShimmerEffect(width: 55, height: 55),
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
                Text(
                  "Angel Rosser",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  width: Get.width / 1.6,
                  child: Text(
                    'Sales Manager at Meesho privated limited',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(color: AppColors.appGrey.withValues(alpha: .5)),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.history,
                      color: AppColors.appGrey.withValues(alpha: .5),
                    ),
                    Text(
                      '2s',
                      style: Theme.of(context).textTheme.labelMedium!.apply(
                            color: AppColors.appGrey.withValues(alpha: .5),
                          ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(width: AppSizes.sm),
            Icon(Icons.arrow_forward_ios,
                color: AppColors.appGrey.withValues(alpha: .6))
          ]),

          SizedBox(height: AppSizes.spaceBtwItems),

          // Position icon with job person need
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(AppIcons.positionIcon1),
              SizedBox(width: AppSizes.sm),
              Text('Looking for Influencer marketing agency')
            ],
          ),

          Text('Budget: ₹1,50,000 Brand: WanderFit Luggage Location: Goa & Kerala Type: Lifestyle & Adventure travel content with a focus on young, urban audiences Language: English and Hindi Looking for a travel influencer who can showcase our premium luggage line in scenic beach and nature destinations. Content should emphasize ease of travel and durability of the product.')

        ]),
      )
    ]);
  }
}
