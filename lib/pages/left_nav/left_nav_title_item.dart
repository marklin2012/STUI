import 'package:flutter/material.dart';
import 'package:saturn/st_icons/st_icons.dart';
import 'package:stui/models/nav.dart';
import 'package:stui/pages/left_nav/left_nav_subtitle_item.dart';

class LeftNavTitleItem extends StatelessWidget {
  final LeftNavTitle item;
  final String currentKey;
  final bool isShow;
  final Function(String) onTap;
  final Function(String) onChangeKey;

  const LeftNavTitleItem(
      {Key key,
      @required this.item,
      this.currentKey = 'button',
      this.isShow = true,
      this.onTap,
      this.onChangeKey})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              if (onTap != null) {
                onTap(item.key);
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      item.name,
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  if (item.children != null && item.children.length > 0)
                    isShow
                        ? Icon(
                            STIcons.direction_upoutlined,
                            color: Colors.grey,
                          )
                        : Icon(
                            STIcons.direction_downoutlined,
                            color: Colors.grey,
                          )
                ],
              ),
            ),
          ),
          if (isShow && item.children != null)
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: item.children
                  .map(
                    (e) => LeftNavSubtitileItem(
                        item: e,
                        isSelected: currentKey == e.key,
                        onTap: (key) {
                          if (onChangeKey != null) {
                            onChangeKey(key);
                          }
                        }),
                  )
                  .toList(),
            )
        ],
      ),
    );
  }
}
