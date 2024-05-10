import 'package:booktaste/common/features/on_boarding/onboarding_controller.dart';
import 'package:booktaste/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constans/colors.dart';
import '../../../../utils/device/device_utility.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = HelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: DeviceUtils.getBottomNavigationBarHeight(),
      left: 24,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? off_white : dark_brown, dotHeight: 6),
      ),
    );
  }
}
