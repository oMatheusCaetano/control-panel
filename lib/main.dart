import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

import 'package:control_panel/view/pages/auth/sign_up.dart';
import 'package:control_panel/view/pages/credit_cards/credit_cards.dart';
import 'package:control_panel/view/theme/theme.dart';
import 'package:control_panel/view/pages/auth/login.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const ControlPanel());
}

class ControlPanel extends StatelessWidget {
  const ControlPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Control Panel',
      theme: handleTheme(context),
      initialRoute: '/credit-cards',
      routes: {
        //! Auth
        '/login': (context) => Login(),
        '/sign-up': (context) => SignUp(),

        //! Finances
        '/credit-cards': (context) => CreditCards(),
      },
    );
  }
}
