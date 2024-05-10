import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constans/colors.dart';
import '../helpers/helper_functions.dart';
import 'animation_loader.dart';

class FullScreenLoader {
  // Open a full-screen loading dialog with a given text and animation.
  // This method doesn't return anything.
  //
  // Parameters:
  // - text: The text to be displayed in the loading dialog.
  // - animation: The Lottie animation to be shown.

  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (c) => Scaffold(
        //canPop: false,
        body: Container(
          color: HelperFunctions.isDarkMode(Get.context!) ? dark_brown : beige,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              AnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  ///Stop the loading dialog.
  ///
  ///This method doesn't return anything.
  static void stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
