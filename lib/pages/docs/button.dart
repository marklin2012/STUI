import 'package:flutter/material.dart';
import 'package:saturn/st_button/st_button.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class ButtonPage extends StatelessWidget {
  test() {
    print('sssss');
  }

  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Button 按钮',
      ),
      NormalText(
        '按钮是引导用户点击操作，具有明确的操作目的',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      NormalText('通过背景、边框、颜色、弧度、还有一些额外的功能可以自定义按钮样式，每个按钮样式都有自己的语义目的'),
      SizedBox(
        height: 28,
      ),
      H2Text('类型'),
      NormalText('支持实心按钮、描边按钮、文本按钮、图标按钮的4种按钮类型'),
      CodeArea(
        widgets: [
          STButton(text: 'STButton'),
          STButton(text: 'STButton', type: STButtonType.outline),
          STButton(text: 'STButton', type: STButtonType.text),
          STButton(
            text: 'STButton',
            icon: Icon(
              Icons.star_border_outlined,
              color: Colors.white,
            ),
          ),
          STButton.icon(
            icon: Icon(
              Icons.star_border_outlined,
              color: Colors.white,
            ),
            text: 'STButton',
          ),
        ],
        texts: [
          CodeText("STButton(text: 'STButton');"),
          CodeText("STButton(text: 'STButton', type: STButtonType.outline);"),
          CodeText("STButton(text: 'STButton', type: STButtonType.text);"),
          CodeText(
              "STButton(text: 'STButton', icon: Icon(Icons.star_border_outlined, color: Colors.white,),);"),
          CodeText(
              "STButton.icon(icon: Icon(Icons.star_border_outlined, color: Colors.white,), text: 'STButton',);"),
        ],
      ),
      H2Text('尺寸'),
      NormalText('按钮尺寸应当满足在不同场景下选择合适的尺寸，支持常规按、小按钮 2 种按钮尺寸'),
      CodeArea(widgets: [
        STButton(
          text: 'Small',
          size: STButtonSize.small,
        ),
        STButton(text: 'Big'),
        STButton.icon(
          icon: Icon(Icons.star_border_outlined, color: Colors.white),
          size: STButtonSize.small,
        ),
        STButton.icon(
          icon: Icon(
            Icons.star_border_outlined,
            color: Colors.white,
          ),
        ),
      ], texts: [
        CodeText("STButton(text: 'Small',size: STButtonSize.small,);"),
        CodeText("STButton(text: 'Big');"),
        CodeText(
            "STButton.icon(icon: Icon(Icons.star_border_outlined, color: Colors.white), size: STButtonSize.small,);"),
        CodeText(
            "STButton.icon(icon: Icon(Icons.star_border_outlined, color: Colors.white));"),
      ]),
      H2Text('状态'),
      NormalText('支持默认状态、加载状态、禁用状态、成功状态、危险状态 5 种按钮状态'),
      CodeArea(widgets: [
        STButton(
          text: '默认状态',
          onTap: test,
        ),
        STButton(
          text: '加载状态',
          loading: true,
        ),
        STButton(
          text: '禁用状态',
          disabled: true,
        ),
        STButton(
          text: '成功状态',
          type: STButtonType.success,
        ),
        STButton(
          text: '危险状态',
          type: STButtonType.danger,
        ),
      ], texts: [
        CodeText("STButton(text: '默认状态');"),
        CodeText("STButton(text: '加载状态', loading: true,);"),
        CodeText("STButton(text: '禁用状态', disabled: true,);"),
        CodeText("STButton(text: '成功状态', type: STButtonType.success,);"),
        CodeText("STButton(text: '危险状态', type: STButtonType.danger,);"),
      ]),
      H2Text('API'),
      DataTable(
          columnSpacing: 48,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
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
