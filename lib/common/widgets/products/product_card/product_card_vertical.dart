import 'package:booktaste/common/styles/shadows.dart';
import 'package:booktaste/common/widgets/custom_shapes/Containers/rounded_container.dart';
import 'package:booktaste/common/widgets/images/rounded_image.dart';
import 'package:booktaste/common/widgets/texts/product_title.dart';
import 'package:booktaste/user/user_product_details/product_details_page.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:booktaste/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../icons/circular_icon.dart';
import '../../texts/product_price.dart';
import '../../texts/title_with_icon.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    //~ Container with side padding ,color, edges, radius and shadow.

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailsPage()),
      child: Container(
        margin: EdgeInsets.all(4),
        width: 160,
        //180
        padding: EdgeInsets.all(1), //padding was 1
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(Sizes.productImageRadius),
          color: dark ? MyColors.darkGrey : MyColors.white,
        ),
        child: Column(
          children: [
            ///Thumbanil ,WishList button ,Discount Tag
            RoundedContainer(
              height: 160,
              padding: const EdgeInsets.all(Sizes.sm),
              backgroundColor: dark
                  ? Colors.transparent
                  : MyColors.light, //~--------the card color
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  //! Thumbnail Image
                  RoundedImage(
                    imageUrl: Images.cover1,
                    // applyImageRadius: true,
                  ),
                  //!Sale Tag
                  Positioned(
                    //*to change it's position
                    // top: 12,
                    left: -30,
                    child: RoundedContainer(
                      radius: Sizes.md,
                      backgroundColor: beige2.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                          horizontal: Sizes.sm, vertical: Sizes.xs),
                      child: Text('25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: MyColors.black)),
                    ),
                  ),

                  //! Favourite Icon Button
                  Positioned(
                    //*to control the position
                    top: 0,
                    right: -30,
                    child: CircularIcon(
                      backgroundColor: beige2.withOpacity(0.8),
                      icon: Iconsax.heart,
                      color: pinkish,
                    ),
                  ),
                ],
              ),
            ),

            ///!Details
            Padding(
              padding: EdgeInsets.only(left: Sizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'Book Title Here',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: Sizes.spaceBtwItems / 2,
                  ),
                  TextTitleWithIcon(title: 'Author'),
                ],
              ),
            ),
            const Spacer(),
            //! Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: Sizes.sm),
                  child: ProductPriceText(price: '30.99'),
                ),
                // /
                Container(
                  decoration: const BoxDecoration(
                    color: lightBrown,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Sizes.cardRadiusMd),
                      bottomRight: Radius.circular(Sizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: Sizes.iconLg * 1.2,
                    height: Sizes.iconLg * 1.2,
                    child:
                        Center(child: Icon(Icons.add, color: MyColors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
