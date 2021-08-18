import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Alert 警告',
      ),
      NormalText(
        '警告提示，展现需要关注的信息。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      NormalText('最简单的用法，适用于简短的警告提示。'),
      SizedBox(
        height: 28,
      ),
      H2Text('基本用法'),
      CodeArea(widgets: [
        TextButton(
            onPressed: () {
              STAlert.show(context: context, message: 'message');
            },
            child: Text('基本用法')),
      ], texts: [
        CodeText('''
TextButton(
  onPressed: () {
    STAlert.show(context: context, message: '这是基本用法');
  }, 
  child: Text('基本用法')),
        '''),
      ]),
      H2Text('四种状态'),
      CodeArea(widgets: [
        TextButton(
          onPressed: () {
            STAlert.show(
              context: context,
              message: '这是 Info 类型',
            );
          },
          child: Text('Info 类型'),
        ),
        TextButton(
          onPressed: () {
            STAlert.show(
              context: context,
              message: '这是 Success 类型',
              type: STAlertType.success,
            );
          },
          child: Text('Success 类型'),
        ),
        TextButton(
          onPressed: () {
            STAlert.show(
              context: context,
              message: '这是 Warning 类型',
              type: STAlertType.warning,
            );
          },
          child: Text('Warning 类型'),
        ),
        TextButton(
          onPressed: () {
            STAlert.show(
              context: context,
              message: '这是 Error 类型',
              type: STAlertType.error,
            );
          },
          child: Text('Error 类型'),
        ),
      ], texts: [
        CodeText('''
TextButton(
  onPressed: () {
    STAlert.show(
        context: context, 
        message: 'message',
      );
  },
  child: Text('信息用法'),
);
        '''),
        CodeText('''
TextButton(
  onPressed: () {
    STAlert.show(
      context: context,
      message: '这是 Success 类型',
      type: STAlertType.success,
    );
  },
  child: Text('Success 类型'),
);
        '''),
        CodeText('''
          TextButton(
          onPressed: () {
            STAlert.show(
              context: context,
              message: '这是 Warning 类型',
              type: STAlertType.warning,
            );
          },
          child: Text('Warning 类型'),
        );
        '''),
        CodeText('''
        TextButton(
          onPressed: () {
            STAlert.show(
              context: context,
              message: '这是 Error 类型',
              type: STAlertType.error,
            );
          },
          child: Text('Error 类型'),
        );
        '''),
      ]),
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
              DataCell(Text('width')),
              DataCell(Text('控件宽度')),
              DataCell(Text('double')),
              DataCell(Text('200.0')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('message')),
              DataCell(Text('提示文字')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('description')),
              DataCell(Text('消息具体说明')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('closeText')),
              DataCell(Text('关闭按钮的文字')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('type')),
              DataCell(Text('alert类型')),
              DataCell(Text('STAlertType')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('showIcon')),
              DataCell(Text('是否有图片显示')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('autoClose')),
              DataCell(Text('是否能自动关闭')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('closable')),
              DataCell(Text('点击遮罩是否可关闭')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('disappearTime')),
              DataCell(Text('自动关闭时间')),
              DataCell(Text('int')),
              DataCell(Text('5')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onCloseTap')),
              DataCell(Text('点击关闭事件')),
              DataCell(Text('VoidCallback')),
              DataCell(Text('-')),
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
