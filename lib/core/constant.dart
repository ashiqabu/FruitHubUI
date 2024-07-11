import 'package:flutter/material.dart';

Widget kHeight(double height) {
  return SizedBox(
    height: height,
  );
}

Widget kWidth(double width) {
  return SizedBox(
    width: width,
  );
}

// ignore: use_full_hex_values_for_flutter_colors
const mainColor = Color(0xfffffa451);
const mainColor1 = Color.fromARGB(244, 255, 233, 252);
const fillColor = Color.fromARGB(120, 215, 214, 214);
const circleAvatharColor = Color.fromARGB(255, 255, 240, 227);

final List<IconData> iconsList = [
  Icons.home,
  Icons.search,
  Icons.favorite,
  Icons.person,
];
final List<String> textList = [
  'All',
  'Salad Combo',
  'Other Combo',
  'Fruit Salad combo',
  'Fresh Salad Combo',
  'Arab Salad Combo'
];

final List<String> tabList = ['Hottest', 'Popular', 'New Combo'];
