import 'package:flutter/material.dart';

import '../../../common/widgets/image_with_text/vertical_image_text.dart';
import '../../../utils/constans/images.dart';

class UserHomeCategories extends StatelessWidget {
  const UserHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageWithText(
            image: Images.book,
            title: "All",
            onTap: () {},
            // textColor: , //~------------same color
          );
        },
      ),
    );
  }
}
