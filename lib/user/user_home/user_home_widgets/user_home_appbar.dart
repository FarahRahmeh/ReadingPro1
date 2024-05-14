import 'package:flutter/material.dart';

import '../../../common/widgets/appbar/appbar.dart';
import '../../../common/widgets/notification/notification_counter_icon.dart';
import '../../../utils/constans/colors.dart';
import '../../../utils/constans/texts.dart';

class UserHomePageAppbar extends StatelessWidget {
  const UserHomePageAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Texts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: MyColors.lightGrey),
          ),
          Text(
            Texts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: MyColors.white),
          ),
        ],
      ),
      actions: [
        NotificationCounterIcon(
          onPressed: () {},
          iconColor: brown,
        ),
      ],
    );
  }
}
