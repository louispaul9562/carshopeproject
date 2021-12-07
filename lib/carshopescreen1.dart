import 'package:carousel_slider/carousel_slider.dart';
import 'package:carshope/Carshopewidgetreuse.dart';
import 'package:carshope/Gridview.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  '/assets/1.jpg',
];

class carshpoescreen1 extends StatefulWidget {
  //const carshpoescreen1({Key? key}) : super(key: key);

  @override
  State<carshpoescreen1> createState() => _carshpoescreen1State();
  int _currentselectedindex = 0;
}

class _carshpoescreen1State extends State<carshpoescreen1> {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Shope'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Expanded(
            child: Container(
              child: Center(
                child: ListView(
                  children: [
                    CarouselSlider(
                        items: imgList
                            .map((item) => Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/1.jpg',
                                      width: 600.0,
                                      height: 240.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ))
                            .toList(),
                        options: CarouselOptions()),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    carshopewidget(),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    carshopewidget(),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    carshopewidget(),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    carshopewidget(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(color: Colors.black),
                      height: 100,
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 20, right: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              children: [
                Container(
                  child: Image.asset(
                    'assets/1.jpg',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  child: Image.asset(
                    'assets/1.jpg',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  child: Image.asset(
                    'assets/1.jpg',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  child: Image.asset(
                    'assets/1.jpg',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  child: Image.asset(
                    'assets/1.jpg',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  child: Image.asset(
                    'assets/1.jpg',
                    width: 600.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  margin: EdgeInsets.all(10),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.share), label: 'Share'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: 'Coins')
        ],
      ),
    );
  }
}
