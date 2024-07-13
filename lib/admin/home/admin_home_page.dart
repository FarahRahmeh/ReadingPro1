import 'package:flutter/material.dart';

import '../../common/widgets/custom_shapes/Containers/primary_header_container.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(children: [
                ///Appbar
                ///Searchbar
                ///Categories
                ///.....
              ]),
            )
          ],
        ),
      ),
    );
  }
}
