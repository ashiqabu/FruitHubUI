import 'package:flutter/material.dart';
import 'package:fruithub/core/constant.dart';
import 'package:lottie/lottie.dart';

class SuccsessScreen extends StatelessWidget {
  const SuccsessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(width: 200, 'lottie/WdXBKIAKKK.json'),
            kHeight(10),
            const Text(
              'Order Taken',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            kHeight(5),
            const Text(
                textAlign: TextAlign.center,
                'Your order have been taken and is being attended to..'),
            kHeight(20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Set your desired border radius here
                  ),
                ),
                child: const Text(
                  'Track order',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            kHeight(20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: circleAvatharColor,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Set your desired border radius here
                  ),
                ),
                child: const Text(
                  'Continue shopping',
                  style: TextStyle(color: mainColor, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
