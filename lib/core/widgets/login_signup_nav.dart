import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';

class LoginSignupNav extends StatelessWidget {
  const LoginSignupNav({
    super.key,
    required this.text,
    required this.screenName,
    required this.goto,
  });

  final String text;
  final String screenName;
  final Widget goto;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: TextStyles.caption),
        TextButton(
          onPressed: () {
            replacement(context, goto);
          },
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: Text(
            screenName,
            style: TextStyles.caption.copyWith(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
