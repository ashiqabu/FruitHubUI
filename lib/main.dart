import 'package:flutter/material.dart';
import 'package:fruithub/screens/boarding_page.dart';
import 'package:fruithub/screens/form_page.dart';
import 'package:fruithub/screens/home.dart';
import 'package:fruithub/screens/my_basket_page.dart';
import 'package:fruithub/screens/product_details_page.dart';
import 'package:fruithub/screens/splash_page.dart';
import 'package:fruithub/screens/succsessfull_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FruitUi',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Montserrat', // Set the custom font family globally
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/boradingScreen': (context) => const BoardingSCreen(),
        '/formScreen': (context) => const FormScreen(),
        '/homeScreen': (context) => const HomeScreen(),
        '/productDetailsScreen': (context) => const ProductDetailsScreen(),
        '/MyBasketScreen': (context) => const MyBasketScreen(),
        '/succsessScreen': (context) => const SuccsessScreen(),
      },
    );
  }
}
