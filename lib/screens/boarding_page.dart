import 'package:flutter/material.dart';
import 'package:fruithub/core/constant.dart';

class BoardingSCreen extends StatelessWidget {
  const BoardingSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                          'assets/initialpageimg.png',
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
          kHeight(60),
          const Text(
            'Get The Freshest Fruit Salad Combo',
            style: TextStyle(
                fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
          ),
          kHeight(30),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                textAlign: TextAlign.center,
                'We deliver the best and freshest fruit salad in town. Order for a combo today!!!'),
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
                    Navigator.pushNamed(context, '/formScreen');
                  },
                  child: const Text('Let\'s Continue')))
        ],
      ),
    );
  }
}
