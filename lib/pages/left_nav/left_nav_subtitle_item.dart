import 'package:flutter/material.dart';
import 'package:saturn/st_button/st_button.dart';
import 'package:stui/models/nav.dart';

class LeftNavSubtitileItem extends StatelessWidget {
  final LeftNavSubTitle item;
  final Function(String) onTap;
  final bool isSelected;

  const LeftNavSubtitileItem(
      {Key key, this.item, this.onTap, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap(item.key);
        }
      },
      child: Container(
        padding: EdgeInsets.only(top: 8, bottom: 8),
        child: Text(
          item.name,
          style: TextStyle(
            fontSize: 16,
            color: isSelected ? Color(0XFF095BF9) : Colors.black,
          ),
        ),
      ),
    );
  }
}
