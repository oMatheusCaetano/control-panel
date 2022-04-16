import 'package:control_panel/view/utils/colored.dart';
import 'package:flutter/material.dart';

import 'package:control_panel/view/widgets/shimmer/base_shimmer.dart';

class CRoundedShimmer extends StatelessWidget {
  final double width;
  final double height;
  late final BorderRadiusGeometry borderRadius;
  final Widget? child;
  final Color? color;

  CRoundedShimmer({
    Key? key, 
    this.child,
    this.color = const Color(0xFFE0E0E0),
    this.width = 42,
    this.height = 42,
    BorderRadiusGeometry? borderRadius,
  }) : super(key: key) {
    this.borderRadius = borderRadius ?? BorderRadius.circular(10);
  }

  @override
  Widget build(BuildContext context) {
    return CBaseShimmer(
      color: color,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? Colored.backgroundColor(context),
          borderRadius: borderRadius,
        ),
        child: child,
      ),
    );
  }
}
