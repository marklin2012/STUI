import 'package:flutter/material.dart';
import 'package:stui/components/dashline.dart';

class CodeArea extends StatelessWidget {
  final List<Widget> widgets;
  final List<Widget> texts;
  const CodeArea({
    Key key,
    @required this.widgets,
    @required this.texts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 32),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0x32DFE2E7),
      ),
      padding: EdgeInsets.symmetric(vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: widgets
                  .map((e) => Padding(
                        padding: EdgeInsets.all(8),
                        child: e,
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 32),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Dashline(
                  color: Color(0xFFDFE2E7),
                ),
                Container(
                    color: Color(0x32DFE2E7),
                    child: Text(
                      '代码展示',
                      style: TextStyle(color: Color(0xFF888888)),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: texts,
            ),
          )
        ],
      ),
    );
  }
}
