import 'package:flutter/material.dart';
import 'package:stui/common/constant.dart';

class H2Text extends StatelessWidget {
  final String text;

  const H2Text(
    this.text, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SelectableText(
        this.text,
        style: styleH2,
      ),
    );
  }
}
