import 'package:booktaste/user/user_home/user_home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/custom_shapes/Containers/circular_container.dart';
import '../../../common/widgets/images/rounded_image.dart';
import '../../../utils/constans/colors.dart';
import '../../../utils/constans/images.dart';
import '../../../utils/constans/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserHomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => RoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(
          height: Sizes.spaceBtwItems,
        ),
        Center(
          child: Obx(() => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < banners.length; i++)
                    CircularContainer(
                      margin: const EdgeInsets.only(right: 10),
                      width: 20,
                      height: 4,
                      backgroundColor:
                          controller.carousalCurrentIndex.value == i
                              ? brown
                              : gray,
                    ),
                ],
              )),
        )
      ],
    );
  }
}
