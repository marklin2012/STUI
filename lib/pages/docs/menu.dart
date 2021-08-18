import 'package:flutter/material.dart';
import 'package:saturn/st_icons/st_icons.dart';
import 'package:saturn/st_menu/include.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Menu 菜单',
      ),
      NormalText(
        '为页面和功能提供导航的菜单列表。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基本用法'),
      CodeArea(
        widgets: [
          STMenu(
            onTap: (index) {
              print('切换到第$index个内容');
            },
            items: [
              STMenuDataItem(title: '文本1'),
              STMenuDataItem(title: '文本2'),
              STMenuDataItem(title: '文本3'),
              STMenuDataItem(title: '文本4'),
              STMenuDataItem(title: '文本5'),
            ],
          ),
        ],
        texts: [
          CodeText('''
STMenu(
  onTap: (index) {
    print('切换到第\$index个内容');
  },
  items: [
    STMenuDataItem(title: '文本1'),
    STMenuDataItem(title: '文本2'),
    STMenuDataItem(title: '文本3'),
    STMenuDataItem(title: '文本4'),
    STMenuDataItem(title: '文本5'),
  ],
),
          ''')
        ],
      ),
      H2Text('超长菜单'),
      CodeArea(
        widgets: [
          Container(
            width: 375,
            child: STMenu(
              onTap: (index) {
                print('切换到第$index个内容');
              },
              items: [
                STMenuDataItem(title: '文本1'),
                STMenuDataItem(title: '文本2'),
                STMenuDataItem(title: '文本3'),
                STMenuDataItem(title: '文本4'),
                STMenuDataItem(title: '文本5'),
                STMenuDataItem(title: '文本6'),
                STMenuDataItem(title: '文本7'),
                STMenuDataItem(title: '文本8'),
              ],
            ),
          ),
        ],
        texts: [
          CodeText('''
STMenu(
    onTap: (index) {
      print('切换到第\$index个内容');
    },
    items: [
      STMenuDataItem(title: '文本1'),
      STMenuDataItem(title: '文本2'),
      STMenuDataItem(title: '文本3'),
      STMenuDataItem(title: '文本4'),
      STMenuDataItem(title: '文本5'),
      STMenuDataItem(title: '文本6'),
      STMenuDataItem(title: '文本7'),
      STMenuDataItem(title: '文本8'),
    ],
  ),
          '''),
        ],
      ),
      H2Text('下划线样式'),
      CodeArea(
        widgets: [
          STMenu(
            type: STMenuType.underline,
            onTap: (index) {
              print('切换到第$index个内容');
            },
            items: [
              STMenuDataItem(title: '文本1'),
              STMenuDataItem(title: '文本2'),
              STMenuDataItem(title: '文本3'),
              STMenuDataItem(title: '文本4'),
              STMenuDataItem(title: '文本5'),
            ],
          ),
        ],
        texts: [
          CodeText('''
STMenu(
  type: STMenuType.underline,
  onTap: (index) {
    print('切换到第\$index个内容');
  },
  items: [
    STMenuDataItem(title: '文本1'),
    STMenuDataItem(title: '文本2'),
    STMenuDataItem(title: '文本3'),
    STMenuDataItem(title: '文本4'),
    STMenuDataItem(title: '文本5'),
  ],
),
          ''')
        ],
      ),
      H2Text('分段样式'),
      CodeArea(
        widgets: [
          STMenu(
            type: STMenuType.section,
            onTap: (index) {
              print('切换到第$index个内容');
            },
            items: [
              STMenuDataItem(title: '文本1'),
              STMenuDataItem(title: '文本2'),
              STMenuDataItem(title: '文本3'),
              STMenuDataItem(title: '文本4'),
              STMenuDataItem(title: '文本5'),
            ],
          ),
        ],
        texts: [
          CodeText('''
STMenu(
  type: STMenuType.section,
  onTap: (index) {
    print('切换到第\$index个内容');
  },
  items: [
    STMenuDataItem(title: '文本1'),
    STMenuDataItem(title: '文本2'),
    STMenuDataItem(title: '文本3'),
    STMenuDataItem(title: '文本4'),
    STMenuDataItem(title: '文本5'),
  ],
),
          '''),
        ],
      ),
      H2Text('标签样式'),
      CodeArea(
        widgets: [
          STMenu(
            type: STMenuType.label,
            onTap: (index) {
              print('切换到第$index个内容');
            },
            items: [
              STMenuDataItem(title: '文本1', icon: Icons.home),
              STMenuDataItem(title: '文本2', icon: Icons.favorite),
              STMenuDataItem(title: '文本3', icon: Icons.history),
              STMenuDataItem(title: '文本4', icon: STIcons.commonly_wallet),
              STMenuDataItem(title: '文本5', icon: Icons.settings),
            ],
          ),
        ],
        texts: [
          CodeText('''
STMenu(
  type: STMenuType.label,
  onTap: (index) {
    print('切换到第\$index个内容');
  },
  items: [
    STMenuDataItem(title: '文本1', icon: Icons.home),
    STMenuDataItem(title: '文本2', icon: Icons.favorite),
    STMenuDataItem(title: '文本3', icon: Icons.history),
    STMenuDataItem(title: '文本4', icon: STIcons.commonly_wallet),
    STMenuDataItem(title: '文本5', icon: Icons.settings),
  ],
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
              DataCell(Text('type')),
              DataCell(Text('菜单类型')),
              DataCell(Text('STMenuType')),
              DataCell(Text('STMenuType.button')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('items')),
              DataCell(Text('菜单项')),
              DataCell(Text('List<STMenuDataItem>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onTap')),
              DataCell(Text('点击菜单项切换事件')),
              DataCell(Text('Function(int)')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
          ]),
      SizedBox(
        height: 32,
      ),
      H2Text('STMenuDataItem API'),
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
              DataCell(Text('菜单项图标')),
              DataCell(Text('IconData')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('title')),
              DataCell(Text('菜单项标题')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('disable')),
              DataCell(Text('是否禁用')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
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
