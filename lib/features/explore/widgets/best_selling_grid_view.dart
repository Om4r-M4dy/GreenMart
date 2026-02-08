import 'package:flutter/material.dart';
import 'package:t10_greenmart/features/explore/data/product_model.dart';
import 'package:t10_greenmart/features/explore/widgets/item_card.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 245,
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        itemCount: bestProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) {
          final ProductModel product = bestProducts[index];
          return ItemCard(product: product);
        },
      ),
    );
  }
}
