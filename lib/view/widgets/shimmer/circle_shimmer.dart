import 'package:control_panel/view/utils/colored.dart';
import 'package:flutter/material.dart';

import 'package:control_panel/view/widgets/shimmer/base_shimmer.dart';

class CCircleShimmer extends StatelessWidget {
  final double size;
  final Color? color;

  const CCircleShimmer({Key? key, this.size = 66, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CBaseShimmer(
      color: color,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color ?? Colored.backgroundColor(context),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
