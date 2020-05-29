import 'package:boat_shop_ui/screens/homepage.dart';
import 'package:boat_shop_ui/screens/yatchdetail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color(0xFFEFF7FC),
        textTheme: GoogleFonts.oswaldTextTheme(),
      ),
      home: HomeScreen(),
      routes: {
        YatchDetailScreen.routename: (context) => YatchDetailScreen(),
      },
    );
  }
}
