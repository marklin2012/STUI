import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  var _radioGroupValue = '文本';
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Radio 单选框',
      ),
      NormalText(
        '单选框。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基本使用'),
      CodeArea(
        widgets: [
          STRadio(
            value: '文本',
            text: '文本',
            onChanged: (value) {
              setState(() {
                _radioGroupValue = value;
              });
            },
            groupValue: _radioGroupValue,
          ),
          STRadio(
            value: '文本1',
            text: '文本1',
            onChanged: (value) {
              setState(() {
                _radioGroupValue = value;
              });
            },
            groupValue: _radioGroupValue,
          ),
          STRadio(
            value: '文本2',
            text: '文本2',
            onChanged: (value) {
              setState(() {
                _radioGroupValue = value;
              });
            },
            groupValue: _radioGroupValue,
            disabled: true,
          ),
        ],
        texts: [
          CodeText('''
          STRadio(
            value: '文本',
            text: '文本',
            onChanged: (value) {
              setState(() {
                _radioGroupValue = value;
              });
            },
          ),
          '''),
          CodeText('''
          STRadio(
            value: '文本',
            text: '文本',
            groupValue: '文本',
          ),
          '''),
          CodeText('''
          STRadio(
            value: '文本',
            text: '文本',
            groupValue: '文本',
            disabled: true,
          ),
          '''),
        ],
      ),
      H2Text('API'),
      DataTable(
          columnSpacing: 40,
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Color(0x35DFE2E7)),
          columns: [
            DataColumn(label: Text('属性')),
            DataColumn(label: Container(width: 100, child: Text('说明'))),
            DataColumn(label: Text('类型')),
            DataColumn(label: Container(width: 60, child: Text('默认值'))),
            DataColumn(label: Text('版本')),
          ],
          dataRowHeight: 66,
          rows: [
            DataRow(selected: false, cells: [
              DataCell(Text('value')),
              DataCell(Text('当前值')),
              DataCell(Text('T(泛型)')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('groupValue')),
              DataCell(Text('选中的值')),
              DataCell(Text('T(泛型)')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onChanged')),
              DataCell(Text('当前值选中后的回调')),
              DataCell(Text('ValueChanged\<T\>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('activeColor')),
              DataCell(Text('选中的颜色')),
              DataCell(Text('Color')),
              DataCell(Text('Color(0xFFFFFFFF)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('backgroundColor')),
              DataCell(Text('背景的颜色')),
              DataCell(Text('Color')),
              DataCell(Text('Color(0xFF888888)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('text')),
              DataCell(Text('显示内容')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('disabled')),
              DataCell(Text('是否不可用')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('internalDiameter')),
              DataCell(Text('内直径')),
              DataCell(Text('double')),
              DataCell(Text('12.0')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('externalDiameter')),
              DataCell(Text('外直径')),
              DataCell(Text('double')),
              DataCell(Text('24.0')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('space')),
              DataCell(Text('文字与图片的间距')),
              DataCell(Text('double')),
              DataCell(Text('12.0')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('textStyle')),
              DataCell(Text('文字的样式')),
              DataCell(Text('TextStyle')),
              DataCell(Text('''
TextStyle(color: Color(0xFF000000),
fontSize: 17.0)
                  ''')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('padding')),
              DataCell(Text('内嵌边距')),
              DataCell(Text('EdgeInsets')),
              DataCell(Text('''
EdgeInsets.symmetric(
  vertical: 10,
  horizontal: 8)
                    ''')),
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
