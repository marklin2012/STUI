import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class TooltipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Tooltip 文字提示',
      ),
      NormalText(
        '简单的文字提示气泡框。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基础用法'),
      NormalText('主题可自定义颜色'),
      CodeArea(
        widgets: [
          STTooltip(
            message: 'Light 提示文字',
            backgroundColor: Colors.blueGrey,
            child: Text('Light 提示文字'),
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          STTooltip(
            message: 'Presets 提示文字',
            backgroundColor: Colors.red,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Presets 提示文字'),
            ),
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          STTooltip(
            message: 'dark 提示文字',
            child: Icon(Icons.settings),
            backgroundColor: Colors.black,
          ),
        ],
        texts: [
          CodeText('''
STTooltip(
  message: 'Light 提示文字',
  backgroundColor: Colors.blueGrey,
  child: Text('Light 提示文字'),
  textStyle: TextStyle(
    color: Colors.black,
    fontSize: 16.0,
  ),
);
          '''),
          CodeText('''
STTooltip(
  message: 'Presets 提示文字',
  backgroundColor: Colors.red,
  child: ElevatedButton(
    onPressed: () {},
    child: Text('Presets 提示文字'),
  ),
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 16.0,
  ),
);
          '''),
          CodeText('''
STTooltip(
  message: 'dark 提示文字',
  child: Icon(Icons.settings),
  backgroundColor: Colors.black,
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
              DataCell(Text('backgroundColor')),
              DataCell(Text('提示框的背景颜色')),
              DataCell(Text('Color')),
              DataCell(Text('Color.fromRGBO(0, 0, 0, 0.8)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('height')),
              DataCell(Text('提示框的高度')),
              DataCell(Text('double')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('message')),
              DataCell(Text('提示的文本内容')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('child')),
              DataCell(Text('触发的组件Widget')),
              DataCell(Text('Widget')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('padding')),
              DataCell(Text('提示框的内嵌边距')),
              DataCell(Text('EdgeInsets')),
              DataCell(Text('EdgeInsets.fromLTRB(20, 12, 20, 12)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('margin')),
              DataCell(Text('提示框的外边距')),
              DataCell(Text('EdgeInsets')),
              DataCell(Text('EdgeInsets.symmetric(horizontal: 60.0)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('verticalOffset')),
              DataCell(Text('提示框与child的垂直方向偏移量')),
              DataCell(Text('double')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('textStyle')),
              DataCell(Text('提示框文本的样式')),
              DataCell(Text('TextStyle')),
              DataCell(Text('TextStyle(color: Colors.white, fontSize: 16.0)')),
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
