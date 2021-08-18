import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Loading 加载',
      ),
      NormalText(
        '用于页面和区块的加载中状态。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      NormalText('一个简单的 loading 状态。'),
      SizedBox(
        height: 28,
      ),
      H2Text('基本用法'),
      CodeArea(
        widgets: [
          STLoading(
            alwaysLoading: true,
          ),
        ],
        texts: [
          CodeText('''
          STLoading(
            alwaysLoading: true,
          );
          '''),
        ],
      ),
      H2Text('自定义标题'),
      CodeArea(
        widgets: [
          STLoading(
            alwaysLoading: true,
            text: '正在拼命奔跑中...',
          ),
        ],
        texts: [
          CodeText('''
           STLoading(
            alwaysLoading: true,
            text: '正在拼命奔跑中...',
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
              DataCell(Text('icon')),
              DataCell(Text('显示的图片')),
              DataCell(Text('Widget')),
              DataCell(Text('STICons.status_loading')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('text')),
              DataCell(Text('主文字')),
              DataCell(Text('String')),
              DataCell(Text('加载中...')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('alwaysLoading')),
              DataCell(Text('图片是否有动画')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('iconPosition')),
              DataCell(Text('图片位置，可以在文字左边或顶上')),
              DataCell(Text('STLoadingIconPosition')),
              DataCell(Text('STLoadingIconPosition.left (左边)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('textStyle')),
              DataCell(Text('主文字风格')),
              DataCell(Text('TextStyle')),
              DataCell(Text('RGBO(9, 91, 249, 1) , size 14')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('durationMilliseconds')),
              DataCell(Text('每一次图片动画的时间')),
              DataCell(Text('int')),
              DataCell(Text('2s')),
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
