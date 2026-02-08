import 'package:flutter/material.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/features/explore/data/product_model.dart';
import 'package:t10_greenmart/features/explore/pages/beverages.dart';
import 'package:t10_greenmart/features/explore/widgets/search_button.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
            child: Column(
              children: [
                Text('Find Products', style: TextStyles.subtitle),
                SizedBox(height: 20),
                SearchButton(),
                SizedBox(height: 22),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: findProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 14,
                    crossAxisCount: 2,
                    childAspectRatio: 0.94,
                  ),
                  itemBuilder: (context, index) {
                      final FindProductModel productModel = findProducts[index];
                    return GestureDetector(
                      onTap: () {
                        pushTo(context, BeveragesScreen());
                      },
                      child: Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          color: productModel.color,
                          border: Border.all(color: productModel.borderColor!),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(productModel.image!),
                              SizedBox(height: 20),
                              Text(
                                productModel.name!,
                                textAlign: TextAlign.center,
                                style: TextStyles.body.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
