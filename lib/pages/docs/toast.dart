import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class ToastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Toast 轻提示',
      ),
      NormalText(
        '用于页面和区块的操作提示。',
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
              STToast.show(
                context: context,
                message: "这是一个message",
              );
            },
            child: Text('基本用法'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
  onPressed: () {
    STToast.show(
      context: context,
      message: "这是一个message",
    );
  },
  child: Text('基本用法'),
);
          '''),
        ],
      ),
      H2Text('可自定义 icon'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STToast.show(
                context: context,
                icon: Icon(
                  Icons.info_outline_rounded,
                  color: Colors.white,
                ),
                message: "这是一个message",
              );
            },
            child: Text('带 Icon'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
  onPressed: () {
    STToast.show(
      context: context,
      icon: Icon(
        Icons.info_outline_rounded,
        color: Colors.white,
      ),
      message: "这是一个message",
    );
  },
  child: Text('带 Icon'),
);
          '''),
        ],
      ),
      H2Text('状态提示'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STToast.show(
                type: STToastType.success,
                context: context,
                message: "这是一个message",
              );
            },
            child: Text('成功'),
          ),
          TextButton(
            onPressed: () {
              STToast.show(
                type: STToastType.error,
                context: context,
                message: "这是一个message",
              );
            },
            child: Text('失败'),
          ),
          TextButton(
            onPressed: () {
              STToast.show(
                type: STToastType.info,
                context: context,
                message: "这是一个message",
              );
            },
            child: Text('警告'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
  onPressed: () {
    STToast.show(
      type: STToastType.success,
      context: context,
      message: "这是一个message",
    );
  },
  child: Text('成功'),
);
          '''),
          CodeText('''
TextButton(
  onPressed: () {
    STToast.show(
      type: STToastType.error,
      context: context,
      message: "这是一个message",
    );
  },
  child: Text('失败'),
);
          '''),
          CodeText('''
TextButton(
  onPressed: () {
    STToast.show(
      type: STToastType.info,
      context: context,
      message: "这是一个message",
    );
  },
  child: Text('警告'),
);
          '''),
        ],
      ),
      H2Text('加载提示'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STToast.showLoading(
                context: context,
                icon: Icon(
                  STIcons.status_loading,
                  color: Colors.white,
                ),
              );
              Future.delayed(Duration(seconds: 3), () {
                STToast.hide(context);
              });
            },
            child: Text('加载中按钮'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
  onPressed: () {
    STToast.showLoading(
      context: context,
      icon: Icon(
        STIcons.status_loading,
        color: Colors.white,
      ),
    );
    Future.delayed(Duration(seconds: 3), () {
      STToast.hide(context);
    });
  },
  child: Text('加载中按钮'),
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
              DataCell(Text('isIconTop')),
              DataCell(Text('图片是否在文字上面， 上面、左边')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('rotateAnimation')),
              DataCell(Text('图片是否有动画')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('position')),
              DataCell(Text('toast弹出时在页面中位置，顶部中间、中间、底部中间')),
              DataCell(Text('STToastPosition')),
              DataCell(Text('STToastPosition.center')),
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
