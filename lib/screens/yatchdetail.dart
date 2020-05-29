import 'package:flutter/material.dart';

class YatchDetailScreen extends StatelessWidget {
  static const String routename='/YATCHDETAILSCREEN';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            child: Text("Yatch detail Screen"),
          ),
        ),
      ),
    );
  }
}
