import 'package:booktaste/common/widgets/appbar/appbar.dart';
import 'package:booktaste/common/widgets/custom_shapes/Containers/primary_header_container.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/constans/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: PrimaryHeaderContainer(
          child: Column(
            children: [
              MyAppBar(
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
                  Stack(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.notification,
                          //! here you can change the icon color
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
