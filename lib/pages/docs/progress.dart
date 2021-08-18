import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class ProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Progress 进度条',
      ),
      NormalText(
        '用于展示操作进度，告知用户当前状态和预期。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基础用法'),
      CodeArea(
        widgets: [
          STProgress(
            type: STProgressType.primary,
            progress: 0.75,
            color: Colors.blue,
          ),
          STProgress(
            type: STProgressType.primary,
            progress: 1,
            color: Colors.orange,
          ),
          STProgress(
            type: STProgressType.primary,
            progress: 1,
            color: Colors.green,
          ),
          STProgress(
            type: STProgressType.primary,
            progress: 1,
            color: Colors.red,
          ),
        ],
        texts: [
          CodeText(
              "STProgress(type: STProgressType.primary,progress: 0.75,color: Colors.blue,);"),
          CodeText(
              "STProgress(type: STProgressType.primary,progress: 1,color: Colors.orange,);"),
          CodeText(
              "STProgress(type: STProgressType.primary,progress: 1,color: Colors.green,);"),
          CodeText(
              "STProgress(type: STProgressType.primary,progress: 1,color: Colors.red,);"),
        ],
      ),
      H2Text('百分比进度条'),
      CodeArea(
        widgets: [
          STProgress(
            type: STProgressType.percent,
            progress: 0.25,
            height: 20,
            color: Colors.blue,
          ),
          STProgress(
            type: STProgressType.percent,
            progress: 0.5,
            height: 20,
            color: Colors.blue,
          ),
          STProgress(
            type: STProgressType.percent,
            progress: 0.75,
            height: 20,
            color: Colors.blue,
          ),
          STProgress(
            type: STProgressType.percent,
            progress: 1,
            height: 20,
            color: Colors.green,
          ),
        ],
        texts: [
          CodeText(
              "STProgress(type: STProgressType.percent,progress: 0.25,height: 20,color: Colors.blue,);"),
          CodeText(
              "STProgress(type: STProgressType.percent,progress: 0.5,height: 20,color: Colors.blue,);"),
          CodeText(
              "STProgress(type: STProgressType.percent,progress: 0.75,height: 20,color: Colors.blue,);"),
          CodeText(
              "STProgress(type: STProgressType.percent,progress: 1,height: 20,color: Colors.blue,);"),
        ],
      ),
      H2Text('步骤进度条'),
      CodeArea(
        widgets: [
          STProgress(
            type: STProgressType.stepDot,
            progress: 0.5,
            height: 20,
            color: Colors.blue,
          ),
          STProgress(
            type: STProgressType.stepRect,
            progress: 0.75,
            height: 20,
            color: Colors.blue,
          ),
          STProgress(
            type: STProgressType.stepRect,
            progress: 1,
            height: 20,
            color: Colors.green,
          ),
        ],
        texts: [
          CodeText(
              "STProgress(type: STProgressType.stepDot,progress: 0.5,height: 20,color: Colors.blue,);"),
          CodeText(
              "STProgress(type: STProgressType.stepDot,progress: 0.75,height: 20,color: Colors.blue,);"),
          CodeText(
              "STProgress(type: STProgressType.stepDot,progress: 1,height: 20,color: Colors.green,);"),
        ],
      ),
      H2Text('环形进度条'),
      CodeArea(
        widgets: [
          STProgress(
            type: STProgressType.circle,
            progress: 0.25,
            height: 8,
            color: Colors.blue,
          ),
          STProgress(
            type: STProgressType.circle,
            progress: 0.5,
            height: 8,
            color: Colors.blue,
          ),
          STProgress(
            type: STProgressType.circle,
            progress: 0.75,
            height: 8,
            color: Colors.blue,
          ),
          STProgress(
            type: STProgressType.circle,
            progress: 1,
            height: 8,
            color: Colors.green,
          ),
        ],
        texts: [
          CodeText(
              "STProgress(type: STProgressType.circle,progress: 0.25,height: 8,color: Colors.blue,);"),
          CodeText(
              "STProgress(type: STProgressType.circle,progress: 0.5,height: 8,color: Colors.blue,);"),
          CodeText(
              "STProgress(type: STProgressType.circle,progress: 0.75,height: 8,color: Colors.blue,);"),
          CodeText(
              "STProgress(type: STProgressType.circle,progress: 1,height: 8,color: Colors.blue,);"),
        ],
      ),
      H2Text('仪表盘'),
      CodeArea(
        widgets: [
          STProgress(
            type: STProgressType.dashboard,
            progress: 0.25,
            height: 8,
            color: Colors.blue,
          ),
          STProgress(
            type: STProgressType.dashboard,
            progress: 0.5,
            height: 8,
            color: Colors.blue,
          ),
          STProgress(
            type: STProgressType.dashboard,
            progress: 0.75,
            height: 8,
            color: Colors.blue,
          ),
          STProgress(
            type: STProgressType.dashboard,
            progress: 1,
            height: 8,
            color: Colors.green,
          ),
        ],
        texts: [
          CodeText(
              "STProgress(type: STProgressType.dashboard,progress: 0.25,height: 8,color: Colors.blue,);"),
          CodeText(
              "STProgress(type: STProgressType.dashboard,progress: 0.5,height: 8,color: Colors.blue,);"),
          CodeText(
              "STProgress(type: STProgressType.dashboard,progress: 0.75,height: 8,color: Colors.blue,);"),
          CodeText(
              "STProgress(type: STProgressType.dashboard,progress: 1,height: 8,color: Colors.blue,);"),
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
              DataCell(Text('图片')),
              DataCell(Text('Widget')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('text')),
              DataCell(Text('文字内容')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('textStyle')),
              DataCell(Text('文字样式')),
              DataCell(Text('TextStyle')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onTap')),
              DataCell(Text('点击回调')),
              DataCell(Text('VoidCallback')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('size')),
              DataCell(Text('按钮的大小')),
              DataCell(Text('STButtonSize')),
              DataCell(Text('STButtonSize.large')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('type')),
              DataCell(Text('按钮的样式')),
              DataCell(Text('STButtonType')),
              DataCell(Text('STButtonType.primary')),
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
              DataCell(Text('loading')),
              DataCell(Text('是否加载中')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('circle')),
              DataCell(Text('是否圆形圆角')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('height')),
              DataCell(Text('高')),
              DataCell(Text('double')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('width')),
              DataCell(Text('宽')),
              DataCell(Text('double')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('radius')),
              DataCell(Text('圆角大小')),
              DataCell(Text('double')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('backgroundColor')),
              DataCell(Text('背景颜色')),
              DataCell(Text('Color')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('borderColor')),
              DataCell(Text('边框颜色')),
              DataCell(Text('Color')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('borderWidth')),
              DataCell(Text('边框的宽度')),
              DataCell(Text('double')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('padding')),
              DataCell(Text('内嵌边距')),
              DataCell(Text('EdgeInsets')),
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
