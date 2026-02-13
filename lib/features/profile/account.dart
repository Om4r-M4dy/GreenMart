import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/constants/app_assets.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/features/auth/pages/login.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25.0, right: 25, left: 25),
            child: Column(
              children: [
                const SizedBox(height: 20),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(AppAssets.profilePng),
                  ),
                  title: Text(
                    'Omar Mady',
                    style: TextStyles.subtitle.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text('omar.mady2017@gmail.com'),
                ),
                SizedBox(height: 30),
                Divider(),
                ListTile(
                  leading: Icon(Icons.shopping_bag_outlined),
                  title: Text('Orders', style: TextStyles.body),
                  trailing: Icon(Icons.chevron_right_rounded),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.badge_outlined),
                  title: Text('My Details', style: TextStyles.body),
                  trailing: Icon(Icons.chevron_right_rounded),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text('Delivery Address', style: TextStyles.body),
                  trailing: Icon(Icons.chevron_right_rounded),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.credit_card_outlined),
                  title: Text('Payment Methods', style: TextStyles.body),
                  trailing: Icon(Icons.chevron_right_rounded),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.confirmation_number_outlined),
                  title: Text('Promo Cord', style: TextStyles.body),
                  trailing: Icon(Icons.chevron_right_rounded),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.notifications_none_outlined),
                  title: Text('Notifecations ', style: TextStyles.body),
                  trailing: Icon(Icons.chevron_right_rounded),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.help_outline_outlined),
                  title: Text('Help', style: TextStyles.body),
                  trailing: Icon(Icons.chevron_right_rounded),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.error_outline_outlined),
                  title: Text('About ', style: TextStyles.body),
                  trailing: Icon(Icons.chevron_right_rounded),
                ),
                Divider(),
                SizedBox(height: 50),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accent,
                    minimumSize: Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    removeUntil(context, Login());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout, color: AppColors.primary),
                      SizedBox(width: 5),
                      Text(
                        'Log Out',
                        style: TextStyles.elevatedButton.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
