import 'package:flutter/material.dart';
import 'package:fruithub/core/constant.dart';

class MyBasketScreen extends StatelessWidget {
  const MyBasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> gItems = [
      {
        "text": "Quinoa fruit salad",
        "count": "2 packs",
        "price": "Rs. 1500.0/-",
        "img": 'assets/dish1.png',
      },
      {
        "text": "Tropical fruit salad",
        "count": "2 packs",
        "price": "Rs. 1500.0/-",
        "img": 'assets/dish2.png',
      },
      {
        "text": "Melon fruit salad",
        "count": "2 packs",
        "price": "Rs. 1000.0/-",
        "img": 'assets/dish3.png',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: mainColor,
        title: const Text(
          'My Basket',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 40,
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: gItems.length,
              itemBuilder: (context, index) {
                final item = gItems[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(item['img']),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['text'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              item['count'],
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.grey),
                            ),
                            Text(
                              item['price'],
                              style: const TextStyle(
                                  fontSize: 14, color: mainColor),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: circleAvatharColor,
                        child: IconButton(
                          icon: const Icon(Icons.remove, color: mainColor),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  '20000/-',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: mainColor),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/succsessScreen');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: mainColor,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: const Text(
                'Checkout',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          kHeight(20)
        ],
      ),
    );
  }
}
