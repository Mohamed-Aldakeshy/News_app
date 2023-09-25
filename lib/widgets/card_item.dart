import 'package:flutter/material.dart';
import 'package:news_app/models/card_model.dart';
import 'package:news_app/views/category_view.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.card});

  final CardModel card;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                categoryName: card.cardName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          width: 160,
          height: 85,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(card.image),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
              child: Text(
            card.cardName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
