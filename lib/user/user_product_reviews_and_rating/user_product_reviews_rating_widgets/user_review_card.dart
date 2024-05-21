import 'package:booktaste/common/widgets/custom_shapes/Containers/rounded_container.dart';
import 'package:booktaste/user/user_product_reviews_and_rating/user_product_reviews_rating_widgets/rating_bar_indicator.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:read_more_text/read_more_text.dart';
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
        Divider(color: beige2),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ReadMoreText(
          'like it...........................................................................................................',
          numLines: 1,
          readMoreText: 'Show more',
          readLessText: 'Less',
          readMoreIconColor: pinkish,
          readMoreTextStyle: TextStyle(color: brown),
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),

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
                ReadMoreText(
                  'Thank u...........................................................................................................',
                  numLines: 1,
                  readMoreText: 'Show more',
                  readLessText: 'Less',
                  readMoreIconColor: pinkish,
                  readMoreTextStyle: TextStyle(color: brown),
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
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
