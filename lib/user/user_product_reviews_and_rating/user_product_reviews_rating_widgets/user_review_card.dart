import 'package:booktaste/common/widgets/custom_shapes/Containers/rounded_container.dart';
import 'package:booktaste/user/user_product_reviews_and_rating/user_product_reviews_rating_widgets/rating_bar_indicator.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constans/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(Images.success),
                ),
                SizedBox(
                  width: Sizes.spaceBtwItems,
                ),
                Text(
                  'Username',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Iconsax.more_copy),
            ),
          ],
        ),
        SizedBox(
          width: Sizes.spaceBtwItems,
        ),

        ///!Review
        Row(
          children: [
            MyRatingBarIndicator(rating: 2, itemSize: 14),
            SizedBox(
              height: Sizes.spaceBtwItems,
            ),
            Text(
              '01 Nov, 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(
          height: Sizes.spaceBtwItems,
        ),
        Text(
            'Like ittttttt'), //todo Note : if this long it will cause a pixels overflow
        //TODO   Readmore text  vid 24 time  16:30 -> 17:25
        SizedBox(
          height: Sizes.spaceBtwItems,
        ),

        //! Company Review
        RoundedContainer(
          backgroundColor: dark ? MyColors.darkGrey : gray,
          child: Padding(
            padding: EdgeInsets.all(Sizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'X Store',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      '02 Nov, 2023',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(
                  height: Sizes.spaceBtwItems,
                ),
                Text(
                    'Thank U !!!'), //todo Note : if this long it will cause a pixels overflow
                //TODO   Readmore text  vid 24 time  16:30 -> 17:25
                SizedBox(
                  height: Sizes.spaceBtwItems,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: Sizes.spaceBtwSections,
        )
      ],
    );
  }
}
