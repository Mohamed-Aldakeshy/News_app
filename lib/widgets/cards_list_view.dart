import 'package:flutter/material.dart';
import 'package:news_app/models/card_model.dart';

import 'card_item.dart';

class CardsListView extends StatelessWidget {
  const CardsListView({
    super.key,
  });

  final List<CardModel> cardsList = const [
    CardModel(cardName: 'Business', image: 'assets/business.avif'),
    CardModel(cardName: 'Entertainment', image: 'assets/entertaiment.avif'),
    CardModel(cardName: 'Health', image: 'assets/health.avif'),
    CardModel(cardName: 'Science', image: 'assets/science.avif'),
    CardModel(cardName: 'Sports', image: 'assets/sports.avif'),
    CardModel(cardName: 'Technology', image: 'assets/technology.jpeg'),
    CardModel(cardName: 'General', image: 'assets/general.avif'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: cardsList.length,
          itemBuilder: (context, index) {
            return CardItem(
              card: cardsList[index],
            );
          }),
    );
  }
}
