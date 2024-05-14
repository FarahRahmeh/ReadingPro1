import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_functions.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({super.key, required this.divderText});
  final String divderText;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: dark ? Colors.grey[700] : Colors.grey[400],
          thickness: 0.5,
          indent: 60,
          endIndent: 5,
        )),
        Text(divderText,
            style: Theme.of(context)
                .textTheme
                .titleMedium), // should be labelmedium but i did not make it yet
        Flexible(
            child: Divider(
          color: dark ? Colors.grey[700] : Colors.grey[400],
          thickness: 0.5,
          indent: 5,
          endIndent: 60,
        )),
      ],
    );
  }
}
