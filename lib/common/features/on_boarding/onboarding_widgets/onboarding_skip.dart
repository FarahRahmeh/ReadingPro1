import 'package:booktaste/common/features/on_boarding/onboarding_controller.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:flutter/material.dart';

import '../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 20, //default sapce
        top: DeviceUtils.getAppBarHeight(),
        child: TextButton(
          style: TextButton.styleFrom(
              splashFactory: NoSplash.splashFactory, elevation: 0,),
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: Text('Skip',
              style: TextStyle(
                color: dark_brown,
              )),
        ));
  }
}
