import 'package:booktaste/common/widgets/appbar/appbar.dart';
import 'package:booktaste/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:booktaste/common/widgets/icons/circular_icon.dart';
import 'package:booktaste/common/widgets/images/rounded_image.dart';
import 'package:booktaste/user/user_product_details/user_product_details_widgets/product_meta_data.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:booktaste/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import 'user_product_details_widgets/product_image_slider.dart';
import 'user_product_details_widgets/product_ratings_and_share.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///! 1--- Product Image slider
            ProductImageSlider(),

            ///! 2--- Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: Sizes.defaultSpace,
                  left: Sizes.defaultSpace,
                  bottom: Sizes.defaultSpace),
              child: Column(
                children: [
                  ///! -Rating & Share
                  RatingsAndShare(),

                  ///! -Price , Title ,stock , & brand
                  ProductMetaData(),
                  ///! -Attributes
                  ///! -Checkout button
                  ///! -Description
                  ///! -Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
