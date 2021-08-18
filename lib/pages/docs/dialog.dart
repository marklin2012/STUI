import 'package:flutter/material.dart';
import 'package:saturn/st_dialog/include.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Dialog 弹出框',
      ),
      NormalText(
        '模态对话框。',
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
              STDialog.show(
                context: context,
                title: "标题标题",
                message: "描述说明信息",
                cancelTitle: '取消',
                hasCancelButton: true,
                hasConfirmButton: true,
              );
            },
            child: Text('基本用法'),
          ),
        ],
        texts: [
          CodeText('''
          TextButton(
            onPressed: () {
              STDialog.show(
                context: context,
                title: "标题标题",
                message: "描述说明信息",
                cancelTitle: '取消',
                hasCancelButton: true,
                hasConfirmButton: true,
              );
            },
            child: Text('基本用法'),
          ),
          '''),
        ],
      ),
      H2Text('自定义标题图片'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STDialog.show(
                context: context,
                title: "标题标题",
                message: "描述说明信息",
                icon: Icon(Icons.info_outline_rounded),
                cancelTitle: '取消',
                hasCancelButton: true,
                hasConfirmButton: true,
              );
            },
            child: Text('自定义标题图片'),
          ),
        ],
        texts: [
          CodeText('''
          TextButton(
            onPressed: () {
              STDialog.show(
                context: context,
                title: "标题标题",
                message: "描述说明信息",
                icon: Icon(Icons.info_outline_rounded),
                cancelTitle: '取消',
                hasCancelButton: true,
                hasConfirmButton: true,
              );
            },
            child: Text('自定义标题图片'),
          );
          '''),
        ],
      ),
      H2Text('多个选项'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STDialog.show(
                context: context,
                title: "标题标题",
                message: "描述说明信息",
                options: [
                  STDialogOption(
                    title: '选项1',
                    onTap: () {
                      print('1');
                    },
                  ),
                  STDialogOption(
                    title: '选项2',
                    onTap: () {
                      print('2');
                    },
                  ),
                  STDialogOption(
                    title: '选项3',
                    onTap: () {
                      print('3');
                    },
                  ),
                ],
                cancelTitle: '取消',
                hasCancelButton: true,
              );
            },
            child: Text('多个选项'),
          ),
        ],
        texts: [
          CodeText('''
          TextButton(
            onPressed: () {
              STDialog.show(
                context: context,
                title: "标题标题",
                message: "描述说明信息",
                options: [
                  STDialogOption(
                    title: '选项1',
                    onTap: () {
                      print('1');
                    },
                  ),
                  STDialogOption(
                    title: '选项2',
                    onTap: () {
                      print('2');
                    },
                  ),
                  STDialogOption(
                    title: '选项3',
                    onTap: () {
                      print('3');
                    },
                  ),
                ],
                cancelTitle: '取消',
                hasCancelButton: true,
              );
            },
            child: Text('多个选项'),
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
              DataCell(Text('width')),
              DataCell(Text('控件宽度')),
              DataCell(Text('double')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
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
              DataCell(Text('图片,不传不显示')),
              DataCell(Text('Widget')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('confirmTitle')),
              DataCell(Text('确认按钮文字')),
              DataCell(Text('String')),
              DataCell(Text('确定')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('cancelTitle')),
              DataCell(Text('取消按钮文字')),
              DataCell(Text('String')),
              DataCell(Text('取消')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('options')),
              DataCell(Text('option选项数组')),
              DataCell(Text('List')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('hasCancelButton')),
              DataCell(Text('是否有取消按钮')),
              DataCell(Text('bool')),
              DataCell(Text('true')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('hasConfirmButton')),
              DataCell(Text('是否有确认按钮')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('hasTextField')),
              DataCell(Text('是否有textField')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onCancelTap')),
              DataCell(Text('点击取消按钮事件')),
              DataCell(Text('VoidCallback')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onConfirmTap')),
              DataCell(Text('点击确认按钮事件')),
              DataCell(Text('Function(String text)')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('closable')),
              DataCell(Text('点击遮罩是否可关闭')),
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
