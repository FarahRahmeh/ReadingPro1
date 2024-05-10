import 'package:flutter/material.dart';
import '../../utils/constans/images.dart';
import '../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subTitle;
  final VoidCallback onPressed;
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            ///Image
            Image(
              image: AssetImage(image),
              width: HelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: 32.0,
            ),

            /// Title and subTitle
            Text(title),
            const SizedBox(
              height: 22.0,
            ),
            SizedBox(
              height: 15,
            ),
            Text(subTitle),
            const SizedBox(
              height: 22.0,
            ),

            ///buttons

            // ),
            // SizedBox(
            //   child:
            //       ElevatedButton(onPressed: () {}, child: Text('Continue')),
            //   width: double.infinity,
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // SizedBox(
            //   child: OutlinedButton(
            //       onPressed: () {}, child: Text('Resend Email')),
            //   width: double.infinity,
            // ),
          ],
        ),
      )),
    );
  }
}

//!  https://youtu.be/b1i1hwWIf0M?list=PL5jb9EteFAOAusKTSuJ5eRl1BapQmMDT6&t=733