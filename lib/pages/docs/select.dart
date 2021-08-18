import 'package:flutter/material.dart';
import 'package:saturn/st_select/include.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class SelectPage extends StatefulWidget {
  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  STSelectMixItem _initMix = STSelectMixItem(title: '混合型0', key: '0');
  STSelectMixItem _initMix1 = STSelectMixItem(title: '混合型0', key: '0');
  STSelectMixItem _initMix2 =
      STSelectMixItem(title: '混合型0', key: '0', icon: Icons.book);
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Select 图标',
      ),
      NormalText(
        '下拉选择器。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基本使用'),
      CodeArea(
        widgets: [
          STSelect(
            types: STSelectTypes.mix,
            initMixValue: _initMix,
            mixListValues: [
              STSelectMixItem(title: '混合型0', key: '0'),
              STSelectMixItem(title: '混合型1', key: '1'),
              STSelectMixItem(title: '混合型2', key: '2'),
              STSelectMixItem(title: '混合型3', key: '3'),
              STSelectMixItem(title: '混合型4', key: '4', disabled: true),
              STSelectMixItem(title: '混合型5', key: '5'),
            ],
            onChangedMixValue: (STSelectMixItem value) {
              _initMix = value;
              setState(() {});
            },
          ),
        ],
        texts: [
          CodeText('''
STSelect(
  types: STSelectTypes.mix,
  initMixValue: _initMix,
  mixListValues: [
    STSelectMixItem(title: '混合型0', key: '0'),
    STSelectMixItem(title: '混合型1', key: '1'),
    STSelectMixItem(title: '混合型2', key: '2'),
    STSelectMixItem(title: '混合型3', key: '3'),
    STSelectMixItem(title: '混合型4', key: '4', disabled: true),
    STSelectMixItem(title: '混合型5', key: '5'),
  ],
  onChangedMixValue: (STSelectMixItem value) {
    _initMix = value;
    setState(() {});
  },
);
          '''),
        ],
      ),
      H2Text('含勾选样式'),
      CodeArea(
        widgets: [
          STSelect(
            types: STSelectTypes.mix,
            isConCheck: true,
            initMixValue: _initMix1,
            mixListValues: [
              STSelectMixItem(title: '混合型0', key: '0'),
              STSelectMixItem(title: '混合型1', key: '1'),
              STSelectMixItem(title: '混合型2', key: '2'),
              STSelectMixItem(title: '混合型3', key: '3'),
              STSelectMixItem(title: '混合型4', key: '4', disabled: true),
              STSelectMixItem(title: '混合型5', key: '5'),
            ],
            onChangedMixValue: (STSelectMixItem value) {
              _initMix1 = value;
              setState(() {});
            },
          ),
        ],
        texts: [
          CodeText('''
STSelect(
  types: STSelectTypes.mix,
  isConCheck: true,
  initMixValue: _initMix1,
  mixListValues: [
    STSelectMixItem(title: '混合型0', key: '0'),
    STSelectMixItem(title: '混合型1', key: '1'),
    STSelectMixItem(title: '混合型2', key: '2'),
    STSelectMixItem(title: '混合型3', key: '3'),
    STSelectMixItem(title: '混合型4', key: '4', disabled: true),
    STSelectMixItem(title: '混合型5', key: '5'),
  ],
  onChangedMixValue: (STSelectMixItem value) {
    _initMix1 = value;
    setState(() {});
  },
);
          '''),
        ],
      ),
      H2Text('含图标样式'),
      CodeArea(
        widgets: [
          STSelect(
            types: STSelectTypes.mix,
            initMixValue: _initMix2,
            mixListValues: [
              STSelectMixItem(title: '混合型0', key: '0', icon: Icons.book),
              STSelectMixItem(
                  title: '混合型1', key: '1', icon: Icons.star_border_outlined),
              STSelectMixItem(title: '混合型2', key: '2', icon: Icons.menu),
              STSelectMixItem(title: '混合型3', key: '3', icon: Icons.ac_unit),
              STSelectMixItem(
                  title: '混合型4', key: '4', disabled: true, icon: Icons.cached),
              STSelectMixItem(title: '混合型5', key: '5', icon: Icons.dangerous),
            ],
            onChangedMixValue: (STSelectMixItem value) {
              _initMix2 = value;
              setState(() {});
            },
          ),
        ],
        texts: [
          CodeText('''
STSelect(
  types: STSelectTypes.mix,
  initMixValue: _initMix2,
  mixListValues: [
    STSelectMixItem(title: '混合型0', key: '0', icon: Icons.book),
    STSelectMixItem(
        title: '混合型1', key: '1', icon: Icons.star_border_outlined),
    STSelectMixItem(title: '混合型2', key: '2', icon: Icons.menu),
    STSelectMixItem(title: '混合型3', key: '3', icon: Icons.ac_unit),
    STSelectMixItem(
        title: '混合型4', key: '4', disabled: true, icon: Icons.cached),
    STSelectMixItem(title: '混合型5', key: '5', icon: Icons.dangerous),
  ],
  onChangedMixValue: (STSelectMixItem value) {
    _initMix2 = value;
    setState(() {});
  },
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
              DataCell(Text('types')),
              DataCell(Text('自定义样式(mix、texts)')),
              DataCell(Text('STSelectTypes')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('margin')),
              DataCell(Text('混合样式的外边距')),
              DataCell(Text('EdgeInsets')),
              DataCell(Text('''
dgeInsets.symmetric(
  horizontal: 16.0)              
              ''')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('initMixValue')),
              DataCell(Text('混合样式的初始值')),
              DataCell(Text('STSelectMixItem')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('mixListValues')),
              DataCell(Text('混合样式的数据集')),
              DataCell(Text('List<STSelectMixItem>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onChangedMixValue')),
              DataCell(Text('混合样式选中后的回调')),
              DataCell(Text('Function(STSelectMixItem)')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('child')),
              DataCell(Text('文本样式的触发组件')),
              DataCell(Text('Widget')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('title')),
              DataCell(Text('文本样式的标题')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('initTextsValue')),
              DataCell(Text('文本样式的初始值')),
              DataCell(Text('List\<String\>')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('textsListValues')),
              DataCell(Text('文本样式的数据集，子List对应行数')),
              DataCell(Text('List\<List\<String\>\>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onChangedTextsValue')),
              DataCell(Text('文本样式选中后的回调，按下标对应行选中的结果')),
              DataCell(Text('Function(List\<String\>)')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('initUnits')),
              DataCell(Text('文本样式的单位集合')),
              DataCell(Text('List<String>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('looping')),
              DataCell(Text('文本样式的数据是否循环')),
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
