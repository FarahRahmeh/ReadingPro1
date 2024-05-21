import 'package:booktaste/common/widgets/appbar/appbar.dart';
import 'package:booktaste/user/user_product_reviews_and_rating/user_product_reviews_rating_widgets/user_review_card.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import 'user_product_reviews_rating_widgets/overall_product_rating.dart';
import 'user_product_reviews_rating_widgets/rating_bar_indicator.dart';

class ProductReviewsPage extends StatelessWidget {
  const ProductReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! Appbar
      appBar: MyAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      //! Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ratings and Rrviews are verified and are from people who user the same type of device that you ues.',
              ),
              SizedBox(
                height: Sizes.spaceBtwItems,
              ),

              ///! Overall Product Ratings
              OverallProductRating(),
              MyRatingBarIndicator(rating: 3.5),
              SizedBox(
                height: Sizes.spaceBtwItems / 2,
              ),
              Text(
                '1,030',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),

              /// ! User reviews List (Feedback)
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
