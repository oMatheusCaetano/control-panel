import 'package:control_panel/view/utils/colored.dart';
import 'package:control_panel/view/widgets/shimmer/rounded_shimmer.dart';
import 'package:flutter/material.dart';

class CCreditCardShimmer extends StatelessWidget {
  final Color? color;
  
  const CCreditCardShimmer({
    Key? key, 
    this.color = const Color(0xFFE0E0E0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CRoundedShimmer(
      height: 170,
      width: 290,
      color: color ?? Colored.backgroundColor(context),
      borderRadius: BorderRadius.all(Radius.circular(24)),
    );
  }
}
