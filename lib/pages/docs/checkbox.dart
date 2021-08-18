import 'package:flutter/material.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';
import 'package:saturn/saturn.dart';

class CheckboxPage extends StatefulWidget {
  @override
  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  var _checkValue = false;
  var _boxItems = [
    STBoxItem(title: '语文'),
    STBoxItem(title: '数学'),
    STBoxItem(title: '英语'),
    STBoxItem(title: '禁用', disabled: true),
  ];
  var _selected = ['语文'];
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Checkbox 多选框',
      ),
      NormalText(
        '多选框。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基本用法'),
      CodeArea(
        widgets: [
          STCheckBox(
            text: '默认',
          ),
          STCheckBox(
            value: true,
            text: '选中',
          ),
          STCheckBox(
            value: true,
            disabled: true,
            text: '禁用',
          ),
        ],
        texts: [
          CodeText('''
          STCheckBox(
            text: '默认',
          ),
          '''),
          CodeText('''
          STCheckBox(
            value: true,
            text: '选中',
          ),
          '''),
          CodeText('''
          STCheckBox(
            value: true,
            disabled: true,
            text: '禁用',
          ),
          '''),
        ],
      ),
      H2Text('STCheckbox API'),
      DataTable(
          columnSpacing: 48,
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Color(0x35DFE2E7)),
          columns: [
            DataColumn(label: Text('属性')),
            DataColumn(label: Text('说明')),
            DataColumn(label: Text('类型')),
            DataColumn(label: Text('默认值')),
            DataColumn(label: Text('版本')),
          ],
          rows: [
            DataRow(selected: false, cells: [
              DataCell(Text('value')),
              DataCell(Text('是否选中')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('text')),
              DataCell(Text('内容')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('textStyle')),
              DataCell(Text('内容的样式')),
              DataCell(Text('TextStyle')),
              DataCell(
                  Text('TextStyle(color: Color(0xFF000000), fontSize: 17.0)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onChanged')),
              DataCell(Text('点击的回调')),
              DataCell(Text('ValueChanged\<bool\>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('activeColor')),
              DataCell(Text('选中的颜色')),
              DataCell(Text('Color')),
              DataCell(Text('Color(0xFF095BF9)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('borderColor')),
              DataCell(Text('边框颜色')),
              DataCell(Text('Color')),
              DataCell(Text('Color(0xFF888888)')),
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
              DataCell(Text('boxWidth')),
              DataCell(Text('Box的宽度')),
              DataCell(Text('double')),
              DataCell(Text('24.0')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('space')),
              DataCell(Text('Box的宽度')),
              DataCell(Text('double')),
              DataCell(Text('12.0')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('padding')),
              DataCell(Text('内嵌边距')),
              DataCell(Text('EdgeInsets')),
              DataCell(
                  Text('EdgeInsets.symmetric(vertical: 10, horizontal: 8) ')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('radius')),
              DataCell(Text('圆角大小')),
              DataCell(Text('double')),
              DataCell(Text('4.0')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('iconColor')),
              DataCell(Text('图片颜色')),
              DataCell(Text('Color')),
              DataCell(Text('Color(0xFFFFFFFF)')),
              DataCell(Text('-')),
            ]),
          ]),
      SizedBox(
        height: 32,
      ),
      H2Text('STCheckboxGroup API'),
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
              DataCell(Text('items')),
              DataCell(Text('数据集')),
              DataCell(Text('List\<STBoxItem\> ')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('selecteds')),
              DataCell(Text('已经选中的数据')),
              DataCell(Text('List<String> ')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onChanged')),
              DataCell(Text('回调选中的数据')),
              DataCell(Text('ValueChanged\<List\<String\>\>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('margin')),
              DataCell(Text('外边距')),
              DataCell(Text('EdgeInsets')),
              DataCell(Text('EdgeInsets.symmetric(horizontal: 10)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('padding')),
              DataCell(Text('内嵌边距')),
              DataCell(Text('EdgeInsets')),
              DataCell(Text('EdgeInsets.all(5.0)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('axis')),
              DataCell(Text('方向')),
              DataCell(Text('Axis')),
              DataCell(Text('Axis.horizontal')),
              DataCell(Text('-')),
            ]),
          ]),
      SizedBox(
        height: 32,
      ),
      H2Text('STBoxItem API'),
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
              DataCell(Text('title')),
              DataCell(Text('内容')),
              DataCell(Text('String ')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('disabled')),
              DataCell(Text('是否不可用')),
              DataCell(Text('bool')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
          ]),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: children,
    );
  }
}
