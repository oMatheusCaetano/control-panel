import 'package:flutter/material.dart';

class CreditCard {
  String? id;
  String bank;
  String flag;
  String cardholderName;
  String number;
  String expiration;
  String bgColor;
  String txtColor;
  int cvv;

  CreditCard({
    this.id,
    required this.bank,
    required this.flag,
    required this.cardholderName,
    required this.number,
    required this.cvv,
    required this.expiration,
    required this.bgColor,
    required this.txtColor,
  });
}
