import 'package:carousel_slider/carousel_slider.dart';
import 'package:control_panel/data/repositories/credit_card_repository.dart';
import 'package:control_panel/data/services/http/http.dart';
import 'package:control_panel/data/services/http/http_response.dart';
import 'package:control_panel/domain/models/credit_card.dart';
import 'package:control_panel/view/helpers/asset.dart';
import 'package:control_panel/view/pages/credit_cards/credit_cards_shimmer.dart';
import 'package:control_panel/view/utils/colored.dart';
import 'package:control_panel/view/utils/screen_dimensions.dart';
import 'package:control_panel/view/widgets/button/iconed_buttons_list.dart';
import 'package:control_panel/view/widgets/carousel/credit_cards_carousel.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CreditCards extends StatefulWidget {
  const CreditCards({Key? key}) : super(key: key);

  @override
  State<CreditCards> createState() => _CreditCardsState();
}

class _CreditCardsState extends State<CreditCards> {
  int creditCardsIndex = 0;
  List<CreditCard> creditCards = [
    CreditCard(
      id: '1',
      bank: 'Nubank',
      flag: 'Master Card',
      cardholderName: 'Matheus s Caetano',
      number: '1234 5678 9012 3456',
      cvv: 123,
      expiration: '12/20',
      bgColor: '#612F74',
      txtColor: '#FFFFFF',
    ),
    CreditCard(
      id: '2',
      bank: 'Santander',
      flag: 'Visa',
      cardholderName: 'Matheus s Caetano',
      number: '1234 7678 9012 3456',
      cvv: 123,
      expiration: '11/27',
      bgColor: '#EC0000',
      txtColor: '#FFFFFF',
    ),
  ];

  @override
  initState() {
    super.initState();
    loadCreditCards();
  }

  Future<void> loadCreditCards() async {
    print('Loading credit cards...');
    final repo = CreditCardRepository();
    final creditCards = await repo.all();
    print(creditCards);
  }

  @override
  Widget build(BuildContext context) {
    final screen = ScreenDimensions(context);

    return CreditCardsShimmer();

    return Scaffold(
      body: Column(
        children: [
          //? Header
          AnimatedContainer(
              duration: Duration(milliseconds: 300),
              padding: EdgeInsets.only(top: screen.top, bottom: 5),
              decoration: BoxDecoration(
                color: Colored.darken(creditCards[creditCardsIndex].bgColor),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                gradient: RadialGradient(
                  center: Alignment.bottomCenter,
                  radius: 3,
                  colors: [
                    Colored.darken(creditCards[creditCardsIndex].bgColor),
                    Colored.lighten(creditCards[creditCardsIndex].bgColor),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 15),
                    child: Row(children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colored.darken(
                              creditCards[creditCardsIndex].bgColor,
                            ),
                            child: Text(
                              creditCards[creditCardsIndex].bank[0],
                              style: TextStyle(
                                color: Colored.lighten(
                                  creditCards[creditCardsIndex].bgColor,
                                ),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                  CCreditCardsCarousel(
                    creditCards,
                    onPageChanged: (_, i) => setState(() {
                      creditCardsIndex = i;
                    }),
                  ),
                ],
              )),

          //? Tabs
          Expanded(
            child: CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                height: screen.max,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          CIconedButtonsList(items: [
                            CIconedButtonsListItem(
                              icon: Icons.add_rounded,
                              label: 'Novo Cartão',
                            ),
                            CIconedButtonsListItem(
                                icon: Icons.edit_rounded,
                                label: 'Editar Cartão',
                                onPressed: () {
                                  loadCreditCards();
                                }),
                            CIconedButtonsListItem(
                              icon: Icons.delete_rounded,
                              label: 'Excluir Cartão',
                            ),
                            CIconedButtonsListItem(
                              icon: Icons.more_horiz_rounded,
                              label: 'Ocultar Opções',
                            ),
                          ]),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Dados do Cartão',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              physics: BouncingScrollPhysics(),
                              child: Column(
                                children: [
                                  ListTile(
                                    trailing: Asset.fromName(
                                        creditCards[creditCardsIndex].bank,
                                        height: 20),
                                    title: Text('Banco'),
                                    subtitle: Text(
                                        creditCards[creditCardsIndex].bank),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 0),
                                  ),
                                  ListTile(
                                    trailing: Asset.fromName(
                                        creditCards[creditCardsIndex].flag,
                                        height: 30),
                                    title: Text('Bandeira'),
                                    subtitle: Text(
                                        creditCards[creditCardsIndex].flag),
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                  ),
                                  ListTile(
                                    title: Text('Nome no Cartão'),
                                    subtitle: Text(creditCards[creditCardsIndex]
                                        .cardholderName),
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                  ),
                                  ListTile(
                                    title: Text('Número'),
                                    subtitle: Text(
                                        creditCards[creditCardsIndex].number),
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                  ),
                                  ListTile(
                                    title: Text('Validade'),
                                    subtitle: Text(creditCards[creditCardsIndex]
                                        .expiration),
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                  ),
                                  ListTile(
                                    title: Text('CVV'),
                                    subtitle: Text(creditCards[creditCardsIndex]
                                        .cvv
                                        .toString()),
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
