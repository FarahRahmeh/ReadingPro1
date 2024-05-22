import 'package:booktaste/common/widgets/custom_shapes/Containers/rounded_container.dart';
import 'package:booktaste/common/widgets/images/rounded_image.dart';
import 'package:booktaste/common/widgets/texts/product_title.dart';
import 'package:booktaste/common/widgets/texts/x_title_text.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constans/colors.dart';
import '../../../../utils/constans/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../styles/shadows.dart';
import '../../icons/circular_icon.dart';
import '../../texts/product_price.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Container(
      margin: EdgeInsets.all(4),
      width: 320,
      //180
      padding: const EdgeInsets.all(1), //padding was 1
      decoration: BoxDecoration(
        // boxShadow: [ShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(Sizes.productImageRadius),
        color: dark ? MyColors.darkGrey : beige2.withOpacity(0.4),
      ),
      child: Row(
        children: [
          //! -- Thumbnail
          RoundedContainer(
            showBorder: true,
            borderColor: beige2.withOpacity(0.4),
            height: 120,
            padding: const EdgeInsets.all(Sizes.sm),
            backgroundColor: dark ? Colors.transparent : offWhite,
            child: Stack(
              children: [
                //! --Thumbnail Image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: RoundedImage(
                    imageUrl: Images.cover4,
                    applyImageRadius: true,
                  ),
                ),
                //! -- sale tag
                Positioned(
                  top: 12,
                  // left: -30,
                  child: RoundedContainer(
                    radius: Sizes.md,
                    backgroundColor: beige2.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
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
                  right: 0,
                  child: CircularIcon(
                    backgroundColor: beige2.withOpacity(0.7),
                    icon: Iconsax.heart,
                    color: pinkish,
                  ),
                ),
              ],
            ),
          ),
          //! Details
          SizedBox(
            width: 180,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: Sizes.sm, left: Sizes.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                        title: 'Harry Potter and the Chamber of Secrets',
                        smallSize: true,
                      ),
                      SizedBox(
                        height: Sizes.spaceBtwItems / 2,
                      ),
                      XTitleText(title: 'J.K. Rowling'),
                    ],
                  ),
                ),
                SizedBox(
                  height: Sizes.spaceBtwItems / 3,
                ),
                const Spacer(),
                //! Price Row
                Padding(
                  padding: const EdgeInsets.only(left: Sizes.sm),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: ProductPriceText(price: '30.99'),
                      ),
                      // !Add to Cart
                      Container(
                        decoration: BoxDecoration(
                          color: lightBrown,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Sizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(Sizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: Sizes.iconLg * 1.2,
                          height: Sizes.iconLg * 1.2,
                          child: Center(
                              child: Icon(Icons.add, color: MyColors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
