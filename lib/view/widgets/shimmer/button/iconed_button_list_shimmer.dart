import 'package:control_panel/view/widgets/shimmer/circle_shimmer.dart';
import 'package:control_panel/view/widgets/shimmer/rounded_shimmer.dart';
import 'package:flutter/material.dart';

import 'package:control_panel/view/utils/colored.dart';

class CIconedButtonsListShimmer extends StatelessWidget {
  final int quantity;

  const CIconedButtonsListShimmer({Key? key, required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.only(bottom: 30),
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: List<int>.generate(quantity, (i) => i + 1).map((item) => Center(
          child: Row(
              children: [
                Column(
                  children: [
                    Column(children: [
                      CCircleShimmer(),
                      SizedBox(height: 8),
                      CRoundedShimmer(height: 11, width: 70),
                    ]),
                  ],
                ),
                SizedBox(width: 20),
              ],
            ),
        ),
        ).toList(),
      ),
    );
  }
}
