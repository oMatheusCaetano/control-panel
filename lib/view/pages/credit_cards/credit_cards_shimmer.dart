import 'package:control_panel/view/utils/colored.dart';
import 'package:control_panel/view/utils/screen_dimensions.dart';
import 'package:control_panel/view/widgets/shimmer/button/iconed_button_list_shimmer.dart';
import 'package:control_panel/view/widgets/shimmer/card/credit_card_shimmer.dart';
import 'package:control_panel/view/widgets/shimmer/circle_shimmer.dart';
import 'package:control_panel/view/widgets/shimmer/rounded_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CreditCardsShimmer extends StatelessWidget {
  const CreditCardsShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = ScreenDimensions(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: screen.top + 15),
            height: 320,
            decoration: BoxDecoration(
              color: Colored.schemePrimary(context),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 20
                ),
                child: Row(children: [
                  CCircleShimmer(
                    size: 46,
                    color: Colored.lighten(Colored.schemePrimary(context)),
                  ),
                ]),
              ),
              Row(children: [
                CRoundedShimmer(
                  height: 170,
                  width: 25,
                  color: Colored.lighten(Colored.schemePrimary(context)),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),

                Expanded(child: SizedBox()),

                CCreditCardShimmer(
                  color: Colored.lighten(Colored.schemePrimary(context)),
                ),

                Expanded(child: SizedBox()),

                CRoundedShimmer(
                  height: 170,
                  width: 25,
                  color: Colored.lighten(Colored.schemePrimary(context)),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                  ),
                ),
              ]),
            ]),
          ),
          SizedBox(height: 20),
          CIconedButtonsListShimmer(quantity: 4),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CRoundedShimmer(height: 16, width: 120),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CRoundedShimmer(height: 14, width: 110),
                SizedBox(height: 10),
                CRoundedShimmer(height: 12, width: 120),
              ]),
              Spacer(),
              CRoundedShimmer(),
            ])
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CRoundedShimmer(height: 14, width: 90),
                SizedBox(height: 10),
                CRoundedShimmer(height: 12, width: 150),
              ]),
              Spacer(),
              CRoundedShimmer(),
            ])
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CRoundedShimmer(height: 14, width: 120),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CRoundedShimmer(height: 12, width: 150),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CRoundedShimmer(height: 14, width: 100),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CRoundedShimmer(height: 12, width: 100),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CRoundedShimmer(height: 14, width: 90),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CRoundedShimmer(height: 12, width: 110),
          ),
        ],
      ),
    );
  }
}
