import 'package:control_panel/features/auth/presentation/pages/sign_up.dart';
import 'package:flutter/material.dart';

import 'package:control_panel/core/presentation/theme/theme.dart';
import 'package:control_panel/features/auth/presentation/pages/login.dart';

void main() => runApp(const ControlPanel());

class ControlPanel extends StatelessWidget {
  const ControlPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Control Panel',
      theme: handleTheme(context),
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/sign-up': (context) => SignUp(),
      },
    );
  }
}
