import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:control_panel/domain/models/credit_card.dart';
import 'package:control_panel/view/widgets/card/credit_card.dart';

class CCreditCardsCarousel extends StatelessWidget {
  final dynamic Function(CreditCard, int)? onPageChanged;
  final List<CreditCard> cards;

  const CCreditCardsCarousel(this.cards, { Key? key, this.onPageChanged }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        onPageChanged: (i, _) { onPageChanged!(cards[i], i); }
      ),
      itemCount: cards.length,
      itemBuilder: (BuildContext context, int i, int pageViewIndex) {
        return Center(child: CCreditCard(cards[i]));
      },
    );
  }
}