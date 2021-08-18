import 'package:flutter/material.dart';
import 'package:saturn/st_tag/include.dart';
import 'package:saturn/st_tag/st_tag.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class TagPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Tag 标签',
      ),
      NormalText(
        '进行标记和分类的小标签。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基础状态'),
      NormalText('四个基本状态：默认，成功，失败，警告'),
      CodeArea(
        widgets: [
          STTag(text: '标签'),
          STTag(
            text: '标签',
            type: STTagType.success,
          ),
          STTag(
            text: '标签',
            type: STTagType.error,
          ),
          STTag(
            text: '标签',
            type: STTagType.warning,
          ),
        ],
        texts: [
          CodeText("STTag(text: '标签');"),
          CodeText("STTag(text: '标签', type: STTagType.success,);"),
          CodeText("STTag(text: '标签', type: STTagType.error,);"),
          CodeText("STTag(text: '标签', type: STTagType.warning,);"),
        ],
      ),
      H2Text('尺寸'),
      NormalText('3个基本尺寸：大，中，小'),
      CodeArea(
        widgets: [
          STTag(
            text: '标签',
            size: STTagSize.big,
          ),
          STTag(text: '标签'),
          STTag(
            text: '标签',
            size: STTagSize.small,
          ),
        ],
        texts: [
          CodeText("STTag(text: '标签', size: STTagSize.big,);"),
          CodeText("STTag(text: '标签');"),
          CodeText("STTag(text: '标签', size: STTagSize.small,);"),
        ],
      ),
      H2Text('形状'),
      NormalText('4个形状：普通，边框，圆角，半圆'),
      CodeArea(
        widgets: [
          STTag(text: '标签'),
          STTag(
            text: '标签',
            shape: STTagShape.outline,
          ),
          STTag(
            text: '标签',
            shape: STTagShape.roundRect,
          ),
          STTag(
            text: '标签',
            shape: STTagShape.rightRoundRect,
          ),
        ],
        texts: [
          CodeText("STTag(text: '标签');"),
          CodeText("STTag(text: '标签', shape: STTagShape.outline,);"),
          CodeText("STTag(text: '标签', shape: STTagShape.roundRect,);"),
          CodeText("STTag(text: '标签', shape: STTagShape.rightRoundRect,);"),
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
