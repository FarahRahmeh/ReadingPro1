import 'package:booktaste/common/widgets/appbar/appbar.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:flutter/material.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
            // children: [
            //   PrimaryHeaderContainer(
            //     child: Column(
            //       children: [
            //         MyAppBar(),
            //       ],
            //     ),
            //   ),
            // ],
            ),
      ),
    );
  }
}

// class PrimaryHeaderContainer extends StatelessWidget {
//   final Widget _child;
//   const PrimaryHeaderContainer({super.key, required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return TCurvedEdgesWidget(
//       child: SizedBox(
//         height: 400,
//         child: Container(
//           color: MyColors.primary,
//           child: Stack(
//             /// [size_isInfinite] is not true! Error -> Read README.md file at [DESIGN ERRORS] i 1
//             children: [
//               /// -- Background Custom Shapes --
//               Positioned(
//                   top: -150,
//                   right: -250,
//                   child: TCircularContainer(
//                       backgroundColor: MyColors.textWhite.withOpacity(0.8))),
//               Positioned(
//                   top: 100,
//                   right: -300,
//                   child: TCircularContainer(
//                       backgroundColor: MyColors.textWhite.withOpacity(0.7))),
//               _child,
//             ],
//           ), // Stack
//         ), // Container
//       ), // SizedBox
//     ); // TCurvedEdgesWidget
//   }
// }
