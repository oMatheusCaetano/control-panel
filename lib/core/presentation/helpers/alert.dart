import 'package:flutter/material.dart';

class Alert {
  static await(BuildContext context, [String? message = 'Carregando...']) {
    showModalBottomSheet(
      context: context,
      // isDismissible: false,
      enableDrag: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (BuildContext c) {
        return Padding(
          padding: const EdgeInsets.all(26),
          child: Row(
            children: [
              SizedBox(child: CircularProgressIndicator(), height: 10),
              SizedBox(width: 26),
              Text(message ?? 'Carregando...'),
            ],
          ),
        );
      }
    );
  }

  static close(BuildContext context) {
    Navigator.pop(context);
  }
}
