import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  });
  final String labelText;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyles.body.copyWith(color: AppColors.grey2),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyles.body.copyWith(
              color: AppColors.grey2,
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.error),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.error),
            ),
          ),
        ),
      ],
    );
  }
}
