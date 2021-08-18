import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:saturn/st_cascader/st_cascader.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class CascaderPage extends StatefulWidget {
  @override
  _CascaderPageState createState() => _CascaderPageState();
}

class _CascaderPageState extends State<CascaderPage> {
  final _items = [
    STCascaderItem(value: '电视', key: 'TV', items: [
      STCascaderItem(value: '闭路', key: 'BL', items: [
        STCascaderItem(value: 'CCTV'),
        STCascaderItem(value: '湖南卫视'),
        STCascaderItem(value: '江苏卫视'),
        STCascaderItem(value: '广东卫视'),
      ]),
      STCascaderItem(value: '网络', key: 'WF'),
    ]),
    STCascaderItem(value: '体育', key: 'Sports', items: [
      STCascaderItem(value: '篮球', key: 'basketball', items: [
        STCascaderItem(value: '姚明'),
        STCascaderItem(value: '王治郅'),
        STCascaderItem(value: '刘伟'),
        STCascaderItem(value: '孙悦'),
        STCascaderItem(value: '王仕鹏')
      ]),
      STCascaderItem(value: '足球', key: 'football', items: [
        STCascaderItem(value: 'C罗'),
        STCascaderItem(value: '梅西'),
      ]),
    ]),
    STCascaderItem(value: '明星', key: 'Star'),
  ];
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Cascader 级联器',
      ),
      NormalText(
        '级联选择框。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基本使用'),
      CodeArea(
        widgets: [
          STCascader(
            items: _items,
            onChanged: (List<String> keys) {
              debugPrint('$keys');
            },
          )
        ],
        texts: [],
      ),
      H2Text('STCascader API'),
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
              DataCell(Text('verticalOffset')),
              DataCell(Text('垂直方向的偏移量')),
              DataCell(Text('double')),
              DataCell(Text('8.0')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('initValue')),
              DataCell(Text('初始值')),
              DataCell(Text('List\<String\>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onChanged')),
              DataCell(Text('回调的值')),
              DataCell(Text('ValueChanged\<List\<String\>\>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('items')),
              DataCell(Text('数据集')),
              DataCell(Text('List\<STCascaderItem\>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
          ]),
      SizedBox(
        height: 32,
      ),
      H2Text('STCascaderItem API'),
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
              DataCell(Text('key')),
              DataCell(Text('映射值')),
              DataCell(Text('String')),
              DataCell(Text('为nil时使用value代替')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('value')),
              DataCell(Text('实际值')),
              DataCell(Text('String')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('items')),
              DataCell(Text('子数据集')),
              DataCell(Text('List\<STCascaderItem\>')),
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
