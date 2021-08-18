import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Card 卡片',
      ),
      NormalText(
        '最基础的卡片容器，可承载文字、列表、图片、段落，常用于后台概览页面。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基础样式'),
      NormalText('包含标题、内容、操作区域。'),
      CodeArea(
        widgets: [
          STCard(
            type: STCardType.basic,
            title: '卡片列表',
            subTitle: '操作按钮',
            opration: TextButton(onPressed: () {}, child: Text('操作按钮')),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('列表内容1'),
                  SizedBox(height: 10),
                  Text('列表内容2'),
                  SizedBox(height: 10),
                  Text('列表内容3'),
                  SizedBox(height: 10),
                  Text('列表内容4'),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
        texts: [
          CodeText('''
          STCard(
            type: STCardType.basic,
            title: '卡片列表',
            subTitle: '操作按钮',
            opration: TextButton(onPressed: () {}, child: Text('操作按钮')),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('列表内容1'),
                  SizedBox(height: 10),
                  Text('列表内容2'),
                  SizedBox(height: 10),
                  Text('列表内容3'),
                  SizedBox(height: 10),
                  Text('列表内容4'),
                  SizedBox(height: 10),
                ],
              ),
            ),
          );
          '''),
        ],
      ),
      H2Text('简单样式'),
      NormalText('只包含内容区域。'),
      CodeArea(
        widgets: [
          STCard(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('列表内容1'),
                  SizedBox(height: 10),
                  Text('列表内容2'),
                  SizedBox(height: 10),
                  Text('列表内容3'),
                  SizedBox(height: 10),
                  Text('列表内容4'),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
        texts: [
          CodeText('''
          STCard(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('列表内容1'),
                  SizedBox(height: 10),
                  Text('列表内容2'),
                  SizedBox(height: 10),
                  Text('列表内容3'),
                  SizedBox(height: 10),
                  Text('列表内容4'),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          '''),
        ],
      ),
      H2Text('图片样式'),
      NormalText('包含图片内容。'),
      CodeArea(
        widgets: [
          STCard(
            type: STCardType.icon,
            opration: TextButton(onPressed: () {}, child: Text('操作按钮')),
          ),
        ],
        texts: [
          CodeText('''
          STCard(
            type: STCardType.icon,
            opration: TextButton(onPressed: () {}, child: Text('操作按钮')),
          );
          '''),
        ],
      ),
      H2Text('阴影样式'),
      NormalText('带阴影边框的卡片。'),
      CodeArea(
        widgets: [
          STCard(
            type: STCardType.easy,
            shadowed: true,
            opration: TextButton(onPressed: () {}, child: Text('操作按钮')),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('列表内容1'),
                  SizedBox(height: 10),
                  Text('列表内容2'),
                  SizedBox(height: 10),
                  Text('列表内容3'),
                  SizedBox(height: 10),
                  Text('列表内容4'),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
        texts: [
          CodeText('''
          STCard(
            type: STCardType.easy,
            shadowed: true,
            opration: TextButton(onPressed: () {}, child: Text('操作按钮')),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('列表内容1'),
                  SizedBox(height: 10),
                  Text('列表内容2'),
                  SizedBox(height: 10),
                  Text('列表内容3'),
                  SizedBox(height: 10),
                  Text('列表内容4'),
                  SizedBox(height: 10),
                ],
              ),
            ),
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
          dataRowHeight: 66,
          rows: [
            DataRow(selected: false, cells: [
              DataCell(Text('type')),
              DataCell(Text('自定义类型(basic、easy、icon)')),
              DataCell(Text('STCardType')),
              DataCell(Text('STCardType.easy')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('margin')),
              DataCell(Text('外边距')),
              DataCell(Text('EdgeInsets')),
              DataCell(Text('EdgeInsets.symmetric(horizontal: 16.0)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('shadowed')),
              DataCell(Text('是否有阴影')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('backgroundColor')),
              DataCell(Text('背景颜色')),
              DataCell(Text('Color')),
              DataCell(Text('Color(0xFFFAFCFF)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('child')),
              DataCell(Text('内部的子widget')),
              DataCell(Text('Widget')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('title')),
              DataCell(Text('主标题')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('subTitle')),
              DataCell(Text('子标题')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('titleStyle')),
              DataCell(Text('主标题样式')),
              DataCell(Text('TextStyle')),
              DataCell(Text(
                  'TextStyle(fontSize: 18.0, color: Color(0xFF000000), fontWeight: FontWeight.w500)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('subTitleStyle')),
              DataCell(Text('子标题样式')),
              DataCell(Text('TextStyle')),
              DataCell(
                  Text('TextStyle(fontSize: 16.0, color: Color(0xFF000000))')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('opration')),
              DataCell(Text('触发事件操作的Widget')),
              DataCell(Text('Widget')),
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
