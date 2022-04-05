import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final Widget? child;
  final String? text;
  final ButtonStyle? style;
  final void Function()? onPressed;

  const CButton({
    Key? key,
    this.child,
    this.text = '',
    this.onPressed,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      child: child ?? Text(text ?? ''),
      style: ButtonStyle().merge(style).merge(ButtonStyle(
        elevation: MaterialStateProperty.all(0)
      )),
    );
  }
}
