import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/pages/transition_pc/component.dart';
import 'package:stui/pages/transition_pc/mouse.dart';

class TransitionPCPage extends StatefulWidget {
  const TransitionPCPage({Key key}) : super(key: key);

  @override
  _TransitionPCPageState createState() => _TransitionPCPageState();
}

class _TransitionPCPageState extends State<TransitionPCPage> {
  int _currentIndex = 0;

  Widget contentWidgetFromIndex(index) {
    switch (index) {
      case 1:
        return ComponentPCContent();

      default:
        return MouseContent();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        STMenu(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: STMenuType.underline,
          items: [
            STMenuDataItem(title: '鼠标悬停'),
            STMenuDataItem(title: '高频组件'),
          ],
        ),
        SizedBox(
          height: 36,
        ),
        Flexible(
          child: contentWidgetFromIndex(_currentIndex),
        ),
      ],
    );
  }
}
