import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/features/main/main_app_screen.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/core/widgets/main_button.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,),
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
                    'Enter verification code',
                    style: TextStyles.subHeadline,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'We have sent SMS to: 01xxxxxxxxxx',
                    style: TextStyles.body.copyWith(
                      color: AppColors.grey2,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 30),
                  Pinput(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    length: 5,
                    defaultPinTheme: PinTheme(
                      width: 60,
                      height: 60,
                      textStyle: TextStyles.subHeadline.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.accent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty == true) {
                        return 'Please enter the verification code';
                      } else if (value.length < 4) {
                        return 'Please enter a valid verification code';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resend OTP',
                          style: TextStyles.caption.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.otpColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Change Phone Number',
                          style: TextStyles.caption.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.gray3,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  MainButton(
                    text: 'Confirm',
                    onPress: () {
                      if (formKey.currentState!.validate()) {
                        removeUntil(context, MainAppScreen());
                      }
                    },
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
