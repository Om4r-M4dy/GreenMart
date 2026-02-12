import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/features/explore/pages/product_detail/product_detail.dart';

class CustomProductImage extends StatelessWidget {
  const CustomProductImage({
    super.key,
    required this.widget,
  });

  final ProductDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 335,
      decoration: BoxDecoration(
        color: AppColors.borderColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
              Transform.translate(
                offset: Offset(-5, 0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.ios_share_rounded),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 180,
            child: Hero(
              tag: widget.product.tag ?? '',
              child: Image.asset(
                widget.product.image ?? '',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
