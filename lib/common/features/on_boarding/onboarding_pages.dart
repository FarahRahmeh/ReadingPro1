import 'package:booktaste/common/features/on_boarding/onboarding_controller.dart';
import 'package:booktaste/utils/constans/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constans/images.dart';
import 'onboarding_widgets/onboarding_next.dart';
import 'onboarding_widgets/onboarding_dot_navigation.dart';
import 'onboarding_widgets/onboarding_page.dart';
import 'onboarding_widgets/onboarding_skip.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(children: [
        ///Horizontal scrollable pages
        
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: Images.onboarding_1,
              title: Texts.onBoardingTitle1,
              subtitle: Texts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: Images.onboarding_2,
              title: Texts.onBoardingSubTitle2,
              subtitle: Texts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: Images.onboarding_3,
              title: Texts.onBoardingTitle3,
              subtitle: Texts.onBoardingSubTitle3,
            ),
          ],
        )

        ///skip button
        ,
        const OnBoardingSkip(),

        ///Dot Navigation smoothpageindcator

        const OnBoardingDotNavigation(),

        ///circular button
        const OnBoardingNext()
      ]),
    );
  }
}
