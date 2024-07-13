import 'package:booktaste/models/book_model.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../controllers/favourites/favourite_controller.dart';
import 'circular_icon.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final BookModel book =
        BookModel(author: 'writer', cover: Images.cover6, name: 'Book');

    final FavController controller = Get.find<FavController>();

    return Obx(() => CircularIcon(
          onPressed: () {
            if (controller.isFav(book)) {
              controller.removeFavFromList(book);
            } else {
              controller.addFavToList(book);
            }
          },
          backgroundColor: beige2.withOpacity(0.8),
          icon: controller.isFav(book) ? Iconsax.heart : Iconsax.heart_copy,
          color: controller.isFav(book) ? pinkish : pinkishMore,
        ));
  }
}
