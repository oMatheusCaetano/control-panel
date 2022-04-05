import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Assets {
  authenticationSvg,
  loginSvg,
}

abstract class Asset {
  static final paths = {
    Assets.authenticationSvg: 'assets/svg/authentication.svg',
    Assets.loginSvg: 'assets/svg/login.svg',
  };

  static Widget get(Assets path, {double? width, double? height}) {
    return SvgPicture.asset(
      paths[path] ?? '',
      width: width,
      height: height,
    );
  }
}
