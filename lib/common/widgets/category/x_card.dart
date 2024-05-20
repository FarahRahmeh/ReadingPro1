import 'package:booktaste/common/widgets/custom_shapes/Containers/rounded_container.dart';
import 'package:flutter/material.dart';

import '../../../utils/constans/enums.dart';
import '../../../utils/constans/images.dart';
import '../../../utils/constans/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../images/circular_image.dart';
import '../texts/x_title_text.dart';

class XCard extends StatelessWidget {
  const XCard({
    super.key,
    this.showBorder = true,
    this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        margin: const EdgeInsets.all(
            2), //* ---Increases this value might make a pixels overflow
        padding: const EdgeInsets.all(Sizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //--Icon
            Flexible(
              child: CircularImage(
                image: Images.onboarding_1,
                isNetworkImg: false,
                backgroundColor: Colors.transparent,
                // overlayColor: HelperFunctions.isDarkMode(context)
                //     ? MyColors.black
                //     : MyColors.white,
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwItems / 2),

            //--Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  XTitleText(
                    title: 'Book',
                    xTextSize: TextSizes.large,
                  ),
                  Text(
                    'blah blah blah........',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
