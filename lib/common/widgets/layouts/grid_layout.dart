import 'package:flutter/material.dart';

import '../../../utils/constans/sizes.dart';
import '../products/product_card/product_card_vertical.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 250, //288
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      // padding: EdgeInsets.all(Sizes.md),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        childAspectRatio: Sizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
