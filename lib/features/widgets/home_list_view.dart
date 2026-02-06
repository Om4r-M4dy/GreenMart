import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({
    super.key,
    required this.itemName,
    required this.itemImage,
    required this.itemQuantity,
    required this.itemPrice,
  });

  final String itemName;
  final String itemImage;
  final String itemQuantity;
  final String itemPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(itemImage,)),
            SizedBox(height: 20),
            Text(itemName, style: TextStyles.body),
            Text(
              itemQuantity,
              style: TextStyles.small.copyWith(color: AppColors.grey2),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(itemPrice, style: TextStyles.body),
                SizedBox(
                  height: 38,
                  width: 38,
                  child: FloatingActionButton.small(
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
    );
  }
}
