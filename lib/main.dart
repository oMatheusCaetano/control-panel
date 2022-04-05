import 'package:flutter/material.dart';

import 'package:control_panel/core/presentation/theme/theme.dart';
import 'package:control_panel/features/auth/presentation/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Control Panel',
      debugShowCheckedModeBanner: false,
      theme: handleTheme(context),
      home: Login(),
    );
  }
}
