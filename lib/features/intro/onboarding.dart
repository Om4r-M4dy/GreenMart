import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:t10_greenmart/features/auth/pages/login.dart';
import 'package:t10_greenmart/core/constants/app_assets.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/core/widgets/main_button.dart';
import 'package:t10_greenmart/features/main/main_app_screen.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.welcomePng,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              Expanded(child: Container()),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        AppAssets.carrotSvg,
                        colorFilter: ColorFilter.mode(
                          AppColors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '  Welcome \nto our store',
                        style: TextStyles.headline,
                      ),
                      Text(
                        'Get your groceries in as fast as one hour',
                        style: TextStyles.body.copyWith(
                          color: AppColors.grey1,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 40),
                      MainButton(
                        text: 'Get Started',
                        onPress: () {
                          replacement(context, MainAppScreen());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
