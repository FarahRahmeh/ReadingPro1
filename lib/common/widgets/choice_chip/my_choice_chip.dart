import 'package:booktaste/common/widgets/custom_shapes/Containers/circular_container.dart';
import 'package:booktaste/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyChoiceChip extends StatelessWidget {
  const MyChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = HelperFunctions.getColor(text) != null;

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? Colors.white : null),
        avatar: isColor
            ? CircularContainer(
                width: 80,
                height: 50,
                backgroundColor: HelperFunctions.getColor(text)!,
              )
            : null,
        labelPadding: isColor ? EdgeInsets.all(0) : null,

        // Make the icon in the center
        shape: isColor ? CircleBorder() : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        // selectedColor: isColor ? HelperFunctions.getColor(text)! : null,
        backgroundColor: isColor ? HelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
