import 'package:flutter/material.dart';

class AnimatedBottomBar extends StatefulWidget {
  final List<BarItem> barItems;
  final Duration animationDuration;
  final Function onBarTap;
  final BarStyle barStyle;

  const AnimatedBottomBar({
    this.barItems,
    this.animationDuration = const Duration(milliseconds: 500),
    this.onBarTap,
    this.barStyle,
  });

  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar>
    with TickerProviderStateMixin {
  int selectedBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    // print('rebuilding bottom bar');
    return Material(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 10.0,
          top: 16.0,
          left: 16.0,
          right: 16.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _buildBarItems(),
        ),
      ),
    );
  }

  List<Widget> _buildBarItems() {
    List<Widget> _barItems = List();
    for (int itemcount = 0; itemcount < widget.barItems.length; itemcount++) {
      BarItem item = widget.barItems[itemcount];
      bool isSelected = selectedBarIndex == itemcount;
      _barItems.add(
        InkWell(
          splashColor: Colors.transparent,
          onTap: () {
            setState(() {
              setState(() {
                selectedBarIndex = itemcount;
                widget.onBarTap(selectedBarIndex);
              });
            });
          },
          child: AnimatedContainer(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            duration: widget.animationDuration,
            decoration: BoxDecoration(
              color:
                  isSelected ? item.color.withOpacity(0.2) : Colors.transparent,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  item.iconData,
                  color: isSelected ? item.color : Colors.black,
                  size: widget.barStyle.iconSize,
                ),
                SizedBox(
                  width: 10.0,
                ),
                AnimatedSize(
                  duration: widget.animationDuration,
                  vsync: this,
                  child: Text(
                    isSelected ? item.text : '',
                    style: TextStyle(
                      color: item.color,
                      fontWeight: widget.barStyle.fontWeight,
                      fontSize: widget.barStyle.fontSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return _barItems;
  }
}

class BarStyle {
  final double fontSize, iconSize;
  final FontWeight fontWeight;
  BarStyle({
    this.fontSize = 18.0,
    this.fontWeight = FontWeight.w600,
    this.iconSize = 32.0,
  });
}

class BarItem {
  String text;
  IconData iconData;
  Color color;

  BarItem({
    this.text,
    this.iconData,
    this.color,
  });
}
