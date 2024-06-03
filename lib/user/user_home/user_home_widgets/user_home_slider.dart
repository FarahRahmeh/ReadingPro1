import 'package:booktaste/common/widgets/images/circular_image.dart';
import 'package:booktaste/user/user_home/user_home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/custom_shapes/Containers/circular_container.dart';
import '../../../common/widgets/images/rounded_image.dart';
import '../../../utils/constans/colors.dart';
import '../../../utils/constans/images.dart';
import '../../../utils/constans/sizes.dart';
import '../user_home_model.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserHomeController());
      final cafescontroller = Get.put(CafesController());

    return Column(
      children: [
        Obx(() {
          if (cafescontroller.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          } else {
            return SizedBox(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: cafescontroller.cafesList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 200,
                        child: RoundedImage(imageUrl: banners[index]),
                      ),
                      // RoundedImage(imageUrl:cafescontroller.cafesList[index].image),
                      SizedBox(
                        // width: 55,
                        child: Text(
                          "${cafescontroller.cafesList[index].name}",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: brown), //~------------color
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          }
        }),
        // Stack(children: [
        //   CarouselSlider(
        //     options: CarouselOptions(
        //       viewportFraction: 1,
        //       onPageChanged: (index, _) =>
        //           controller.updatePageIndicator(index),
        //     ),
        //     items: banners.map((url) => RoundedImage(imageUrl: url)).toList(),
        //   ),
        //   SizedBox(
        //     // width: 55,

        //     child: Text(
        //       "${cafes.name}",
        //       style: Theme.of(context)
        //           .textTheme
        //           .labelMedium!
        //           .apply(color: brown), //~------------color
        //       maxLines: 1,
        //       overflow: TextOverflow.ellipsis,
        //     ),
        //   ),
        // ]),

        // const SizedBox(
        //   height: Sizes.spaceBtwItems,
        // ),
        // Center(
        //   child: Obx(() => Row(
        //         mainAxisSize: MainAxisSize.min,
        //         children: [
        //           for (int i = 0; i < banners.length; i++)
        //             Column(
        //               children: [
        //                 CircularContainer(
        //                   margin: const EdgeInsets.only(right: 10),
        //                   width: 20,
        //                   height: 4,
        //                   backgroundColor:
        //                       controller.carousalCurrentIndex.value == i
        //                           ? brown
        //                           : gray,
        //                 ),
        //               ],
        //             ),
        //         ],
        //       )),
        // )
      ],
    );
  }
}
