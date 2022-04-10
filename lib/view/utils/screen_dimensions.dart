import 'package:flutter/material.dart';

class ScreenDimensions {
  late final double _vh;
  late final double _vw;
  late final double _top;
  late final double _appBar;
  late final double _max;

  ScreenDimensions(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    _vh = mediaQuery.size.height;
    _vw = mediaQuery.size.width;
    _max = double.maxFinite;
    _top = mediaQuery.viewPadding.top;
    _appBar = AppBar().preferredSize.height;
  }

  double vhPerc(double perc) => _vh * perc;
  double vwPerc(double perc) => _vw * perc;

  double get vh => _vh;
  double get vw => _vw;
  double get max => _max;
  double get top => _top;
  double get appBar => _appBar;
  double get roof => _appBar + _top;
}
