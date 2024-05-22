import 'package:booktaste/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constans/colors.dart';
import '../../../../utils/constans/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal_1_copy,
    this.showBackground = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
        width: DeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(Sizes.md),
        decoration: BoxDecoration(
          //color: Colors.transparent,
          color: showBackground
              ? dark
                  ? MyColors.dark
                  : MyColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
          border:
              showBorder ? Border.all(color: dark ? lightBrown : gray) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: lightBrown,
            ),
            const SizedBox(
              width: Sizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
