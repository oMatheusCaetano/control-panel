import 'package:flutter/material.dart';

enum CButtonStyles { light }

class CButton extends StatelessWidget {
  final Widget? child;
  final String? text;
  final ButtonStyle? style;
  final CButtonStyles? styleAs;
  final void Function()? onPressed;

  const CButton({
    Key? key,
    this.child,
    this.text = '',
    this.onPressed,
    this.style,
    this.styleAs,
  }) : super(key: key);

  ButtonStyle? handleStyle(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ButtonStyle btnStyle = ButtonStyle()
      .merge(style)
      .merge(ButtonStyle(
        shadowColor: MaterialStateProperty.all(Colors.grey[50]),
        elevation: MaterialStateProperty.all(1),
      ));

    switch (styleAs) {
      case CButtonStyles.light:
        return btnStyle.merge(ButtonStyle(
          backgroundColor: MaterialStateProperty.all(theme.colorScheme.background),
          foregroundColor: MaterialStateProperty.all(theme.colorScheme.onBackground),
        ));
      default:
        return btnStyle;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      child: child ?? Text(text ?? ''),
      style: handleStyle(context),
    );
  }
}
