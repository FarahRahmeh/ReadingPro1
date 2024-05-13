import 'package:booktaste/utils/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class Loaders {
  static successSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: darkBrown,
      backgroundColor: beige,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.check, color: darkBrown),
    );
  }

  static warningSnackBar({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: darkBrown,
      backgroundColor: lightBrown,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Iconsax.warning_2, color: darkBrown),
    );
  }

  static errorSnackBAr({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: darkBrown,
      backgroundColor: pinkish,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 4),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Iconsax.warning_2, color: darkBrown),
    );
  }
}
