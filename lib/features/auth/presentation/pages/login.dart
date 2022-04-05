import 'package:flutter/material.dart';

import 'package:control_panel/core/presentation/widgets/button/button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bom dia família.')),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            Text('Login Page'),
            SizedBox(
              width: 150,
              child: CButton(
                text: 'Hello World',
              ),
            )
          ],
        ),
      ),
    );
  }
}
