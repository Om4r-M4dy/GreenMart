import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/features/explore/data/product_model.dart';
import 'package:t10_greenmart/features/explore/widgets/item_card.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Center(child: Text('Beverages', style: TextStyles.subtitle)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.tune_rounded))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: beveragesProducts.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
            ),
            itemBuilder: (context, index) {
              ProductModel product = beveragesProducts[index];
              return ItemCard(product: product);
            },
          ),
        ),
      ),
    );
  }
}
