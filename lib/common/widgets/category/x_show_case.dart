import 'package:flutter/material.dart';

import '../../../utils/constans/colors.dart';
import '../../../utils/constans/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/Containers/rounded_container.dart';
import 'x_card.dart';

class XShowcase extends StatelessWidget {
  const XShowcase({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: gray,
      padding: EdgeInsets.all(Sizes.md),
      margin: EdgeInsets.only(bottom: Sizes.spaceBtwItems),
      child: Column(
        children: [
          /// genre with books count
          XCard(
            showBorder: false,
          ),
          const SizedBox(
            height: Sizes.spaceBtwItems,
          ),
          // genre top 3 books images
          Row(
            children: images
                .map((image) => XTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget XTopProductImageWidget(String image, context) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: HelperFunctions.isDarkMode(context)
            ? MyColors.darkGrey
            : MyColors.light,
        margin: const EdgeInsets.only(right: Sizes.sm),
        padding: const EdgeInsets.all(Sizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
