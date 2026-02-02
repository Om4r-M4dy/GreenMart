import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';

class CustomPasswordFormField extends StatefulWidget {
  const CustomPasswordFormField({super.key,});

  @override
  State<CustomPasswordFormField> createState() => _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: TextStyles.body.copyWith(color: AppColors.grey2),
        ),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: 'Enter your password',
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
            suffixIcon: IconButton(
              icon: Icon(Icons.visibility_off_outlined),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
