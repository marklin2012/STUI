import 'package:flutter/material.dart';
import 'package:stui/common/constant.dart';

class NormalText extends StatelessWidget {
  final String text;
  final Color color;
  const NormalText(
    this.text, {
    Key key,
    this.color = Colors.black,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SelectableText(
        this.text,
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }
}
