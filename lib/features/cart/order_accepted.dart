import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/constants/app_assets.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/core/widgets/main_button.dart';
import 'package:t10_greenmart/features/main/main_app_screen.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.successPng),
              SizedBox(height: 60),
              Text(
                'Your Order has been accepted',
                style: TextStyles.subHeadline,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Your items has been placed and is on it\'s way to being processed',
                style: TextStyles.body.copyWith(
                  color: AppColors.grey2,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60),
              MainButton(
                text: 'Go To Home',
                onPress: () {
                  removeUntil(context, MainAppScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
