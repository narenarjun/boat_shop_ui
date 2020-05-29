import 'package:boat_shop_ui/components/subcategoryitems.dart';
import 'package:flutter/material.dart';

import '../components/animated_bottom_bar.dart';
import '../components/categoryitems.dart';
import '../components/yatchcontainer.dart';
import '../constants/appconstants.dart';
import 'yatchdetail.dart';

class HomeScreen extends StatefulWidget {
  final List<BarItem> bottomNavbarItems = [
    BarItem(
      text: 'Home',
      color: Colors.indigo,
      iconData: Icons.home,
    ),
    BarItem(
      text: 'Shop',
      color: Colors.yellow.shade900,
      iconData: Icons.shopping_cart,
    ),
    BarItem(
      text: 'Liked',
      color: Colors.pink,
      iconData: Icons.favorite_border,
    ),
    BarItem(
      text: 'Profile',
      color: Colors.teal,
      iconData: Icons.person_outline,
    ),
  ];

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: AnimatedBottomBar(
            barItems: widget.bottomNavbarItems,
            animationDuration: const Duration(milliseconds: 150),
            barStyle: BarStyle(
              // fontSize: 22.00,
              // fontWeight: FontWeight.w200,
              iconSize: 26.0,
            ),
            onBarTap: (int index) {
              setState(() {
                selectedBarIndex = index;
              });
            }),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search for products...",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      )),
                ),
                SizedBox(height: 9),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 14.0,
                    ),
                    child: Text(
                      "DISCOVER",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.26,
                          ),
                    ),
                  ),
                ),
                SizedBox(height: 9),
                SizedBox(
                  height: 51,
                  // ! here goes the category item
                  child: CategoryItem(),
                ),
                SizedBox(height: 9),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  // ! this is where the yatches list goes
                  child: PageView.builder(
                    controller: PageController(viewportFraction: 0.76),
                    itemCount: yatches.length,
                    itemBuilder: (context, i) => GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => YatchDetailScreen(yatchID: i,),
                        ),
                      ),
                      child: YatchContainer(id: i),
                    ),
                  ),
                ),
                SizedBox(height: 9),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.tune),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 51,
                        child: Center(
                          child: SubCategoryItem(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "News",
                    style: Theme.of(context).textTheme.copyWith().headline5,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.directions_boat,
                          size: 52,
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Top 10 boat Launches",
                            style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "From the Aston Martin s52 to the Riva ",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "76 2020 has been ...",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ))
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
