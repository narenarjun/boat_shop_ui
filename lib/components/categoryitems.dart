import 'package:flutter/material.dart';
import '../constants/appconstants.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({
    Key key,
  }) : super(key: key);

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: mainCategories.length,
      itemBuilder: (context, i) => GestureDetector(
        onTap: () {
          setState(() {
            _active = i;
          });
        },
        child: Container(
          margin: const EdgeInsets.only(right: 15, left: 20),
          child: Column(
            children: <Widget>[
              Text(
                "${mainCategories[i].name}",
                style: Theme.of(context).textTheme.button.copyWith(
                  fontSize: 16.0,
                    color: _active == i ? Colors.black : Colors.black87),
              ),
              _active == i
                  ? Container(
                      margin: const EdgeInsets.only(top: 5),
                      height: 1.5,
                      width: 51,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(5),
                      ),
                    )
                  : Container(
                    height: 1.5,
                    width: 51,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
