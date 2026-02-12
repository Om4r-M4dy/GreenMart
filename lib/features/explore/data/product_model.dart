import 'package:flutter/material.dart';

class ProductModel {
  final String? id;
  final String? name;
  final String? image;
  final double? price;
  final String? quantity;
  final String? description;
  final double? review;
  final String? tag;
  int count;

  ProductModel({
    this.name,
    this.image,
    this.price,
    this.quantity,
    this.id,
    this.description,
    this.review,
    this.tag,
    this.count = 1,
  });
  ProductModel copyWith({
    String? id,
    String? name,
    String? image,
    double? price,
    String? quantity,
    String? description,
    double? review,
    String? tag,
    int? count,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      description: description ?? this.description,
      review: review ?? this.review,
      tag: tag ?? this.tag,
      count: count ?? this.count,
    );
  }
}

List<ProductModel> getProductByName(String productName) {
  return allProducts
      .where((item) => item.name?.toLowerCase().contains(productName) == true)
      .toList();
}

List<ProductModel> allProducts = [
  ProductModel(
    id: '1',
    name: 'Red Apples',
    image: 'assets/images/red_apple.png',
    price: 3.99,
    quantity: '1kg',
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
    review: 4.5,
    tag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '2',
    name: 'Organic Bananas',
    image: 'assets/images/bananas.png',
    price: 1.99,
    quantity: '1kg',
    description:
        'Sweet and ripe organic bananas, great for smoothies and desserts.',
    review: 4.7,
    tag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '3',
    name: 'Bell Pepper Red',
    image: 'assets/images/bell_pepper_red.png',
    price: 3.99,
    quantity: '1kg',
    description:
        'Crisp and juicy red bell peppers, perfect for salads or cooking.',
    tag: UniqueKey().toString(),
    review: 4.5,
  ),
  ProductModel(
    id: '4',
    name: 'Ginger',
    image: 'assets/images/ginger.png',
    price: 1.99,
    quantity: '1kg',
    description:
        'Fresh ginger root, perfect for cooking and adding flavor to dishes.',
    tag: UniqueKey().toString(),
    review: 4.7,
  ),
  ProductModel(
    id: '5',
    name: 'Diet Cola Can',
    image: 'assets/images/diet_coke.png',
    price: 1.99,
    quantity: '355ml',
    description:
        'Refreshing diet cola, perfect for those who want a sweet taste without the calories.',
    review: 4.7,
    tag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '6',
    name: 'Sprite Can',
    image: 'assets/images/sprite.png',
    price: 1.99,
    quantity: '325ml',
    description: 'Refreshing Sprite, perfect for those who want a sweet taste.',
    tag: UniqueKey().toString(),
    review: 4.7,
  ),
  ProductModel(
    id: '7',
    name: 'Apple & Grape Juice',
    image: 'assets/images/tree-top-juice-apple-grape.png',
    price: 1.99,
    quantity: '2L',
    description: 'apple and grape juice, packed with natural vitamins.',
    tag: UniqueKey().toString(),
    review: 4.7,
  ),
  ProductModel(
    id: '8',
    name: 'Orange & Pineapple Juice',
    image: 'assets/images/tree-top-juice-orange-pineapple.png',
    price: 1.99,
    quantity: '2L',
    description:
        'orange and pineapple juice, packed with vitamin C and natural sweetness.',
    review: 4.7,
    tag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '9',
    name: 'CocaCola Can',
    image: 'assets/images/cocacola.png',
    price: 1.99,
    quantity: '355ml',
    description:
        'Refreshing CocaCola, perfect for those who want a sweet taste.',
    review: 4.7,
    tag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '10',
    name: 'Pepsi Can',
    image: 'assets/images/pepsi.png',
    price: 1.99,
    quantity: '320ml',
    description: 'Refreshing Pepsi, perfect for those who want a sweet taste.',
    tag: UniqueKey().toString(),
    review: 4.7,
  ),
];

List<ProductModel> exclusiveProducts = [
  ProductModel(
    id: '1',
    name: 'Red Apples',
    image: 'assets/images/red_apple.png',
    price: 3.99,
    quantity: '1kg',
    description:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
    review: 4.5,
    tag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '2',
    name: 'Organic Bananas',
    image: 'assets/images/bananas.png',
    price: 1.99,
    quantity: '1kg',
    description:
        'Sweet and ripe organic bananas, great for smoothies and desserts.',
    review: 4.7,
    tag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '3',
    name: 'Diet Cola Can',
    image: 'assets/images/diet_coke.png',
    price: 1.99,
    quantity: '355ml',
    description:
        'Refreshing diet cola, perfect for those who want a sweet taste without the calories.',
    review: 4.7,
    tag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '4',
    name: 'CocaCola Can',
    image: 'assets/images/cocacola.png',
    price: 1.99,
    quantity: '355ml',
    description:
        'Refreshing CocaCola, perfect for those who want a sweet taste.',
    review: 4.7,
    tag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '5',
    name: 'Orange & Pineapple Juice',
    image: 'assets/images/tree-top-juice-orange-pineapple.png',
    price: 1.99,
    quantity: '2L',
    description:
        'orange and pineapple juice, packed with vitamin C and natural sweetness.',
    review: 4.7,
    tag: UniqueKey().toString(),
  ),
];

List<ProductModel> bestProducts = [
  ProductModel(
    id: '1',
    name: 'Bell Pepper Red',
    image: 'assets/images/bell_pepper_red.png',
    price: 3.99,
    quantity: '1kg',
    description:
        'Crisp and juicy red bell peppers, perfect for salads or cooking.',
    tag: UniqueKey().toString(),
    review: 4.5,
  ),
  ProductModel(
    id: '2',
    name: 'Ginger',
    image: 'assets/images/ginger.png',
    price: 1.99,
    quantity: '1kg',
    description:
        'Fresh ginger root, perfect for cooking and adding flavor to dishes.',
    tag: UniqueKey().toString(),
    review: 4.7,
  ),
  ProductModel(
    id: '3',
    name: 'Organic Bananas',
    image: 'assets/images/bananas.png',
    price: 1.99,
    quantity: '1kg',
    description:
        'Sweet and ripe organic bananas, great for smoothies and desserts.',
    tag: UniqueKey().toString(),
    review: 4.7,
  ),
  ProductModel(
    id: '4',
    name: 'Apple & Grape Juice',
    image: 'assets/images/tree-top-juice-apple-grape.png',
    price: 1.99,
    quantity: '2L',
    description: 'apple and grape juice, packed with natural vitamins.',
    tag: UniqueKey().toString(),
    review: 4.7,
  ),
  ProductModel(
    id: '5',
    name: 'Sprite Can',
    image: 'assets/images/sprite.png',
    price: 1.99,
    quantity: '325ml',
    description: 'Refreshing Sprite, perfect for those who want a sweet taste.',
    tag: UniqueKey().toString(),
    review: 4.7,
  ),
  ProductModel(
    id: '6',
    name: 'Pepsi Can',
    image: 'assets/images/pepsi.png',
    price: 1.99,
    quantity: '320ml',
    description: 'Refreshing Pepsi, perfect for those who want a sweet taste.',
    tag: UniqueKey().toString(),
    review: 4.7,
  ),
];

List<ProductModel> beveragesProducts = [
  ProductModel(
    id: '1',
    name: 'Diet Cola Can',
    image: 'assets/images/diet_coke.png',
    price: 1.99,
    quantity: '355ml',
    description:
        'Refreshing diet cola, perfect for those who want a sweet taste without the calories.',
    review: 4.7,
    tag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '2',
    name: 'Sprite Can',
    image: 'assets/images/sprite.png',
    price: 1.99,
    quantity: '325ml',
    description: 'Refreshing Sprite, perfect for those who want a sweet taste.',
    tag: UniqueKey().toString(),
    review: 4.7,
  ),
  ProductModel(
    id: '3',
    name: 'Apple & Grape Juice',
    image: 'assets/images/tree-top-juice-apple-grape.png',
    price: 1.99,
    quantity: '2L',
    description: 'apple and grape juice, packed with natural vitamins.',
    tag: UniqueKey().toString(),
    review: 4.7,
  ),
  ProductModel(
    id: '4',
    name: 'Orange & Pineapple Juice',
    image: 'assets/images/tree-top-juice-orange-pineapple.png',
    price: 1.99,
    quantity: '2L',
    description:
        'orange and pineapple juice, packed with vitamin C and natural sweetness.',
    review: 4.7,
    tag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '5',
    name: 'CocaCola Can',
    image: 'assets/images/cocacola.png',
    price: 1.99,
    quantity: '355ml',
    description:
        'Refreshing CocaCola, perfect for those who want a sweet taste.',
    review: 4.7,
    tag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '6',
    name: 'Pepsi Can',
    image: 'assets/images/pepsi.png',
    price: 1.99,
    quantity: '320ml',
    description: 'Refreshing Pepsi, perfect for those who want a sweet taste.',
    tag: UniqueKey().toString(),
    review: 4.7,
  ),
];

class FindProductModel {
  final String? id;
  final String? name;
  final String? image;
  final Color? color;
  final Color? borderColor;

  FindProductModel({
    this.name,
    this.image,
    this.color,
    this.borderColor,
    this.id,
  });
}

List<FindProductModel> findProducts = [
  FindProductModel(
    id: '1',
    name: 'Frash Fruits & Vegetable',
    image: 'assets/images/fruits&vegetable.png',
    color: const Color(0x1753B175),
    borderColor: const Color(0xbc53B175),
  ),
  FindProductModel(
    id: '2',
    name: 'Cooking Oil & Ghee',
    image: 'assets/images/cooking_oil&ghee.png',
    color: const Color(0x1AF8A44C),
    borderColor: const Color(0xbcF8A44C),
  ),
  FindProductModel(
    id: '3',
    name: 'Meat & Fish',
    image: 'assets/images/meat&fish.png',
    color: const Color(0x40F7A593),
    borderColor: const Color(0xffF7A593),
  ),
  FindProductModel(
    id: '4',
    name: 'Bakery & Snacks',
    image: 'assets/images/bakery&snacks.png',
    color: const Color(0x40D3B0E0),
    borderColor: const Color(0xffD3B0E0),
  ),
  FindProductModel(
    id: '5',
    name: 'Dairy & Eggs',
    image: 'assets/images/dairy&eggs.png',
    color: const Color(0x40FDE598),
    borderColor: const Color(0xffFDE598),
  ),
  FindProductModel(
    id: '6',
    name: 'Beverages',
    image: 'assets/images/beverages.png',
    color: const Color(0x40B7DFF5),
    borderColor: const Color(0xffB7DFF5),
  ),
  FindProductModel(
    id: '7',
    name: 'Bell Pepper Red',
    image: 'assets/images/bell_pepper_red.png',
    color: const Color(0x40D3B0E0),
    borderColor: const Color(0xffD3B0E0),
  ),
  FindProductModel(
    id: '8',
    name: 'Organic Bananas',
    image: 'assets/images/bananas.png',
    color: const Color(0x40F7A593),
    borderColor: const Color(0xffF7A593),
  ),
];
