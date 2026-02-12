import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/features/explore/pages/product_detail/product_detail.dart';

class ProductName extends StatelessWidget {
  const ProductName({
    super.key,
    required this.widget,
  });

  final ProductDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.product.name ?? '',
              style: TextStyles.subtitle,
            ),
            SizedBox(height: 10),
            Text(
              '${widget.product.quantity}',
              style: TextStyles.caption.copyWith(
                color: AppColors.grey2,
              ),
            ),
          ],
        ),
        IconButton(
          color: AppColors.grey2,
          onPressed: () {},
          icon: Icon(Icons.favorite_border_rounded),
        ),
      ],
    );
  }
}
