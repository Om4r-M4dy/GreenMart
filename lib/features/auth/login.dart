import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:t10_greenmart/features/auth/signup.dart';
import 'package:t10_greenmart/core/constants/app_assets.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/core/widgets/custom_password_form_field.dart';
import 'package:t10_greenmart/core/widgets/custom_text_form_field.dart';
import 'package:t10_greenmart/core/widgets/main_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: SvgPicture.asset(AppAssets.carrotSvg)),
            SizedBox(height: 50),
            Text('Login', style: TextStyles.subHeadline),
            SizedBox(height: 8),
            Text(
              'Enter your email and password',
              style: TextStyles.body.copyWith(
                color: AppColors.grey2,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 40),
            CustomTextFormField(
              labelText: 'Email',
              hintText: 'example@email.com',
            ),
            SizedBox(height: 40),
            CustomPasswordFormField(),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyles.caption.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            MainButton(text: 'Log In', onPress: () {}),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?", style: TextStyles.caption),
                TextButton(
                  onPressed: () {
                    replacement(context, Signup());
                  },
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Text(
                    'Signup',
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
