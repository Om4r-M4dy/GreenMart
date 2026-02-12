import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:t10_greenmart/core/constants/app_assets.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/features/explore/widgets/best_selling_grid_view.dart';
import 'package:t10_greenmart/features/explore/widgets/exclusive_offer_list_view.dart';
import 'package:t10_greenmart/features/explore/widgets/search_button.dart';
import 'package:t10_greenmart/features/explore/pages/home/widgets/title_and_see_all.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.carrotSvg,
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
              width: 36,
            ),
            SizedBox(width: 10),
            SvgPicture.asset(AppAssets.greenMartSvg),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SearchButton(),
            ),
            TitleAndSeeAll(title: 'Exclusive Offers', onSeeAllPressed: () {}),
            ExclusiveOfferListView(),
            SizedBox(height: 20),
            TitleAndSeeAll(title: 'Best Selling', onSeeAllPressed: () {}),
            BestSellingGridView(),
          ],
        ),
      ),
    );
  }
}
