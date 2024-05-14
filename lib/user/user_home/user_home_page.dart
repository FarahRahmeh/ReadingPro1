import 'package:booktaste/common/widgets/custom_shapes/Containers/primary_header_container.dart';
import 'package:flutter/material.dart';

import 'user_home_widgets/user_home_appbar.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: PrimaryHeaderContainer(
          child: Column(
            children: [
              ///Appbar
              UserHomePageAppbar(),

              ///Searchbar
              ///Categories
              ///Cafes
              ///.....
            ],
          ),
        ),
      ),
    );
  }
}
