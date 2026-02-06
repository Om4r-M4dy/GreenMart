import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:t10_greenmart/features/auth/number.dart';
import 'package:t10_greenmart/features/auth/signup.dart';
import 'package:t10_greenmart/core/constants/app_assets.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/core/widgets/custom_password_form_field.dart';
import 'package:t10_greenmart/core/widgets/custom_text_form_field.dart';
import 'package:t10_greenmart/core/widgets/main_button.dart';
import 'package:t10_greenmart/core/widgets/login_signup_nav.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: SvgPicture.asset(AppAssets.carrotSvg)),
                  SizedBox(height: 40),
                  Text('Login', style: TextStyles.subHeadline),
                  SizedBox(height: 16),
                  Text(
                    'Enter your email and password',
                    style: TextStyles.body.copyWith(
                      color: AppColors.grey2,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Email',
                    style: TextStyles.body.copyWith(color: AppColors.grey2),
                  ),
                  CustomTextFormField(
                    hintText: 'example@email.com',
                    validator: (value) {
                      if (value!.isEmpty == true) {
                        return 'Please enter yor email';
                      } else if (!RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                      ).hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 15),
                  CustomPasswordFormField(),
                  SizedBox(height: 20),
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
                  SizedBox(height: 40),
                  MainButton(
                    text: 'Log In',
                    onPress: () {
                      if (formKey.currentState!.validate()) {
                        pushTo(context, Number());
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  LoginSignupNav(
                    text: "Don't have an account?",
                    screenName: 'Signup',
                    goto: Signup(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
