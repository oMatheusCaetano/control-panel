import 'package:flutter/material.dart';

class CInput extends StatelessWidget {
  final IconData? icon;
  final String? placeholder;
  final bool isPasswordField;

  const CInput({
    Key? key, 
    this.icon, 
    this.placeholder,
    this.isPasswordField = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFFE9EBEF),
      ),
      child: TextField(
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
    );
  }
}
