import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constans/colors.dart';

class NotificationCounterIcon extends StatelessWidget {
  const NotificationCounterIcon({
    super.key,
    this.iconColor = offWhite,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.notification,
            color: iconColor,
          ),
        ),
        Positioned(
          //! here you can change the position of the circular little container (that holds the number)
          right: 2,
          top: 2,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: MyColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                  //! here the number inside the little conatiner
                  '2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: MyColors.white, fontSizeFactor: 0.8)),
            ),
          ),
        )
      ],
    );
  }
}
