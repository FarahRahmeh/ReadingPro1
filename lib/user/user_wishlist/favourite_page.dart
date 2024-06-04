import 'package:booktaste/common/widgets/appbar/appbar.dart';
import 'package:booktaste/common/widgets/icons/circular_icon.dart';
import 'package:booktaste/common/widgets/layouts/grid_layout.dart';
import 'package:booktaste/common/widgets/products/product_card/product_card_horizontal.dart';
import 'package:booktaste/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:booktaste/controllers/favourites/favourite_controller.dart';
import 'package:booktaste/models/book_model.dart';
import 'package:booktaste/user/user_home/user_home_page.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final FavController ctrl = Get.find<FavController>();
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'Favourite',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const UserHomePage()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              MyGridLayout(
                crossAxisCount: 1,
                itemCount: ctrl.numOfItems.value,
                // itemBuilder: (_, index) {
                //   return ProductCardVertical();
                // },
                itemBuilder: (context, index) {
                  final book = ctrl.favList[index];
                  return ProductCardHorizontal(
                    book: book,
                    //onpressed ctrl.remove(book)
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
