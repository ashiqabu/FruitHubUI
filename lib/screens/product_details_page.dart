import 'package:flutter/material.dart';
import 'package:fruithub/core/constant.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: mainColor,
                // borderRadius: BorderRadius.only(
                //     bottomLeft: Radius.circular(200),
                //     topRight: Radius.circular(300)),
              ),
              child: Column(
                children: [
                  kHeight(30),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Go Back',
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/dish4.png',
                    width: 200,
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height / 1.6,
              child: Column(
                children: [
                  kHeight(15),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          'Honey Lime Combo',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const CircleAvatar(
                                backgroundColor: circleAvatharColor,
                                radius: 15,
                                child: Icon(
                                  Icons.remove,
                                  color: mainColor,
                                )),
                          ),
                          const Text(
                            '1000',
                            style: TextStyle(fontSize: 18),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const CircleAvatar(
                                backgroundColor: circleAvatharColor,
                                radius: 15,
                                child: Icon(
                                  Icons.add_rounded,
                                  color: mainColor,
                                )),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '1500.0/-',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  kHeight(20),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Text(
                      'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you, make If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const CircleAvatar(
                          backgroundColor: circleAvatharColor,
                          radius: 20,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/MyBasketScreen');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Add To Basket',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
