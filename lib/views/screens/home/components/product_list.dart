import 'package:flutter/material.dart';

class Product {
  const Product({
    required this.title,
    required this.description,
    required this.price,
    this.rating = 0.0,
    required this.images,
    required this.colors,
    this.isFavourite = false,
    this.isPopular = false,
  });
  final String title, description;
  final double price, rating;
  final List<String> images;
  final List<Color> colors;
  final bool isFavourite, isPopular;
}

List<Product> demoProduct = [
  const Product(
      rating: 4.8,
      title: 'Wireless controller for PS4™',
      description: description,
      price: 64.99,
      images: [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
        // "assets/images/ps4_console_blue_1.png",
        // "assets/images/ps4_console_blue_2.png",
        // "assets/images/ps4_console_blue_3.png",
        // "assets/images/ps4_console_blue_4.png",
      ],
      colors: [
        Color(0xFFf6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
      ],
      isFavourite: true,
      isPopular: true),
  const Product(
    isPopular: true,
    rating: 4.8,
    title: 'Wireless controller for PS4',
    description: description,
    price: 64.99,
    images: ["assets/images/Image Popular Product 2.png"],
    colors: [
      Color(0xFFf6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white
    ],
  ),
  const Product(
      rating: 3.6,
      title: 'Gloves XC Omega -polygon',
      description: description,
      price: 44.6,
      images: ["assets/images/glap.png"],
      colors: [
        Color(0xFFf6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white
      ],
      isFavourite: true,
      isPopular: true),
  const Product(
    rating: 3.6,
    title: 'Logitech head',
    description: description,
    price: 44.6,
    images: ["assets/images/wireless headset.png"],
    colors: [
      Color(0xFFf6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white
    ],
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
