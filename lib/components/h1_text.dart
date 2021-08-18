import 'package:flutter/material.dart';
import 'package:stui/common/constant.dart';

class H1Text extends StatelessWidget {
  final String text;

  const H1Text(
    this.text, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SelectableText(
        this.text,
        style: styleH1,
      ),
    );
  }
}
