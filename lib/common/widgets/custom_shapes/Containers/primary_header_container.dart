import 'package:flutter/material.dart';

import '../../../../utils/constans/colors.dart';
import '../curved_edges/curved_edge_widget.dart';
import 'circular_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
    this.height = 300,
  });
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        //! the colored part COLOR ........
        color: MyColors.accent,

        padding: const EdgeInsets.all(0),
        child: SizedBox(
          //! the colored part HEIGHT ........
          height: height,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: MyColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -200,
                child: CircularContainer(
                  backgroundColor: MyColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
