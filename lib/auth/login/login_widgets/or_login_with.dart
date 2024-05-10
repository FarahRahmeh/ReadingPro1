import 'package:flutter/material.dart';

import '../../../utils/constans/images.dart';

class OrLoginWith extends StatelessWidget {
  const OrLoginWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            icon: const Image(
              width: 20,
              height: 20,
              image: AssetImage(Images.google),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
