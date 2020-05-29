import 'package:boat_shop_ui/constants/appconstants.dart';
import 'package:flutter/material.dart';

class YatchDetailScreen extends StatelessWidget {
  static const String routename = '/YATCHDETAILSCREEN';
  final int yatchID;
  YatchDetailScreen({this.yatchID});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black45),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () => Navigator.of(context).pop(),
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
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: <Widget>[
                  Text(
                    "${yatches[yatchID].name}",
                    style: Theme.of(context).textTheme.headline2.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  SizedBox(height: 5),
                  Text("${yatches[yatchID].price}",
                      style: Theme.of(context).textTheme.headline5),
                  SizedBox(height: 15),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Specifications",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        letterSpacing: 1.45,
                                        fontWeight: FontWeight.w700,
                                      )),
                              SizedBox(height: 22.0),
                              ...List.generate(
                                yatches[yatchID].yatchModelSpecification.length,
                                (i) => Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(3)),
                                          padding: const EdgeInsets.all(3.0),
                                          child: Icon(
                                              yatches[yatchID]
                                                      .yatchModelSpecification[
                                                  i]['icon'],
                                              size: 26.0,
                                              color: MyColors.mainColor),
                                        ),
                                        SizedBox(width: 16),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "${yatches[yatchID].yatchModelSpecification[i]['value']}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1,
                                            ),
                                            Text(
                                              "${yatches[yatchID].yatchModelSpecification[i]['name']}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .overline,
                                            ),
                                            SizedBox(height: 9)
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 26.0),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Image.network(
                          yatches[yatchID].topPic,
                          width: screenWidth / 3,
                          height: screenHeight / 2.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text("Features",
                      style: Theme.of(context).textTheme.subtitle1),
                  ...List.generate(
                    yatches[yatchID].features.length,
                    (i) => Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 9,
                            width: 9,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey, shape: BoxShape.circle),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                              child: Text("${yatches[yatchID].features[i]}")),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              //  ?  need to implement the cart page routing
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
                      width:8.0,
                    ),
                    Text(
                      "Buy now",
                      style: Theme.of(context)
                          .textTheme
                          .button
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
    );
  }
}
