import 'package:booktaste/common/widgets/appbar/appbar.dart';
import 'package:booktaste/common/widgets/layouts/grid_layout.dart';
import 'package:booktaste/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class AllProductsPage extends StatelessWidget {
  const AllProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Popular Books'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
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
              MyGridView(
                itemCount: 6,
                itemBuilder: (_, index) => ProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
