import 'package:flutter/material.dart';
import 'package:saturn/st_badge/st_badge.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class BadgePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Badge 徽标数',
      ),
      NormalText(
        '''
图标右上角的圆形徽标数字。
一般出现在通知图标或头像的右上角，用于显示需要处理的消息条数，通过醒目视觉形式吸引用户处理。
        ''',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基本'),
      NormalText('简单的徽章展示'),
      CodeArea(
        widgets: [
          STBadge(
            value: '9',
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
            ),
          ),
          STBadge(
            value: '0',
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
            ),
          ),
          STBadge(
            value: 'New',
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
            ),
          ),
        ],
        texts: [
          CodeText(
              "STBadge(value: '9',child: Container(width: 40,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.grey[300],),),);"),
          CodeText(
              "STBadge(value: '0',child: Container(width: 40,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.grey[300],),),);"),
          CodeText(
              "STBadge(value: 'New',child: Container(width: 40,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.grey[300],),),);"),
        ],
      ),
      H2Text('独立使用'),
      NormalText('不包裹任何元素即是独立使用，可自定样式展现。'),
      CodeArea(
        widgets: [
          STBadge(dot: true),
          STBadge(value: '8'),
          STBadge(value: '100'),
          STBadge(
            value: '9',
            backgroundColor: Colors.green,
          ),
        ],
        texts: [
          CodeText("STBadge(value: '9', backgroundColor: Colors.green,);"),
          CodeText("STBadge(value: '8');"),
          CodeText("STBadge(value: '100');"),
          CodeText("STBadge(value: '9', backgroundColor: Colors.green,);"),
        ],
      ),
      H2Text('最大值'),
      NormalText('可定义最大值'),
      CodeArea(
        widgets: [
          STBadge(value: '99'),
          STBadge(value: '100'),
          STBadge(
            value: '20',
            maxNumber: 10,
          ),
          STBadge(
            value: '1010',
            maxNumber: 1000,
          ),
        ],
        texts: [
          CodeText("STBadge(value:'99');"),
          CodeText("STBadge(value:'100');"),
          CodeText("STBadge(value:'20', maxNumber: 10,);"),
          CodeText("STBadge(value:'1010', maxNumber: 1000,);"),
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
              DataCell(Text('child')),
              DataCell(Text('与其他 Widget 配合使用')),
              DataCell(Text('Widget')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('value')),
              DataCell(Text('真实的数值')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('maxNumber')),
              DataCell(Text('自定义的最大值')),
              DataCell(Text('int')),
              DataCell(Text('99')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('backgroundColor')),
              DataCell(Text('自定义的颜色')),
              DataCell(Text('Color')),
              DataCell(Text('Color(0xFFFF4141)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('dot')),
              DataCell(Text('是否仅显示小红点')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('position')),
              DataCell(Text('显示在的位置')),
              DataCell(Text('STBadgePosition')),
              DataCell(Text('STBadgePosition.topEnd()')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('padding')),
              DataCell(Text('内嵌边距')),
              DataCell(Text('EdgeInsets')),
              DataCell(Text('EdgeInsets.fromLTRB(3, 1, 3, 1)')),
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
