import 'package:flutter/material.dart';

import 'package:control_panel/view/helpers/asset.dart';
import 'package:control_panel/view/helpers/alert.dart';
import 'package:control_panel/view/utils/screen_dimensions.dart';

import 'package:control_panel/view/widgets/button/button.dart';
import 'package:control_panel/view/widgets/input/input.dart';
import 'package:control_panel/view/widgets/text/text_with_divider.dart';
import 'package:control_panel/view/widgets/text/title.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
                Center(
                    child: Asset.get(
                  Assets.authenticationSvg,
                  height: screen.vhPerc(0.2) > 99 ? screen.vhPerc(0.2) : 0,
                )),
                SizedBox(
                  height: screen.vhPerc(0.2) > 99 ? screen.vhPerc(0.05) : 0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CTitle('Bem-vindo!'),
                    CTitle(
                      'Cadastre-se para acessar.',
                      styleAs: CTitleStyles.secondary,
                    ),
                    SizedBox(height: screen.vhPerc(0.03)),
                    CInput(
                      placeholder: 'Nome',
                    ),
                    SizedBox(height: screen.vhPerc(0.02)),
                    CInput(
                      placeholder: 'E-mail',
                    ),
                    SizedBox(height: screen.vhPerc(0.02)),
                    CInput(
                      placeholder: 'Senha',
                      isPasswordField: true,
                    ),
                    SizedBox(height: screen.vhPerc(0.02)),
                    CInput(
                      placeholder: 'Repetir Senha',
                      isPasswordField: true,
                    ),
                    SizedBox(height: screen.vhPerc(0.03)),
                    CButton(
                      text: 'Criar Conta',
                      onPressed: () async {
                  
                      },
                    ),
                  ],
                ),
                SizedBox(height: screen.vhPerc(0.045)),
                CTextWithDivider('J?? possui uma conta?'),
                SizedBox(height: screen.vhPerc(0.01)),
                CButton(
                  text: 'Fa??a Login',
                  styleAs: CButtonStyles.light,
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, '/login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
