import 'package:flutter/material.dart';
import 'package:saturn/st_switch/st_switch.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class SwitchPage extends StatefulWidget {
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool _value = false;
  bool _value2 = true;
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Switch 开关',
      ),
      NormalText(
        '开关选择器。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基本使用'),
      CodeArea(
        widgets: [
          STSwitch(
            value: _value,
            text: '开关',
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
          STSwitch(
            value: _value2,
            text: '开关',
            onChanged: (value) {
              setState(() {
                _value2 = value;
              });
            },
          ),
        ],
        texts: [
          CodeText('''
STSwitch(
  value: _value,
  text: '开关',
  onChanged: (value) {
    setState(() {
      _value = value;
    });
  },
);
          '''),
          CodeText('''
STSwitch(
  value: _value2,
  text: '开关',
  onChanged: (value) {
    setState(() {
      _value2 = value;
    });
  },
);
          '''),
        ],
      ),
      H2Text('API'),
      DataTable(
          columnSpacing: 48,
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Color(0x35DFE2E7)),
          columns: [
            DataColumn(label: Text('属性')),
            DataColumn(label: Container(width: 150, child: Text('说明'))),
            DataColumn(label: Text('类型')),
            DataColumn(label: Text('默认值')),
            DataColumn(label: Text('版本')),
          ],
          rows: [
            DataRow(selected: false, cells: [
              DataCell(Text('value')),
              DataCell(Text('是否打开')),
              DataCell(Text('bool')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('text')),
              DataCell(Text('文本内容')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('textStyle')),
              DataCell(Text('文字样式')),
              DataCell(Text('TextStyle')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onChanged')),
              DataCell(Text('开关切换的回调')),
              DataCell(Text('ValueChanged\<bool\>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('space')),
              DataCell(Text('开关与文字的间距')),
              DataCell(Text('double')),
              DataCell(Text('12.0')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('disabled')),
              DataCell(Text('是否不可用')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
          ])
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: children,
    );
  }
}
