import 'dart:ui';

import 'package:baggy/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  // final List children = Container() as List;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBcgColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Column(
              children: [
                Container(
                  // color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu_rounded),
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage:
                            AssetImage("assets/images/profile.jpg"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    children: [
                      Container(
                        // color: Colors.greenAccent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discover',
                              style: TextStyle(
                                  fontSize: 22, color: Colors.grey[800]),
                            ),
                            Text(
                              'A variety of Bags',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey[800]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    // color: Colors.indigo,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            child: TextField(
                              decoration: new InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: kLinkTextColor,
                                  ),
                                  enabledBorder: new OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: kBlancColor),
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(10),
                                    ),
                                  ),
                                  filled: true,
                                  contentPadding: EdgeInsets.only(left: 10),
                                  hintStyle: new TextStyle(
                                      color: Colors.grey[500], fontSize: 13),
                                  hintText: "Search...",
                                  fillColor: Colors.white70),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10),
                              ),
                            ),
                            child: Icon(
                              Icons.filter_list,
                              color: kBlancColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Men',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kPrimaryTextColor,
                              fontSize: 15),
                        ),
                        Text(
                          'Women',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kLinkTextColor,
                              fontSize: 15),
                        ),
                        Text(
                          'Kids',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kPrimaryTextColor,
                              fontSize: 15),
                        ),
                        Container(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text('Top picks',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800],
                                fontSize: 15))
                      ],
                    ),
                  ),
                ),
                // ListWheelScrollView(itemExtent: 3, children: Conta)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 10.0, top: 10.0, bottom: 10.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Office bag',
                                        style: TextStyle(
                                            color: kBlancColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.favorite_outline_rounded,
                                        color: kBlancColor,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Image.asset('assets/images/bag1.png',
                                      height: 140),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'N5,500',
                                      style: TextStyle(
                                          color: kBlancColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.spa_rounded,
                                      color: kBlancColor,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          height: 220,
                          width: 170,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                              colors: [
                                kLinkTextColor,
                                kLinkTextColor.withOpacity(.5),
                              ],
                            ),
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Office bag',
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.favorite_outline_rounded,
                                        color: Colors.grey[800],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Image.asset('assets/images/bag2.png',
                                      height: 140),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'N5,500',
                                      style: TextStyle(
                                          color: Colors.grey[800],
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.spa_rounded,
                                      color: Colors.grey[800],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          height: 220,
                          width: 170,
                          decoration: BoxDecoration(
                            color: kBlancColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Office bag',
                                        style: TextStyle(
                                            color: kBlancColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.favorite_outline_rounded,
                                        color: kBlancColor,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Image.asset('assets/images/bag1.png',
                                      height: 120),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'N5,500',
                                      style: TextStyle(
                                          color: kBlancColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.spa_rounded,
                                      color: kBlancColor,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          height: 220,
                          width: 170,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                              colors: [
                                kLinkTextColor,
                                kLinkTextColor.withOpacity(.5),
                              ],
                            ),
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Other products',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                              fontSize: 15),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kPrimaryTextColor,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.home_filled,
                                    color: kBlancColor,
                                  ),
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: kPrimaryColor,
                                  ),
                                  Icon(
                                    Icons.account_circle_rounded,
                                    color: kPrimaryColor,
                                  ),
                                ],
                              ),
                            ),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: kLinkTextColor.withOpacity(.5),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 165,
                            top: 7,
                            child: CircleAvatar(
                              radius: 8,
                              child: Text(
                                '2',
                                style:
                                    TextStyle(color: kBlancColor, fontSize: 10),
                              ),
                              backgroundColor: kPrimaryColor,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
