import 'package:flutter/material.dart';

class ScreenDimensions {
  late final double _vh;
  late final double _vw;
  late final double _top;

  ScreenDimensions(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    _vh = mediaQuery.size.height;
    _vw = mediaQuery.size.width;
    _top = mediaQuery.viewPadding.top;
  }

  double vhPerc(double perc) => _vh * perc;
  double vwPerc(double perc) => _vw * perc;

  double get vh => _vh;
  double get vw => _vw;
  double get top => _top;
}
