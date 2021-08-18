import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stui/utils/path.dart';

class TopNavBar extends StatelessWidget {
  final Function(String) onTap;
  final String selectedKey;
  const TopNavBar({Key key, this.onTap, this.selectedKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(25, 0, 0, 0),
              offset: Offset(0, 4.0),
              blurRadius: 20.0),
        ],
      ),
      child: Center(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 12),
            constraints: BoxConstraints(maxWidth: 1280.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  localSvgPath('logo_home'),
                  width: 36,
                  height: 36,
                ),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TopNavItem(
                        title: '设计',
                        titleKey: 'design',
                        isSelected: selectedKey == 'design',
                        onTap: onTap,
                      ),
                      SizedBox(
                        width: 52,
                      ),
                      TopNavItem(
                        title: '组件',
                        titleKey: 'doc',
                        isSelected: selectedKey == 'doc',
                        onTap: onTap,
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class TopNavItem extends StatelessWidget {
  final Function(String) onTap;
  final String title;
  final String titleKey;
  final bool isSelected;
  const TopNavItem(
      {Key key,
      this.onTap,
      @required this.title,
      this.isSelected = false,
      this.titleKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (onTap != null) {
          onTap(titleKey);
        }
      },
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18,
              color: isSelected ? Color(0xFF095BF9) : Colors.black),
        ),
      ),
    );
  }
}
