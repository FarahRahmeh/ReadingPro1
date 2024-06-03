import 'package:flutter/material.dart';

import '../../../utils/constans/colors.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    // this.currencySign = '\$',
    required this.price,
    // this.maxLines = 1,
    // this.isLarge = false,
    // this.lineThrough = false,
  });
  final String price;
  // final String currencySign;
  // final int maxLines;
  // final bool isLarge;
  // final bool lineThrough;
  @override
  Widget build(BuildContext context) {
    return Text(
      // currencySign +
     "${price}",
        overflow: TextOverflow.ellipsis,
        // maxLines: maxLines,
        // style: isLarge
        style:
        Theme.of(context).textTheme.headlineMedium!.apply(
                color: brown)
            // ? Theme.of(context).textTheme.headlineMedium!.apply(
            //     decoration: lineThrough ? TextDecoration.lineThrough : null)
            // : Theme.of(context).textTheme.titleLarge!.apply(
            //     decoration: lineThrough ? TextDecoration.lineThrough : null)
            );
  }
}
