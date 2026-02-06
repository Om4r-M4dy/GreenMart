import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:t10_greenmart/core/constants/app_assets.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/features/widgets/home_list_view.dart';
import 'package:t10_greenmart/features/widgets/search_bar.dart';

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
            searchBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Exclusive Offers', style: TextStyles.title),
                  TextButton(
                    child: Text(
                      'See All',
                      style: TextStyles.caption.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 245,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return HomeListView(
                    itemName: 'Bananas',
                    itemImage: AppAssets.bananasPng,
                    itemQuantity: '7pcs',
                    itemPrice: '\$4.99',
                  );  
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Best Selling', style: TextStyles.title),
                  TextButton(
                    child: Text(
                      'See All',
                      style: TextStyles.caption.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 245,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  childAspectRatio: 0.65, 
                ),
                itemBuilder: (context, index) {
                  return HomeListView(
                    itemName: 'Bananas',
                    itemImage: AppAssets.bananasPng,
                    itemQuantity: '7pcs',
                    itemPrice: '\$4.99',
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
