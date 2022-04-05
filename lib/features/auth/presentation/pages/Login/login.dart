import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            Text('Login Page'),
            SizedBox(
              width: 150,
              child: SButton(
                text: 'Hello World',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SButton extends StatelessWidget {
  final Widget? child;
  final String? text;
  final ButtonStyle? style;
  final void Function()? onPressed;

  const SButton({
    Key? key,
    this.child,
    this.text = '',
    this.onPressed,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ?? () {},
      child: child ?? Text(text ?? ''),
      style: ButtonStyle().merge(style).merge(ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFFFC6B68)),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        minimumSize: MaterialStateProperty.all(Size.fromHeight(50)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
        ),
      )),  
    );
  }
}
