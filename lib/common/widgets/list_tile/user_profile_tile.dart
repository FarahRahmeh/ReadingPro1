import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constans/colors.dart';
import '../../../utils/constans/images.dart';
import '../images/circular_image.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(
          image: Images.success, width: 50, height: 50, padding: 0),
      title: Text(
        'Whatever',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: MyColors.white),
      ),
      subtitle: Text(
        'username@whatever.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: MyColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Iconsax.edit_2, color: MyColors.white),
      ),
    );
  }
}
