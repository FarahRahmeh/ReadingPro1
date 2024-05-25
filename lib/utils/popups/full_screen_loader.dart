import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constans/colors.dart';
import '../helpers/helper_functions.dart';
import '../../common/widgets/loaders/animation_loader.dart';
import '../../common/widgets/loaders/circular_loader.dart';

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
      builder: (_) => WillPopScope(
        onWillPop: () async => false,
        // Scaffold(
        //   //canPop: false,
        child: Container(
          color: HelperFunctions.isDarkMode(Get.context!) ? darkBrown : beige,
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

  static void popUpCircular() {
    Get.defaultDialog(
      title: '',
      onWillPop: () async => false,
      content: const CircularLoader(),
      backgroundColor: Colors.transparent,
    );
  }

  ///Stop the loading dialog.
  ///
  ///This method doesn't return anything.
  static void stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
