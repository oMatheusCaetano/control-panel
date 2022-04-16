import 'package:control_panel/view/utils/colored.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CBaseShimmer extends StatelessWidget {
  final Widget child;
  final Color? color;

  const CBaseShimmer({
    Key? key,
    required this.child,
    this.color = const Color(0xFFE0E0E0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fColor = color ?? Color(0xFFE0E0E0);

    return Shimmer.fromColors(
      baseColor: fColor,
      highlightColor: Colored.darken(fColor, 0.03),
      child: child,
    );
  }
}
