import 'package:control_panel/core/presentation/helpers/alert.dart';
import 'package:flutter/material.dart';

import 'package:control_panel/core/presentation/helpers/asset.dart';
import 'package:control_panel/core/presentation/utils/screen_dimensions.dart';

import 'package:control_panel/core/presentation/widgets/button/button.dart';
import 'package:control_panel/core/presentation/widgets/input/input.dart';
import 'package:control_panel/core/presentation/widgets/text/text_with_divider.dart';
import 'package:control_panel/core/presentation/widgets/text/title.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameC = TextEditingController();
  final emailC = TextEditingController();
  final passwordC = TextEditingController();
  final rPasswordC = TextEditingController();

  Map errors = {
    'name': '',
    'email': '',
    'password': '',
    'password_confirmation': '',
  };

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
                    height: screen.vhPerc(0.2) > 99 ? screen.vhPerc(0.05) : 0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CTitle('Bem-vindo!'),
                    CTitle('Cadastre-se para acessar.',
                        styleAs: CTitleStyles.secondary),
                    SizedBox(height: screen.vhPerc(0.03)),
                    CInput(
                      placeholder: 'Nome',
                      controller: nameC,
                      error: errors['name'],
                    ),
                    SizedBox(height: screen.vhPerc(0.02)),
                    CInput(
                      placeholder: 'E-mail',
                      controller: emailC,
                      error: errors['email'],
                    ),
                    SizedBox(height: screen.vhPerc(0.02)),
                    CInput(
                      placeholder: 'Senha',
                      controller: passwordC,
                      error: errors['password'],
                      isPasswordField: true,
                    ),
                    SizedBox(height: screen.vhPerc(0.02)),
                    CInput(
                      placeholder: 'Repetir Senha',
                      controller: rPasswordC,
                      error: errors['password_confirmation'],
                      isPasswordField: true,
                    ),
                    SizedBox(height: screen.vhPerc(0.03)),
                    CButton(
                      text: 'Criar Conta',
                      onPressed: () {
                        Alert.await(context, 'Criando conta...');
                        setState(() {
                          errors = {
                            'name': '',
                            'email': '',
                            'password': '',
                            'password_confirmation': '',
                          };
                        });
                        setState(() {
                          errors['name'] = 'Este campo é obrigatório';
                          errors['email'] = 'Este campo precisa ser um endereço de e-mail válido';
                          errors['password'] = 'Este campo precisa ter pelo meno 8 caracteres';
                          errors['password_confirmation'] = 'Este campo não está igual ao campo senha';
                        });
                        Alert.close(context);
                      },
                    ),
                  ],
                ),
                SizedBox(height: screen.vhPerc(0.045)),
                CTextWithDivider('Já possui uma conta?'),
                SizedBox(height: screen.vhPerc(0.01)),
                CButton(
                  text: 'Faça Login',
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
