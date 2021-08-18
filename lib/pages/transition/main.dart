import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/pages/transition/component.dart';
import 'package:stui/pages/transition/loading.dart';
import 'package:stui/pages/transition/transition.dart';
import 'package:stui/pages/transition/window.dart';

class TransitionPage extends StatefulWidget {
  const TransitionPage({Key key}) : super(key: key);

  @override
  _TransitionPageState createState() => _TransitionPageState();
}

class _TransitionPageState extends State<TransitionPage> {
  int _currentIndex = 0;

  Widget contentWidgetFromIndex(index) {
    switch (index) {
      case 1:
        return WindowContent();
      case 2:
        return LoadingContent();
      case 3:
        return ComponentContent();
      default:
        return TransitionContent();
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
            STMenuDataItem(title: '界面转场'),
            STMenuDataItem(title: '弹窗动效'),
            STMenuDataItem(title: '加载动效'),
            STMenuDataItem(title: '高频组件'),
          ],
        ),
        SizedBox(
          height: 36,
        ),
        Flexible(
          child: contentWidgetFromIndex(_currentIndex),
        )
      ],
    );
  }
}
