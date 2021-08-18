import 'package:flutter/material.dart';
import 'package:stui/pages/docs/cascader.dart';
import 'package:stui/pages/docs/checkbox.dart';
import 'package:stui/pages/docs/menu.dart';
import 'package:stui/pages/docs/picker.dart';
import 'package:stui/pages/docs/radio.dart';
import 'package:stui/pages/docs/select.dart';
import 'package:stui/pages/docs/slider.dart';
import 'package:stui/pages/docs/snackbar.dart';
import 'package:stui/pages/docs/stepper.dart';
import 'package:stui/pages/docs/steps.dart';
import 'package:stui/pages/docs/switch.dart';
import 'package:stui/pages/docs/tag.dart';
import 'package:stui/pages/docs/actionsheet.dart';
import 'package:stui/pages/docs/alert.dart';
import 'package:stui/pages/docs/badge.dart';
import 'package:stui/pages/docs/button.dart';
import 'package:stui/pages/docs/card.dart';
import 'package:stui/pages/docs/dialog.dart';
import 'package:stui/pages/docs/icon.dart';
import 'package:stui/pages/docs/loading.dart';
import 'package:stui/pages/docs/message.dart';
import 'package:stui/pages/docs/progress.dart';
import 'package:stui/pages/docs/toast.dart';
import 'package:stui/pages/docs/tooltip.dart';

import 'package:stui/common/constant.dart';
import 'package:stui/pages/left_nav/left_nav.dart';

class DocContent extends StatefulWidget {
  const DocContent({Key key}) : super(key: key);

  @override
  _DocContentState createState() => _DocContentState();
}

class _DocContentState extends State<DocContent> {
  String _currentKey = 'button';
  ScrollController _controller;
  @override
  void initState() {
    super.initState();

    _controller = ScrollController();
  }

  Widget contentFromKey(key) {
    switch (key) {
      case 'button':
        return ButtonPage();
      case 'badge':
        return BadgePage();
      case 'icon':
        return IconPage();
      case 'alert':
        return AlertPage();
      case 'message':
        return MessagePage();
      case 'loading':
        return LoadingPage();
      case 'card':
        return CardPage();
      case 'tag':
        return TagPage();
      case 'tooltip':
        return TooltipPage();
      case 'progress':
        return ProgressPage();
      case 'dialog':
        return DialogPage();
      case 'actionsheet':
        return ActionsheetPage();
      case 'toast':
        return ToastPage();
      case 'snackbar':
        return SnackbarPage();
      case 'slider':
        return SliderPage();
      case 'switch':
        return SwitchPage();
      case 'radio':
        return RadioPage();
      case 'checkbox':
        return CheckboxPage();
      case 'stepper':
        return StepperPage();
      case 'select':
        return SelectPage();
      case 'cascader':
        return CascaderPage();
      case 'picker':
        return PickerPage();
      case 'steps':
        return StepsPage();
      case 'menu':
        return MenuPage();
      default:
        return ButtonPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LeftNav(
          key: Key('doc'),
          datas: navDocDatas,
          onChangeKey: (key) {
            if (_currentKey == key) return;
            setState(() {
              _currentKey = key;
            });
          },
        ),
        Flexible(
          child: SingleChildScrollView(
            controller: _controller,
            child: Container(
              margin: EdgeInsets.only(left: 32, top: 52, right: 24, bottom: 52),
              padding: EdgeInsets.symmetric(vertical: 44, horizontal: 56),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 16),
                      blurRadius: 24,
                      color: Color(0x1e000000)),
                ],
              ),
              width: double.infinity,
              child: contentFromKey(_currentKey),
            ),
          ),
        ),
      ],
    );
  }
}
