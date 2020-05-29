import 'package:flutter/material.dart';

import '../components/animated_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  final List<BarItem> bottomNavbarItems = [
    BarItem(
      text: 'Home',
      color: Colors.indigo,
      iconData: Icons.home,
    ),
    BarItem(
      text: 'Likes',
      color: Colors.pinkAccent,
      iconData: Icons.favorite_border,
    ),
    BarItem(
      text: 'Search',
      color: Colors.yellow.shade900,
      iconData: Icons.search,
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
        body: Container(
          padding: const EdgeInsets.all(9),
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
                ),
              ),
              SizedBox(height: 9),
              Text(
                "DISCOVER",
                style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.26,
                ),
              ),
              SizedBox(height: 9),
              SizedBox(
                height: 51,
                child: Container(
                  color: Colors.cyanAccent,
                ),
              ),
              SizedBox(height: 9),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: Container(
                  color: Colors.pinkAccent,
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
                      child: Center(child: Text("some widgets")),
                    ),
                  ),
                ],
              ),
              Text(
                "News",
              ),
              Container(
                color: Colors.purpleAccent,
                child: Center(
                  child: Text("something"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
