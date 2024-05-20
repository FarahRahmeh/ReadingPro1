import 'package:booktaste/utils/constans/enums.dart';
import 'package:flutter/material.dart';

class XTitleText extends StatelessWidget {
  const XTitleText(
      {super.key,
      this.color,
      required this.title,
      this.textAlign = TextAlign.center,
      this.maxLines = 1,
      this.xTextSize = TextSizes.small});

  final Color? color;
  final String title;
  final TextAlign? textAlign;
  final int maxLines;
  final TextSizes xTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: xTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : xTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : xTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyLarge!.apply(color: color),
    );
  }
}
