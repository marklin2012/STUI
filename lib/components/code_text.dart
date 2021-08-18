import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-light.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter_highlight/themes/vs.dart';

class CodeText extends StatelessWidget {
  final String text;

  const CodeText(
    this.text, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: HighlightView(
        this.text,
        language: 'dart',
        theme: atomOneLightTheme,
      ),
    );
  }
}
