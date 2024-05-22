import 'package:booktaste/common/widgets/appbar/appbar.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/products/sortable/sortable_products.dart';

import '../../common/widgets/products/sortable/sortable_products.dart';

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
          child: SortableProducts(),
        ),
      ),
    );
  }
}
