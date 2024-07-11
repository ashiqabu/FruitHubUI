import 'package:flutter/material.dart';
import 'package:fruithub/core/constant.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 1.8,
                color: mainColor,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      kHeight(100),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/accountcreatepage.png',
                            height: 250,
                            width: 250,
                          ),
                          Positioned(
                            top: 0,
                            right: -20,
                            child: Image.asset(
                              'assets/miniimage.png',
                              height:
                                  60, // Set the desired height for the overlay image
                              width:
                                  100, // Set the desired width for the overlay image
                            ),
                          ),
                        ],
                      ),
                      kHeight(10),
                      Image.asset(
                        'assets/ellipse1.png',
                        width: 200,
                      )
                    ],
                  ),
                )),
            kHeight(30),
            const Text(
              'What is your First Name?',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
            ),
            kHeight(20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: fillColor,
                  hintText: 'Enter your Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            kHeight(10),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: fillColor,
                  hintText: 'Enter your Phone number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            kHeight(40),
            SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/homeScreen');
                    },
                    child: const Text('Let\'s Continue')))
          ],
        ),
      ),
    );
  }
}
