import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t10_greenmart/core/constants/app_assets.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/features/explore/home_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    Center(child: Text('Explore Screen')),
    Center(child: Text('Cart Screen')),
    Center(child: Text('Favourite Screen')),
    Center(child: Text('Account Screen')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: Color(0xffE6EBF3).withValues(alpha: 0.5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: AppColors.primary,
          selectedLabelStyle: TextStyles.small,
          unselectedLabelStyle: TextStyles.small,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.shopSvg),
              activeIcon: SvgPicture.asset(
                AppAssets.shopSvg,
                colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.exploreSvg),
              activeIcon: SvgPicture.asset(
                AppAssets.exploreSvg,
                colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.cartSvg),
              activeIcon: SvgPicture.asset(
                AppAssets.cartSvg,
                colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.favouriteSvg),
              activeIcon: SvgPicture.asset(
                AppAssets.favouriteSvg,
                colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
              ),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.accountSvg),
              activeIcon: SvgPicture.asset(
                AppAssets.accountSvg,
                colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
