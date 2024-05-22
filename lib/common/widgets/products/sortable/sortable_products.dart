import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constans/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../product_card/product_card_vertical.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///! Dropdown
        DropdownButtonFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.sort_copy),
          ),
          onChanged: (value) {},
          items: [
            'Name',
            'Author',
            'Sale',
            'Lower Price',
            'Higher Price',
            'Newest',
            'Popularity'
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        SizedBox(
          height: Sizes.spaceBtwSections,
        ),

        /// !Products
        MyGridLayout(
          itemCount: 6,
          itemBuilder: (_, index) => ProductCardVertical(),
        ),
      ],
    );
  }
}
