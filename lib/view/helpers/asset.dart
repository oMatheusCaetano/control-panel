import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Assets {
  //! Auth
  authenticationSvg,
  loginSvg,
  forgotPasswordSvg,

  //! Credit Cards
  masterCardSvg,
  visaSvg,
  eloSvg,

  //! Bank Logos
  santanderSvg,
  nubankSvg,
}

abstract class Asset {
  static final paths = {
    Assets.authenticationSvg: 'assets/svg/authentication.svg',
    Assets.loginSvg: 'assets/svg/login.svg',
    Assets.forgotPasswordSvg: 'assets/svg/forgot_password.svg',
    Assets.masterCardSvg: 'assets/svg/master_card.svg',
    Assets.visaSvg: 'assets/svg/visa_card.svg',
    Assets.eloSvg: 'assets/svg/elo_card.svg',
    Assets.santanderSvg: 'assets/svg/santander_bank.svg',
    Assets.nubankSvg: 'assets/svg/nubank_bank.svg',
  };

  static final nameToAssets = {
    'nubank': Assets.nubankSvg,
    'santander': Assets.santanderSvg,
    'visa': Assets.visaSvg,
    'mastercard': Assets.masterCardSvg,
    'elo': Assets.eloSvg,
  };

  static Widget get(Assets path, {double? width, double? height, Color? color}) {
    return SvgPicture.asset(
      paths[path] ?? '',
      width: width,
      height: height,
      color: color,
    );
  }

  static Widget fromName(String name, {double? width, double? height, Color? color}) {
    return Asset.get(
      nameToAssets[name
        .replaceAll(' ', '')
        .replaceAll(RegExp(r'[^\w\s]+'), '')
        .toLowerCase()
      ] ?? Assets.loginSvg,
      width: width,
      height: height,
      color: color,
    );
  }
}
