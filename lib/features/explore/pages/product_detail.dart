import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/core/widgets/main_button.dart';
import 'package:t10_greenmart/features/explore/data/product_model.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key, required this.product});

  final ProductModel product;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                  ),
                  SizedBox(height: 30),
                  Transform.translate(
                    offset: Offset(-15, 0),
                    child: Row(
                      children: [
                        IconButton(
                          color: AppColors.grey2,
                          onPressed: () {
                            setState(() {
                              if (count > 1) count--;
                            });
                          },
                          icon: Icon(Icons.remove_rounded),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text('$count', style: TextStyles.body),
                          ),
                        ),
                        IconButton(
                          color: AppColors.primary,
                          onPressed: () {
                            setState(() {
                              count++;
                            });
                          },
                          icon: Icon(Icons.add_rounded),
                        ),
                        Spacer(),
                        Text(
                          '\$${(widget.product.price ?? 0) * count}',
                          style: TextStyles.title,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  ExpansionTile(
                    title: Text('Product Details', style: TextStyles.caption),
                    tilePadding: EdgeInsets.all(0),
                    children: [
                      Text(
                        widget.product.description ??
                            'No description available.',
                        style: TextStyles.small.copyWith(
                          color: AppColors.grey2,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text('Nutritions', style: TextStyles.caption),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.all(14),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.borderColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '100gr',
                            style: TextStyles.small.copyWith(
                              color: AppColors.grey2,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded, size: 16),
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text('Review', style: TextStyles.caption),
                      Spacer(),
                      RatingBar.builder(
                        itemCount: 5,
                        itemSize: 20,
                        initialRating:   widget.product.review ?? 1,
                        minRating: 1,
                        itemBuilder: (context, _) =>
                            Icon(Icons.star, color: AppColors.ratingColor),
                        onRatingUpdate: (rating) {},
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward_ios_rounded, size: 16),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(25),
        child: MainButton(text: 'Add To Cart', onPress: (){})
      ),
    );
  }
}
