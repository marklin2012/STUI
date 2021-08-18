import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class ActionsheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'ActionSheet 上拉菜单',
      ),
      NormalText(
        '上拉弹出选项菜单。',
      ),
      H2Text('代码演示'),
      H2Text('基本用法'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STActionSheet.show(
                  context: context,
                  icon: Icon(Icons.info_outline),
                  title: "请描述标题",
                  message: "描述说明信息",
                  isOptionAligmentCenter: true,
                  isSingleSelect: true,
                  options: [
                    STActionSheetOption(
                      title: "选项 1",
                    ),
                    STActionSheetOption(
                      title: "选项 2",
                    ),
                    STActionSheetOption(
                      title: "选项 3",
                    ),
                    STActionSheetOption(
                      title: "选项 4",
                    ),
                  ]);
            },
            child: Text('基本用法'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
  onPressed: () {
    STActionSheet.show(
        context: context,
        icon: Icon(Icons.info_outline),
        title: "请描述标题",
        message: "描述说明信息",
        isOptionAligmentCenter: true,
        isSingleSelect: true,
        options: [
          STActionSheetOption(
            title: "选项 1",
          ),
          STActionSheetOption(
            title: "选项 2",
          ),
          STActionSheetOption(
            title: "选项 3",
          ),
          STActionSheetOption(
            title: "选项 4",
          ),
        ]);
  },
  child: Text('基本用法'),
);
          '''),
        ],
      ),
      H2Text('带图标'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STActionSheet.show(
                  context: context,
                  title: "请描述标题",
                  isOptionAligmentCenter: true,
                  isSingleSelect: true,
                  options: [
                    STActionSheetOption(
                      icon: Icon(Icons.history),
                      title: "选项 1",
                    ),
                    STActionSheetOption(
                      icon: Icon(Icons.history),
                      title: "选项 2",
                    ),
                    STActionSheetOption(
                      icon: Icon(Icons.history),
                      title: "选项 3",
                    ),
                    STActionSheetOption(
                      icon: Icon(Icons.history),
                      title: "选项 4",
                    ),
                  ]);
            },
            child: Text('带图标'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
  onPressed: () {
    STActionSheet.show(
        context: context,
        title: "请描述标题",
        isOptionAligmentCenter: true,
        isSingleSelect: true,
        options: [
          STActionSheetOption(
            icon: Icon(Icons.history),
            title: "选项 1",
          ),
          STActionSheetOption(
            icon: Icon(Icons.history),
            title: "选项 2",
          ),
          STActionSheetOption(
            icon: Icon(Icons.history),
            title: "选项 3",
          ),
          STActionSheetOption(
            icon: Icon(Icons.history),
            title: "选项 4",
          ),
        ]);
  },
  child: Text('带图标'),
);
          '''),
        ],
      ),
      H2Text('辅助性文字说明'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STActionSheet.show(
                  context: context,
                  title: "请描述标题",
                  isOptionAligmentCenter: true,
                  isSingleSelect: true,
                  options: [
                    STActionSheetOption(
                      title: "选项 1",
                      message: "辅助性说明",
                    ),
                    STActionSheetOption(
                      title: "选项 2",
                      message: "辅助性说明",
                    ),
                    STActionSheetOption(
                      title: "选项 3",
                      message: "辅助性说明",
                    ),
                    STActionSheetOption(
                      title: "选项 4",
                      message: "辅助性说明",
                    ),
                  ]);
            },
            child: Text('辅助性说明'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
  onPressed: () {
    STActionSheet.show(
        context: context,
        title: "请描述标题",
        isOptionAligmentCenter: true,
        isSingleSelect: true,
        options: [
          STActionSheetOption(
            title: "选项 1",
            message: "辅助性说明",
          ),
          STActionSheetOption(
            title: "选项 2",
            message: "辅助性说明",
          ),
          STActionSheetOption(
            title: "选项 3",
            message: "辅助性说明",
          ),
          STActionSheetOption(
            title: "选项 4",
            message: "辅助性说明",
          ),
        ]);
  },
  child: Text('辅助性说明'),
);
          '''),
        ],
      ),
      H2Text('多项选择'),
      CodeArea(
        widgets: [
          TextButton(
            onPressed: () {
              STActionSheet.show(
                context: context,
                message: "描述说明信息",
                options: [
                  STActionSheetOption(
                    title: "选项 1",
                  ),
                  STActionSheetOption(
                    title: "选项 2",
                  ),
                  STActionSheetOption(
                    title: "选项 3",
                  ),
                  STActionSheetOption(
                    title: "选项 4",
                  ),
                ],
              );
            },
            child: Text('多项选择'),
          ),
        ],
        texts: [
          CodeText('''
TextButton(
  onPressed: () {
    STActionSheet.show(
      context: context,
      message: "描述说明信息",
      options: [
        STActionSheetOption(
          title: "选项 1",
        ),
        STActionSheetOption(
          title: "选项 2",
        ),
        STActionSheetOption(
          title: "选项 3",
        ),
        STActionSheetOption(
          title: "选项 4",
        ),
      ],
    );
  },
  child: Text('多项选择'),
);
          '''),
        ],
      ),

      // H2Text('横向列表'),
      // CodeArea(
      //   widgets: [
      //     TextButton(
      //       onPressed: () {
      //         STActionSheet.show(
      //             context: context,
      //             icon: Icon(Icons.info_outline),
      //             title: "请描述标题",
      //             message: "描述说明信息",
      //             directionType: STActionSheetDirectionType.horizontal,
      //             options: [
      //               STActionSheetOption(
      //                 title: "选项 1",
      //               ),
      //               STActionSheetOption(
      //                 title: "选项 2",
      //               ),
      //               STActionSheetOption(
      //                 title: "选项 3",
      //               ),
      //               STActionSheetOption(
      //                 title: "选项 4",
      //               ),
      //             ]);
      //       },
      //       child: Text('单选'),
      //     ),
      //   ],
      //   texts: [],
      // ),
      H2Text('API'),
      DataTable(
          columnSpacing: 48,
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Color(0x35DFE2E7)),
          columns: [
            DataColumn(label: Text('属性')),
            DataColumn(label: Container(width: 120, child: Text('说明'))),
            DataColumn(label: Container(width: 60, child: Text('类型'))),
            DataColumn(label: Container(width: 60, child: Text('默认值'))),
            DataColumn(label: Container(width: 40, child: Text('版本'))),
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
              DataCell(Text('确认')),
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
              DataCell(Text('directionType')),
              DataCell(Text('选项排列方式，垂直、多行水平')),
              DataCell(Text('STActionSheetDirectionType')),
              DataCell(Text('vertical')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('closable')),
              DataCell(Text('点击遮罩是否可关闭')),
              DataCell(Text('bool')),
              DataCell(Text('true')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('canSelect')),
              DataCell(Text('选项是否可选择')),
              DataCell(Text('bool')),
              DataCell(Text('true')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('selectedColor')),
              DataCell(Text('被选中时颜色')),
              DataCell(Text('Color')),
              DataCell(Text('Colors.black')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('showSelectColor')),
              DataCell(Text('被选中时是否显示选中颜色')),
              DataCell(Text('bool')),
              DataCell(Text('true')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('isSingleSelect')),
              DataCell(Text('是否是单选')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('isOptionAligmentCenter')),
              DataCell(Text('选项是否居中对齐')),
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
