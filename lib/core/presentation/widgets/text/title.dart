import 'package:flutter/material.dart';

enum CTitleStyles { secondary }

class CTitle extends StatelessWidget {
  final String? text;
  final CTitleStyles? styleAs;

  const CTitle(this.text, {Key? key, this.styleAs}) : super(key: key);

  TextStyle? handleStyle(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle? headline5 = theme.textTheme.headline5;

    switch (styleAs) {
      case CTitleStyles.secondary:
        return headline5?.merge(TextStyle(
          color: theme.colorScheme.secondary,
        ));
      default:
        return headline5;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      textAlign: TextAlign.left,
      style: handleStyle(context),
    );
  }
}
