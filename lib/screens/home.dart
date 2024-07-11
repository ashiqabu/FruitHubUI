import 'package:flutter/material.dart';

import 'package:fruithub/core/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> gItems = [
      {
        "color": const Color.fromARGB(255, 218, 221, 155),
        "text": "Honey Lime Combo Set Special",
        "price": "Rs :\$12.00",
        "img": 'assets/dish1.png',
      },
      {
        "color": const Color.fromARGB(255, 204, 161, 176),
        "text": "Barry Mango Combo",
        "price": "Rs :\$12.00",
        "img": 'assets/dish2.png',
      },
      {
        "color": const Color.fromARGB(255, 218, 221, 155),
        "text": "Salad Lime Combo",
        "price": "Rs :\$12.00",
        "img": 'assets/dish3.png',
      },
      {
        "color": const Color.fromARGB(255, 157, 202, 228),
        "text": "Mint Lime Combo",
        "price": "Rs :\$12.00",
        "img": 'assets/dish4.png',
      },
      {
        "color": const Color.fromARGB(255, 204, 161, 176),
        "text": "Honey Lime Combo",
        "price": "Rs :\$12.00",
        "img": 'assets/dish5.png',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Welcome,Chirs',
          style: TextStyle(fontSize: 15),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag,
                color: mainColor,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: fillColor,
                        hintText: 'Enter your Phone number',
                        hintStyle: const TextStyle(fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal:
                                12.0), // Adjust the vertical padding here
                      ),
                    ),
                  ),
                  kWidth(5),
                  Container(
                    decoration: const BoxDecoration(
                        color: fillColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.sort),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: textList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            color: const Color.fromARGB(255, 238, 237, 232),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(textList[index]),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              kHeight(5),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Recommonded Combo',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: const Divider(
                      thickness: 2,
                      color: mainColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 238,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(top: 10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: gItems.length,
                  itemBuilder: (context, index) {
                    final item = gItems[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, right: 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: fillColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    color: mainColor,
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  item['img'],
                                  height: 90,
                                ),
                                kHeight(20),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Text(
                                    item['text'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                kHeight(10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      item['price'],
                                      style: const TextStyle(color: mainColor),
                                    ),
                                    const Icon(
                                      Icons.add_circle_outline,
                                      color: mainColor,
                                    ),
                                  ],
                                ),
                                kHeight(20)
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              kHeight(30),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tabList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              tabList[index],
                              style: TextStyle(
                                color: _selectedIndex == index
                                    ? mainColor
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ]));
                  },
                ),
              ),
              SizedBox(
                height: 238,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(top: 10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  ),
                  itemCount: gItems.length,
                  itemBuilder: (context, index) {
                    final item = gItems[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, right: 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/productDetailsScreen');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: mainColor1,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.favorite_border_outlined,
                                      color: mainColor,
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    item['img'],
                                    height: 90,
                                  ),
                                  kHeight(20),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Text(
                                      item['text'],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  kHeight(10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        item['price'],
                                        style:
                                            const TextStyle(color: mainColor),
                                      ),
                                      const Icon(
                                        Icons.add_circle_outline,
                                        color: mainColor,
                                      ),
                                    ],
                                  ),
                                  kHeight(20)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
