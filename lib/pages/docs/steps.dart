import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class StepsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Steps 步骤条',
      ),
      NormalText(
        '引导用户按照流程完成任务的导航条。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基本用法'),
      CodeArea(
        widgets: [
          STSteps(
            current: 2,
            steps: [
              STStepItem(title: '步骤1'),
              STStepItem(title: '步骤2'),
              STStepItem(title: '步骤3'),
              STStepItem(title: '步骤4'),
            ],
          ),
        ],
        texts: [
          CodeText('''
          STSteps(
            current: 2,
            steps: [
              STStepItem(title: '步骤1'),
              STStepItem(title: '步骤2'),
              STStepItem(title: '步骤3'),
              STStepItem(title: '步骤4'),
            ],
          ),
          '''),
        ],
      ),
      H2Text('数字类型'),
      CodeArea(
        widgets: [
          STSteps(
            type: STStepsType.number,
            current: 2,
            steps: [
              STStepItem(title: '步骤1'),
              STStepItem(title: '步骤2'),
              STStepItem(title: '步骤3'),
              STStepItem(title: '步骤4'),
            ],
          ),
        ],
        texts: [
          CodeText('''
          STSteps(
            type: STStepsType.number,
            current: 2,
            steps: [
              STStepItem(title: '步骤1'),
              STStepItem(title: '步骤2'),
              STStepItem(title: '步骤3'),
              STStepItem(title: '步骤4'),
            ],
          ),
          '''),
        ],
      ),
      H2Text('竖向用法'),
      CodeArea(
        widgets: [
          STSteps(
            type: STStepsType.detail,
            current: 2,
            steps: [
              STStepItem(title: '步骤1', info: '说明信息1'),
              STStepItem(title: '步骤2', info: '说明信息2'),
              STStepItem(title: '步骤3', info: '说明信息3'),
              STStepItem(title: '步骤4', info: '说明信息4'),
            ],
          ),
        ],
        texts: [
          CodeText('''
          STSteps(
            type: STStepsType.detail,
            current: 2,
            steps: [
              STStepItem(title: '步骤1', info: '说明信息1'),
              STStepItem(title: '步骤2', info: '说明信息2'),
              STStepItem(title: '步骤3', info: '说明信息3'),
              STStepItem(title: '步骤4', info: '说明信息4'),
            ],
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
              DataCell(Text('type')),
              DataCell(Text('自定义类型(dot、number、icon、detail)')),
              DataCell(Text('STStepsType')),
              DataCell(Text('STStepsType.dot')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('margin')),
              DataCell(Text('外边距')),
              DataCell(Text('EdgeInsets')),
              DataCell(Text('EdgeInsets.symmetric(horizontal: 16.0)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('steps')),
              DataCell(Text('数据集')),
              DataCell(Text('List<STStepItem>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('current')),
              DataCell(Text('当前项')),
              DataCell(Text('int')),
              DataCell(Text('1')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('detailWidth')),
              DataCell(Text('type为detail时的宽度')),
              DataCell(Text('double')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
          ]),
      SizedBox(
        height: 32,
      ),
      H2Text('STStepItem API'),
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
              DataCell(Text('标题')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('iconData')),
              DataCell(Text('图标')),
              DataCell(Text('IconData')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('number')),
              DataCell(Text('显示的步骤数')),
              DataCell(Text('int')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('info')),
              DataCell(Text('说明信息')),
              DataCell(Text('String')),
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
