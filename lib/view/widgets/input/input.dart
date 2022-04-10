import 'package:flutter/material.dart';

class CInput extends StatelessWidget {
  final IconData? icon;
  final String? placeholder;
  final String? error;
  final bool isPasswordField;
  final TextEditingController? controller;

  const CInput({
    Key? key,
    this.icon,
    this.placeholder,
    this.error,
    this.isPasswordField = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFFE9EBEF),
            ),
            child: TextField(
              controller: controller,
              obscureText: isPasswordField,
              enableSuggestions: !isPasswordField,
              autocorrect: !isPasswordField,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: placeholder,
                icon: icon != null ? Icon(icon) : null,
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 22, bottom: 22),
              ),
            ),
          ),

          (error?.length == null || error == '') ? SizedBox() : Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 5,
              right: 5,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                error ?? '',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
