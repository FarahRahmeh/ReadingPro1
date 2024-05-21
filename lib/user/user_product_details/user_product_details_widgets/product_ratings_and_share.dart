import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constans/sizes.dart';

class RatingsAndShare extends StatelessWidget {
  const RatingsAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Iconsax.star_1_copy, color: Colors.amber, size: 24),
        const SizedBox(width: Sizes.spaceBtwItems / 2),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '5.0 ', style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: '(199) '),
            ],
          ),
        ),
      ],
    );
  }
}
