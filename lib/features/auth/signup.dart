import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:t10_greenmart/core/constants/app_assets.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/core/widgets/custom_password_form_field.dart';
import 'package:t10_greenmart/core/widgets/custom_text_form_field.dart';
import 'package:t10_greenmart/core/widgets/main_button.dart';
import 'package:t10_greenmart/features/auth/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: SvgPicture.asset(AppAssets.carrotSvg)),
            SizedBox(height: 50),
            Text('Sign Up', style: TextStyles.subHeadline),
            SizedBox(height: 8),
            Text(
              'Enter your credentials to continue',
              style: TextStyles.body.copyWith(
                color: AppColors.grey2,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 40),
            CustomTextFormField(
              labelText: 'Username',
              hintText: 'Enter your username',
            ),
            SizedBox(height: 40),
            CustomTextFormField(
              labelText: 'Email',
              hintText: 'example@email.com',
            ),
            SizedBox(height: 40),
            CustomPasswordFormField(),
            SizedBox(height: 50),
            MainButton(text: 'Sign Up', onPress: () {}),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Alredy have an account?", style: TextStyles.caption),
                TextButton(
                  onPressed: () {
                    replacement(context, Login());
                  },
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Text(
                    'Login',
                    style: TextStyles.caption.copyWith(
                      color: AppColors.primary,
                    ),
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
