import 'package:control_panel/view/helpers/alert.dart';
import 'package:flutter/material.dart';

import 'package:control_panel/view/helpers/asset.dart';
import 'package:control_panel/view/utils/screen_dimensions.dart';

import 'package:control_panel/view/widgets/input/input.dart';
import 'package:control_panel/view/widgets/text/title.dart';
import 'package:control_panel/view/widgets/button/button.dart';
import 'package:control_panel/view/widgets/text/text_with_divider.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ScreenDimensions screen = ScreenDimensions(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: screen.vhPerc(0.2) > 99 ? screen.vhPerc(0.02) : 0),
                Center(
                    child: Asset.get(
                  Assets.loginSvg,
                  height: screen.vhPerc(0.2) > 99 ? screen.vhPerc(0.2) : 0,
                )),
                SizedBox(
                    height: screen.vhPerc(0.2) > 99 ? screen.vhPerc(0.09) : 0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CTitle('Bem-vindo de volta!'),
                    CTitle('Faça login para acessar.', styleAs: CTitleStyles.secondary),
                    SizedBox(height: screen.vhPerc(0.03)),
                    CInput(
                      placeholder: 'E-mail',
                      controller: emailController,
                    ),
                    SizedBox(height: screen.vhPerc(0.02)),
                    CInput(
                      placeholder: 'Senha', 
                      isPasswordField: true,
                      controller: passwordController
                    ),
                    SizedBox(height: screen.vhPerc(0.02)),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                    SizedBox(height: screen.vhPerc(0.04)),
                    CButton(
                      text: 'Entrar',
                      onPressed: () {
                        Alert.wait(context, emailController.text + ' - ' + passwordController.text);
                      },
                    ),
                  ],
                ),
                SizedBox(height: screen.vhPerc(0.11)),
                CTextWithDivider('Ainda não possui uma conta?'),
                SizedBox(height: screen.vhPerc(0.01)),
                CButton(
                  text: 'Criar Conta',
                  styleAs: CButtonStyles.light,
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, '/sign-up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
