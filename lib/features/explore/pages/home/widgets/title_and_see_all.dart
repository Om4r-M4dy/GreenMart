import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';

class TitleAndSeeAll extends StatelessWidget {
  const TitleAndSeeAll({
    super.key,
    required this.title,
    required this.onSeeAllPressed,
  });

  final String title;
  final Function() onSeeAllPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyles.title),
          TextButton(
            onPressed: onSeeAllPressed,
            child: Text(
              'See All',
              style: TextStyles.caption.copyWith(color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
