import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'package:stui/common/constant.dart';
import 'package:stui/pages/left_nav/left_nav.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:stui/pages/transition/main.dart';
import 'package:stui/pages/transition_pc/main.dart';

class DesignContent extends StatefulWidget {
  const DesignContent({Key key}) : super(key: key);

  @override
  _DesignContentState createState() => _DesignContentState();
}

class _DesignContentState extends State<DesignContent> {
  String _currentKey;
  @override
  void initState() {
    super.initState();
    _currentKey = 'intimacy';
  }

  Widget pageContent() {
    if (_currentKey == 'mobile') {
      return TransitionPage();
    } else if (_currentKey == 'pc') {
      return TransitionPCPage();
    }
    return FutureBuilder(
      future: DefaultAssetBundle.of(context)
          .loadString('assets/md/$_currentKey.md'),
      builder: (BuildContext context, AsyncSnapshot<String> builder) {
        if (builder.data != null) {
          return Markdown(
            selectable: true,
            data: builder.data,
            extensionSet: md.ExtensionSet(
              md.ExtensionSet.gitHubFlavored.blockSyntaxes,
              [
                md.EmojiSyntax(),
                ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
              ],
            ),
            styleSheet: MarkdownStyleSheet(
                h1: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
                h2: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                p: TextStyle(
                  fontSize: 16,
                ),
                blockSpacing: 24,
                codeblockDecoration: BoxDecoration(
                  color: Color(0x35DFE2E7),
                )),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LeftNav(
          key: Key('design'),
          datas: navDesignDatas,
          defaultKey: _currentKey,
          onChangeKey: (key) {
            if (_currentKey == key) return;
            setState(() {
              _currentKey = key;
            });
          },
        ),
        Flexible(
          child: Container(
            margin: EdgeInsets.only(top: 52, left: 32),
            padding: EdgeInsets.symmetric(vertical: 44, horizontal: 56),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 16),
                    blurRadius: 24,
                    color: Color(0x1e000000)),
              ],
            ),
            width: double.infinity,
            child: pageContent(),
          ),
        ),
      ],
    );
  }
}
