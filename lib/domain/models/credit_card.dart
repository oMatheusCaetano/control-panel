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

  factory CreditCard.fromJson(Map<String, dynamic> json) {
    return CreditCard(
      id: json['id'].toString(),
      bank: json['bank'] as String,
      flag: json['flag'] as String,
      cardholderName: json['cardholder_name'] as String,
      number: json['number'] as String,
      cvv: int.parse(json['cvv']),
      expiration: json['expiration'] as String,
      bgColor: json['bg_color'] as String,
      txtColor: json['txt_color'] as String,
    );
  }

  @override
  String toString() {
    String string = 'CreditCard(';
    string += 'id: $id, ';
    string += 'bank: $bank, ';
    string += 'flag: $flag, ';
    string += 'cardholderName: $cardholderName, ';
    string += 'number: $number, ';
    string += 'cvv: $cvv, ';
    string += 'expiration: $expiration, ';
    string += 'bgColor: $bgColor, ';
    string += 'txtColor: $txtColor, ';
    string += ')';

    return string;
  }
}
