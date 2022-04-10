import 'package:flutter/material.dart';

class CTextWithDivider extends StatelessWidget {
  final String? text;

  const CTextWithDivider(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        SizedBox(width: 10),
        Text(
          text ?? '',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        SizedBox(width: 10),
        Expanded(child: Divider()),
      ],
    );
  }
}
