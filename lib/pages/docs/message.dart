import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Message 全局提示',
      ),
      NormalText(
        '全局展示操作反馈信息。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      NormalText('信息提醒反馈。'),
      SizedBox(
        height: 28,
      ),
      H2Text('基本用法'),
      CodeArea(widgets: [
        TextButton(
          onPressed: () {
            STMessage.show(context: context, title: '这是标题', message: '这是内容');
          },
          child: Text('基本 Message'),
        ),
      ], texts: [
        CodeText('''
TextButton(
  onPressed: () {
    STMessage.show(context: context, title: '这是标题', message: '这是内容');
  },
  child: Text('基本 Message'),
);
        '''),
      ]),
      H2Text('多行文字图片'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STMessage.show(
                  context: context,
                  message: "好的信息好的信息好的信息好的信息好的信息好的信息好的信息好的信息",
                  icon: Icon(Icons.error_outline));
              Future.delayed(Duration(seconds: 2), () {
                STMessage.show(
                  context: context,
                  title: "标题标题",
                  message: "好的好的信息好的信息好的信息好的信息好的信息好的信息好的信息好的信息",
                );
              });
            },
            child: Text('多行文字图片'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
  onPressed: () {
    STMessage.show(
        context: context,
        message: "好的信息好的信息好的信息好的信息好的信息好的信息好的信息好的信息",
        icon: Icon(Icons.error_outline));
    Future.delayed(Duration(seconds: 2), () {
      STMessage.show(
        context: context,
        title: "标题标题",
        message: "好的好的信息好的信息好的信息好的信息好的信息好的信息好的信息好的信息",
      );
    });
  },
  child: Text('多行文字图片'),
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
              DataCell(Text('title')),
              DataCell(Text('标题')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('message')),
              DataCell(Text('内容,不传不显示')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('icon')),
              DataCell(Text('图片,不传不显示')),
              DataCell(Text('Widget')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('content')),
              DataCell(Text('自定义内容，不传不显示')),
              DataCell(Text('Widget')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('showShadow')),
              DataCell(Text('是否显示阴影')),
              DataCell(Text('bool')),
              DataCell(Text('true')),
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
              DataCell(Text('disappearMilliseconds')),
              DataCell(Text('自动关闭时间')),
              DataCell(Text('int')),
              DataCell(Text('5000(ms)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('location')),
              DataCell(Text('本控件在页面中的弹出位置，顶部居中、 居中、底部居中')),
              DataCell(Text('STMessageLocation')),
              DataCell(Text('顶部居中')),
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
