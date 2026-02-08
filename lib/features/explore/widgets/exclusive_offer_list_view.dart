import 'package:flutter/material.dart';
import 'package:t10_greenmart/features/explore/data/product_model.dart';
import 'package:t10_greenmart/features/explore/widgets/item_card.dart';

class ExclusiveOfferListView extends StatelessWidget {
  const ExclusiveOfferListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        itemCount: exclusiveProducts.length,
        itemBuilder: (context, index) {
          final ProductModel product = exclusiveProducts[index];
          return ItemCard(product: product);
        },
      ),
    );
  }
}
