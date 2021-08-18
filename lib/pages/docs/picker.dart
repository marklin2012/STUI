import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/code_area.dart';
import 'package:stui/components/code_text.dart';
import 'package:stui/components/h1_text.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';

class PickerPage extends StatefulWidget {
  @override
  _PickerPageState createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  DateTime _selectedTime = DateTime.now();
  Duration _duration = Duration(hours: 2, minutes: 20, seconds: 30);
  String _datePickerStr = '选择日期';
  String _timePickerStr = '选择时间';
  @override
  Widget build(BuildContext context) {
    var children = [
      H1Text(
        'Picker 时间/日期选择器',
      ),
      NormalText(
        '语义化的矢量图形',
      ),
      SizedBox(
        height: 28,
      ),
      H2Text('代码演示'),
      H2Text('日期选择器'),
      CodeArea(
        widgets: [
          STDatePicker(
            minimumYear: 2012,
            maximunYear: 2025,
            initDateTime: _selectedTime,
            onDateTimeChanged: (value) {
              setState(() {
                _selectedTime = value;
                _datePickerStr = value.toString();
              });
            },
            child: Text(_datePickerStr),
          ),
        ],
        texts: [
          CodeText('''
            STDatePicker(
            minimumYear: 2012,
            maximunYear: 2025,
            initDateTime: _selectedTime,
            onDateTimeChanged: (value) {
              setState(() {
                _selectedTime = value;
                _datePickerStr = value.toString();
              });
            },
            child: Text(_datePickerStr),
          ),
          '''),
        ],
      ),
      H2Text('时间选择器'),
      CodeArea(
        widgets: [
          STTimePicker(
            child: Text(_timePickerStr),
            initDuration: _duration,
            onTimerDurationChanged: (value) {
              setState(() {
                _duration = value;
                _timePickerStr = value.toString();
              });
            },
          ),
        ],
        texts: [
          CodeText('''
            STTimePicker(
              child: Text(_timePickerStr),
              initDuration: _duration,
              onTimerDurationChanged: (value) {
                setState(() {
                  _duration = value;
                  _timePickerStr = value.toString();
                });
              },
            ),
          '''),
        ],
      ),
      H2Text('日期选择器'),
      CodeArea(
        widgets: [
          STCalendarPicker(
            onChanged: (List<DateTime> value) {
              // 非Range取value的首个元素即可
              // 日期的显示内部已完成
              debugPrint('$value');
            },
          ),
        ],
        texts: [
          CodeText('''
            STCalendarPicker(
            onChanged: (List<DateTime> value) {
              // 非Range取value的首个元素即可
              // 日期的显示内部已完成
              debugPrint('value');
            },
          ),
          '''),
        ],
      ),
      H2Text('日期选择器(范围选择)'),
      CodeArea(
        widgets: [
          STCalendarPicker(
            isRange: true,
            onChanged: (List<DateTime> value) {
              // 非Range取value的首个元素即可
              // 日期的显示内部已完成
              debugPrint('$value');
            },
          ),
        ],
        texts: [
          CodeText('''
            STCalendarPicker(
              isRange: true,
              onChanged: (List<DateTime> value) {
                // 非Range取value的首个元素即可
                // 日期的显示内部已完成
                debugPrint('value');
              },
            ),
          '''),
        ],
      ),
      H2Text('API'),
      DataTable(
          columnSpacing: 40,
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
              DataCell(Text('model')),
              DataCell(Text('自定义类型(date、time、calendar)')),
              DataCell(Text('STPickerModel')),
              DataCell(Text('calendar')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('initDateTime')),
              DataCell(Text('初始日期')),
              DataCell(Text('DateTime')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('minimumDate')),
              DataCell(Text('最小可选择日期')),
              DataCell(Text('DateTime')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('maximumDate')),
              DataCell(Text('最大可选择日期')),
              DataCell(Text('DateTime')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('child')),
              DataCell(Text('date、time模式触发的Widget')),
              DataCell(Text('Widget')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('minimumYear')),
              DataCell(Text('最小显示年份')),
              DataCell(Text('int')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('maximunYear')),
              DataCell(Text('最大显示年份')),
              DataCell(Text('int')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onDateTimeChanged')),
              DataCell(Text('回调选中的日期')),
              DataCell(Text('ValueChanged\<DateTime\>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('initDuration')),
              DataCell(Text('初始时间')),
              DataCell(Text('Duration')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onTimerDurationChanged')),
              DataCell(Text('回调选中的时间')),
              DataCell(Text('ValueChanged\<Duration\>')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('isRange')),
              DataCell(Text('是否可以选择范围值')),
              DataCell(Text('bool')),
              DataCell(Text('false')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('offsetVertical')),
              DataCell(Text('垂直方向的偏移量')),
              DataCell(Text('double')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('marign')),
              DataCell(Text('外边距')),
              DataCell(Text('EdgeInsets')),
              DataCell(Text('-')),
              DataCell(Text('-')),
            ]),
            DataRow(selected: false, cells: [
              DataCell(Text('onRangeDateTimeChanged')),
              DataCell(Text('回调选中的日期')),
              DataCell(Text('''
ValueChanged
\<List\<DateTime\>\>
              ''')),
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
