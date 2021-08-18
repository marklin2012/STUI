import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class SnackbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Snackbar 底部轻提示',
      ),
      NormalText(
        '用于页面和区块操作底部的提示。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基本用法'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STSnackbar.show(
                context: context,
                title: "这是一个标题这是一个标题",
                hasCloseButton: false,
              );
            },
            child: Text('基本用法'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
onPressed: () {
  STSnackbar.show(
    context: context,
    title: "这是一个标题这是一个标题",
    hasCloseButton: false,
  );
},
child: Text('基本用法'),
);
          '''),
        ],
      ),
      H2Text('自定义按钮'),
      CodeArea(
        widgets: [
          TextButton(
            child: Text("自定义关闭按钮"),
            onPressed: () {
              STSnackbar.show(
                context: context,
                title: "这是标题",
                // message: "文字信息文字信息",
                hasCloseButton: true,
                buttonText: "Button",
                isButtonHasBackground: true,
              );
            },
          ),
          TextButton(
            onPressed: () {
              STSnackbar.show(
                context: context,
                title: '这是一个标题',
                buttonText: '关闭',
                hasCloseButton: true,
              );
            },
            child: Text('自定义关闭标题'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
  onPressed: () {
    STSnackbar.show(
      context: context,
      title: '这是一个标题',
      buttonText: '关闭',
      hasCloseButton: true,
    );
  },
  child: Text('自定义关闭标题'),
);
          '''),
        ],
      ),
      H2Text('关闭按钮'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STSnackbar.show(
                context: context,
                title: '这是一个标题',
                hasCloseButton: true,
              );
            },
            child: Text('关闭 Icon'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
  onPressed: () {
    STSnackbar.show(
      context: context,
      title: '这是一个标题',
      hasCloseButton: true,
    );
  },
  child: Text('关闭 Icon'),
);
      '''),
        ],
      ),
      H2Text('自定义 icon'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STSnackbar.show(
                context: context,
                title: '这是一个标题',
                icon: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
              );
            },
            child: Text('自定义 Icon'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
  onPressed: () {
    STSnackbar.show(
      context: context,
      title: '这是一个标题',
      icon: Icon(
        Icons.info_outline,
        color: Colors.white,
      ),
    );
  },
  child: Text('自定义 Icon'),
);
          '''),
        ],
      ),
      H2Text('自定义样式'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STSnackbar.show(
                context: context,
                title: '这是一个标题',
                message: '文字信息文字信息',
                icon: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
              );
            },
            child: Text('自定义 样式'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
  onPressed: () {
    STSnackbar.show(
      context: context,
      title: '这是一个标题',
      message: '文字信息文字信息',
      icon: Icon(
        Icons.info_outline,
        color: Colors.white,
      ),
    );
  },
  child: Text('自定义 样式'),
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
              DataCell(Text('title')),
              DataCell(Text('标题')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('message')),
              DataCell(Text('主文字')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('icon')),
              DataCell(Text('图片，不传不显示')),
              DataCell(Text('Widget')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('hasCloseButton')),
              DataCell(Text('是否有关闭按钮')),
              DataCell(Text('bool')),
              DataCell(Text('true')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('buttonText')),
              DataCell(Text('关闭按钮文字')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('buttonTextColor')),
              DataCell(Text('关闭按钮文字颜色')),
              DataCell(Text('Color')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('isButtonHasBackground')),
              DataCell(Text('按钮是否有背景色')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onButtonTap')),
              DataCell(Text('关闭按钮事件')),
              DataCell(Text('VoidCallback')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('autoClose')),
              DataCell(Text('是否能自动关闭')),
              DataCell(Text('bool')),
              DataCell(Text('true')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('disappearMilliseconds')),
              DataCell(Text('自动关闭时间(微秒)')),
              DataCell(Text('int')),
              DataCell(Text('5000')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('hasSafeArea')),
              DataCell(Text('是否有安全区域')),
              DataCell(Text('bool')),
              DataCell(Text('true')),
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
