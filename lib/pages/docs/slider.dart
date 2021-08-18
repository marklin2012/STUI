import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 0.5;
  double _sliderValueVertical = 0.5;
  double _verValue = 0.5;
  RangeValues _sliderRangeValue = RangeValues(0.2, 0.5);

  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Slider 滑块',
      ),
      NormalText(
        '滑动型输入器，展示当前值和可选范围。',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('基本用法'),
      CodeArea(
        widgets: [
          STSlider(
            value: _sliderValue,
            // inactiveColor: Colors.white,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
        ],
        texts: [
          CodeText('''
STSlider(
  value: _sliderValue,
  onChanged: (value) {
    setState(() {
      _sliderValue = value;
    });
  },
),
          '''),
        ],
      ),
      H2Text('范围可拖拽'),
      CodeArea(
        widgets: [
          STSlider(
            mainSize: 200,
            rangeValues: _sliderRangeValue,
            onChangedRange: (value) {
              setState(() {
                _sliderRangeValue = value;
              });
            },
          ),
        ],
        texts: [
          CodeText('''
STSlider(
  mainSize: 200,
  rangeValues: _sliderRangeValue,
  onChangedRange: (value) {
    setState(() {
      _sliderRangeValue = value;
    });
  },
);
          '''),
        ],
      ),
      // H2Text('竖向'),
      // CodeArea(
      //   widgets: [
      //     STSlider(
      //       axis: Axis.vertical,
      //       value: _verValue,
      //       mainSize: 200,
      //       onChanged: (value) {
      //         setState(() {
      //           _verValue = value;
      //         });
      //       },
      //     ),
      //   ],
      //   texts: [],
      // ),
      H2Text('API'),
      DataTable(
          columnSpacing: 48,
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Color(0x35DFE2E7)),
          dataRowHeight: 66,
          columns: [
            DataColumn(label: Text('属性')),
            DataColumn(label: Container(width: 150, child: Text('说明'))),
            DataColumn(label: Text('类型')),
            DataColumn(label: Text('默认值')),
            DataColumn(label: Container(width: 40, child: Text('版本'))),
          ],
          rows: [
            DataRow(selected: false, cells: [
              DataCell(Text('axis')),
              DataCell(Text('方向')),
              DataCell(Text('Axis')),
              DataCell(Text('Axis.horizontal')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('mainSize')),
              DataCell(Text('主方向的宽高(方向为水平为宽，垂直为高)')),
              DataCell(Text('double')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('activeSize')),
              DataCell(Text('背景线条的宽高')),
              DataCell(Text('double')),
              DataCell(Text('2.0')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('showTip')),
              DataCell(Text('是否显示提示')),
              DataCell(Text('bool')),
              DataCell(Text('true')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('tipTextStyle')),
              DataCell(Text('提示字体的样式')),
              DataCell(Text('TextStyle')),
              DataCell(Text('TextStyle(color: Colors.white, fontSize: 16.0)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('activeColor')),
              DataCell(Text('已选的颜色')),
              DataCell(Text('Color')),
              DataCell(Text('Color(0xFF095BF9)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('inactiveColor')),
              DataCell(Text('未选的颜色')),
              DataCell(Text('Color')),
              DataCell(Text('Color(0xFFDCE8FF)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('dotColor')),
              DataCell(Text('滑块的颜色')),
              DataCell(Text('Color')),
              DataCell(Text('Color(0xFF095BF9)')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('dotSize')),
              DataCell(Text('滑块的大小')),
              DataCell(Text('double')),
              DataCell(Text('18.0')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('minValue')),
              DataCell(Text('显示的最小值')),
              DataCell(Text('double')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('maxValue')),
              DataCell(Text('显示的最大值')),
              DataCell(Text('double')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('textStyle')),
              DataCell(Text('显示值的文本样式')),
              DataCell(Text('TextStyle')),
              DataCell(
                  Text('TextStyle(color: Color(0xFF000000), fontSize: 14.0)')),
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
              DataCell(Text('value')),
              DataCell(Text('单个滑块')),
              DataCell(Text('double')),
              DataCell(Text('0')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('rangeValues')),
              DataCell(Text('两个滑块')),
              DataCell(Text('RangeValues')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onChanged')),
              DataCell(Text('单个滑块的回调')),
              DataCell(Text('ValueChanged\<double\>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onChangedRange')),
              DataCell(Text('两个滑块的回调')),
              DataCell(Text('ValueChanged\<RangeValues\>')),
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
