import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/core/widgets/main_button.dart';
import 'package:t10_greenmart/features/cart/my_cart.dart';
import 'package:t10_greenmart/features/explore/data/product_model.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Favorurite', style: TextStyles.subtitle),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemCount: beveragesProducts.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    final ProductModel product = beveragesProducts[index];
                    return Dismissible(
                      key: Key(
                        product.id.toString(),
                      ),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 20),
                        color: Colors.red,
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      onDismissed: (direction) {
                        setState(() {
                          beveragesProducts.removeAt(index);
                        });
                      },
                      child: ListTile(
                        leading: SizedBox(
                          width: 60,
                          child: Image.asset(
                            product.image ?? '',
                            fit: BoxFit.contain,
                          ),
                        ),
                        title: Text(
                          product.name ?? '',
                          style: TextStyles.caption,
                        ),
                        subtitle: Text(
                          '${product.quantity ?? ''}, Price',
                          style: TextStyles.small.copyWith(
                            color: AppColors.grey2,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '\$${(product.price ?? 0)}',
                              style: TextStyles.title,
                            ),
                            const SizedBox(width: 10),
                            Icon(Icons.arrow_forward_ios_rounded, size: 16),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: MainButton(
          text: 'Add All To Cart',
          onPress: () {
            pushTo(context, MyCartPage());
          },
        ),
      ),
    );
  }
}
