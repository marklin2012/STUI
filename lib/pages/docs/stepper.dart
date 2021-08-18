import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class StepperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Stepper 步进器',
      ),
      NormalText(
        '步进器。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基本用法'),
      CodeArea(
        widgets: [
          STStepper(),
          STStepper(
            disabled: true,
          ),
        ],
        texts: [
          CodeText("STStepper(),"),
          CodeText('''
          STStepper(
            disabled: true,
          ),
          '''),
        ],
      ),
      H2Text('设置最大/最小值'),
      CodeArea(
        widgets: [
          STStepper(
            value: 1,
            minValue: 1,
          ),
          STStepper(
            value: 2,
            minValue: 1,
            maxValue: 5,
          ),
        ],
        texts: [
          CodeText('''
          STStepper(
            value: 1,
            minValue: 1,
          ),
          '''),
          CodeText('''
          STStepper(
            value: 2,
            minValue: 1,
            maxValue: 5,
          ),
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
              DataCell(Text('当前或初始值')),
              DataCell(Text('int')),
              DataCell(Text('0')),
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
              DataCell(Text('textStyle')),
              DataCell(Text('文本的样式')),
              DataCell(Text('TextStyle')),
              DataCell(
                  Text('TextStyle(color: Color(0xFF000000), fontSize: 14.0)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('borderColor')),
              DataCell(Text('边框的颜色')),
              DataCell(Text('Color')),
              DataCell(Text('Color(0xFFDFE2E7)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('minValue')),
              DataCell(Text('最小值')),
              DataCell(Text('int')),
              DataCell(Text('0')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('maxValue')),
              DataCell(Text('最大值')),
              DataCell(Text('int')),
              DataCell(Text('99')),
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
