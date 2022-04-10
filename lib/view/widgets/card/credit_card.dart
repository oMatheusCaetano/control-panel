import 'package:control_panel/domain/models/credit_card.dart';
import 'package:flutter/material.dart';

import 'package:control_panel/view/helpers/asset.dart';
import 'package:control_panel/view/utils/colored.dart';

class CCreditCard extends StatelessWidget {
  final CreditCard card;

  const CCreditCard(this.card, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      height: 170,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colored(card.bgColor),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(.15),
            spreadRadius: 5,
            blurRadius: 20,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(children: [
        Row(children: [
          Asset.fromName(card.bank, height: 30, color: Colors.white),
          Spacer(),
          Asset.fromName('visa', width: 30,),
        ]),
        Spacer(),
        Text(card.cardholderName, style: TextStyle(color:Colored(card.txtColor))),
        Text(card.number, style: TextStyle(color:Colored(card.txtColor))),
        Row(children: [
          Text(card.cvv.toString(), style: TextStyle(color:Colored(card.txtColor))),
          Spacer(),
          Text(card.expiration, style: TextStyle(color:Colored(card.txtColor))),
        ]),
      ]),
    );
  }
}