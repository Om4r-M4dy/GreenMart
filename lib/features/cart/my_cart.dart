import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:t10_greenmart/core/constants/app_assets.dart';
import 'package:t10_greenmart/core/functions/navigations.dart';
import 'package:t10_greenmart/core/style/app_colors.dart';
import 'package:t10_greenmart/core/style/text_styles.dart';
import 'package:t10_greenmart/core/widgets/main_button.dart';
import 'package:t10_greenmart/features/cart/order_accepted.dart';
import 'package:t10_greenmart/features/explore/data/product_model.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({super.key});

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Cart', style: TextStyles.subtitle)),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(25),
        itemCount: bestProducts.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          ProductModel product = bestProducts[index];
          return Row(
            children: [
              Image.asset(
                product.image ?? '',
                width: 65,
                height: 65,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 30),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name ?? '',
                                style: TextStyles.caption,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              Text(
                                product.quantity ?? '',
                                style: TextStyles.small.copyWith(
                                  color: AppColors.grey2,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              bestProducts.removeAt(index);
                            });
                          },
                          icon: Icon(Icons.close),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            color: AppColors.grey2,
                            onPressed: () {
                              setState(() {
                                if (bestProducts[index].count > 1) {
                                  setState(() {
                                    bestProducts[index] = bestProducts[index]
                                        .copyWith(
                                          count: bestProducts[index].count - 1,
                                        );
                                  });
                                }
                              });
                            },
                            icon: Icon(Icons.remove_rounded),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '${product.count}',
                            style: TextStyles.caption,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            color: AppColors.primary,
                            onPressed: () {
                              setState(() {
                                bestProducts[index] = bestProducts[index]
                                    .copyWith(
                                      count: bestProducts[index].count + 1,
                                    );
                              });
                            },
                            icon: Icon(Icons.add_rounded),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$${((product.price ?? 0) * product.count).toStringAsFixed(2)}',
                          style: TextStyles.title,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: MainButton(
          text: 'Add All To Cart',
          onPress: () {
            showModalBottomSheet(
              context: context,
              backgroundColor: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(27)),
              ),
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Checkout', style: TextStyles.title),
                            CloseButton(),
                          ],
                        ),
                        Divider(),
                        ListTile(
                          leading: Text(
                            'Delivery',
                            style: TextStyles.body.copyWith(
                              color: AppColors.grey2,
                            ),
                          ),
                          trailing: Transform.translate(
                            offset: Offset(15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Select Method', style: TextStyles.caption),
                                const SizedBox(width: 10),
                                Icon(Icons.chevron_right_rounded),
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Text(
                            'Pament',
                            style: TextStyles.body.copyWith(
                              color: AppColors.grey2,
                            ),
                          ),
                          trailing: Transform.translate(
                            offset: Offset(15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(AppAssets.cardSvg),
                                const SizedBox(width: 10),
                                Icon(Icons.chevron_right_rounded),
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Text(
                            'Promo Code',
                            style: TextStyles.body.copyWith(
                              color: AppColors.grey2,
                            ),
                          ),
                          trailing: Transform.translate(
                            offset: Offset(15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Pick discount', style: TextStyles.caption),
                                const SizedBox(width: 10),
                                Icon(Icons.chevron_right_rounded),
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Text(
                            'Total Cost',
                            style: TextStyles.body.copyWith(
                              color: AppColors.grey2,
                            ),
                          ),
                          trailing: Transform.translate(
                            offset: Offset(15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('\$13.97', style: TextStyles.caption),
                                const SizedBox(width: 10),
                                Icon(Icons.chevron_right_rounded),
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                        SizedBox(height: 18),
                        Text(
                          'By placing an order you agree to our Terms And Conditions',
                          style: TextStyles.small,
                        ),
                        SizedBox(height: 20),
                        MainButton(
                          text: 'Place Order',
                          onPress: () {
                            pushTo(context, OrderAccepted());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
