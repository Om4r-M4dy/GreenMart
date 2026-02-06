import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/core/widgets/custom_text_form_field.dart';
import 'package:t10_greenmart/core/widgets/main_button.dart';
import 'package:t10_greenmart/features/auth/verification.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: AppColors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter your mobile number',
                    style: TextStyles.subHeadline,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'We need to verify you. We will send you a one time verification code.',
                    style: TextStyles.body.copyWith(
                      color: AppColors.grey2,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 40),
                  CustomTextFormField(
                    hintText: '01xxxxxxxxx',
                    validator: (value) {
                      if (value!.isEmpty == true) {
                        return 'Please enter yor phone number';
                      } else if (value.length != 11) {
                        return 'Please enter a valid phone number';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                  ),

                  SizedBox(height: 40),
                  MainButton(
                    text: 'Next',
                    onPress: () {
                      if (formKey.currentState!.validate()) {
                        pushTo(context, Verification());
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Resend confirmation code (1:23)',
                    style: TextStyles.caption.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
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
