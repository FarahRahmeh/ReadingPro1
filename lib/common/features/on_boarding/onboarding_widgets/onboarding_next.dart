import 'package:booktaste/common/features/on_boarding/onboarding_controller.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingNext extends StatelessWidget {
  const OnBoardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Positioned(
        right: 24,
        bottom: DeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            //shape: CircleBorder(),
            backgroundColor: dark ? beige : darkBrown,
          ),
          child: Icon(
            Iconsax.arrow_right_3_copy,
            color: dark ? darkBrown : beige,
          ),
          onPressed: () => OnBoardingController.instance.nextPage(),
        ));
  }
}
