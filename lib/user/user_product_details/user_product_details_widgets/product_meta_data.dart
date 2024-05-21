import 'package:booktaste/common/widgets/images/circular_image.dart';
import 'package:booktaste/common/widgets/texts/product_title.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/custom_shapes/Containers/rounded_container.dart';
import '../../../common/widgets/texts/product_price.dart';
import '../../../utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            ///! Sale Tag
            RoundedContainer(
              radius: Sizes.sm,
              backgroundColor: MyColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.sm, vertical: Sizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: MyColors.black),
              ),
            ),
            const SizedBox(width: Sizes.spaceBtwItems),

            //! Price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: Sizes.spaceBtwItems),
            const ProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 1.5),

        //!Title
        ProductTitleText(title: 'Some Name'),
        const SizedBox(height: Sizes.spaceBtwItems / 1.5),

        //!Stack status
        Row(
          children: [
            ProductTitleText(title: 'Status :'),
            const SizedBox(width: Sizes.spaceBtwItems),
            Text(
              'In Stack',
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 1.5),

        //! Brand
        Row(
          children: [
            CircularImage(
              image: Images.book,
              width: 32,
              height: 32,
              // overlayColor: dark ? MyColors.white : MyColors.black,
            ),
            Text(
              'Author',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            // TextTitleWithIcon(
            //   title: 'Author  ',
            //   titleTextSize: TextSizes.medium,
            // ),
          ],
        ),
      ],
    );
  }
}
