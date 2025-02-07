import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/core/assets/asset_images.dart';
import 'package:interview_task/presentations/widgets_common/custom_shapes/containers/rounded_container.dart';
import 'package:interview_task/presentations/widgets_common/images/circular_image.dart';
import 'package:interview_task/presentations/widgets_common/images/rounded_image.dart';

class MarketPlaceView extends StatelessWidget {
  const MarketPlaceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppRoundedContainer(
          child: Column(
            children: [
              Row(
                children: [
                  CachedNetworkImage(
                    imageUrl: AppImages.user,
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.fill,
                            colorFilter:
                            ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
                      ),
                    ),
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
              ],)
            ],
          ),
        )
      ],
    );
  }
}
