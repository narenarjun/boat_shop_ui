import 'package:flutter/material.dart';

import '../constants/appconstants.dart';

class SubCategoryItem extends StatefulWidget {
  const SubCategoryItem({
    Key key,
  }) : super(key: key);

  @override
  _SubCategoryItemState createState() => _SubCategoryItemState();
}

class _SubCategoryItemState extends State<SubCategoryItem> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: subCategories.length,
      itemBuilder: (context, i) => Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _active = i;
            });
          },
          child: Container(
            margin: const EdgeInsets.only(right: 11),
            
            decoration: BoxDecoration(
              color: _active == i
                  ? MyColors.accentColor
                  : Colors.grey.withOpacity(.3),
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: const EdgeInsets.all(10),
            child: Text(
              "${subCategories[i].name}",
              style: Theme.of(context).textTheme.button.copyWith(
                    color: _active == i ? Colors.black : Colors.grey[700],
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
