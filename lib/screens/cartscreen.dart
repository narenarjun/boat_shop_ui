import 'package:boat_shop_ui/constants/appconstants.dart';
import 'package:boat_shop_ui/screens/homepage.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/CARTSCREEN';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black45),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () => Navigator.of(context).pushReplacementNamed(
              HomeScreen.routeName,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(
                "MY CART",
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    .copyWith(color: Colors.black),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(9.0),
                decoration: BoxDecoration(
                  color: MyColors.mainColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, i) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 9.0),
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: ClipRRect(
                                  child: Image.network(yatches[i].image),
                                  borderRadius: BorderRadius.circular(9),
                                ),
                              ),
                              SizedBox(width: 9),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "${yatches[i].name}",
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                    Text("${yatches[i].price}"),
                                  ],
                                ),
                              ),
                              SizedBox(width: 9),
                              Column(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                        fontSize: 42,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ),
                                  Text("1"),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("Subtotal (3 Items)"),
                        SizedBox(width: 15),
                        Text(
                          "\$7,674,000",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                                color: Colors.black,
                              ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    GestureDetector(
                      onTap: () => {},
                      child: Container(
                        padding: const EdgeInsets.all(9),
                        margin: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: MyColors.accentColor,
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "Check out",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(color: Colors.black),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Icon(Icons.chevron_right),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
