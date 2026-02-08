import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/features/explore/data/product_model.dart';
import 'package:t10_greenmart/features/explore/pages/product_detail.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, ProductDetailScreen(product: product));
      },
      child: Container(
        width: 160,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Expanded(
                  child: Hero(
                    tag: product.tag ?? '',
                    child: Image.asset(product.image ?? ''),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(product.name ?? '', style: TextStyles.body),
              Text(
                product.quantity ?? '',
                style: TextStyles.small.copyWith(color: AppColors.grey2),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price?.toStringAsFixed(2) ?? '0.00'}',
                    style: TextStyles.body,
                  ),
                  SizedBox(
                    height: 38,
                    width: 38,
                    child: FloatingActionButton.small(
                      heroTag: null,
                      elevation: 0,
                      backgroundColor: AppColors.primary,
                      onPressed: () {},
                      child: Icon(Icons.add, color: AppColors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
