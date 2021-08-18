import 'package:flutter/material.dart';
import 'package:stui/pages/home/design_content.dart';

import 'doc_content.dart';

class MainContent extends StatelessWidget {
  final String contentKey;
  const MainContent({Key key, this.contentKey}) : super(key: key);

  Widget content(key) {
    if (key == 'design') {
      return DesignContent();
    }
    return DocContent();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          // padding: EdgeInsets.only(top: 52),
          constraints: BoxConstraints(maxWidth: 1280.0),
          // child: DocContent(),
          child: content(contentKey),
        ),
      ),
    );
  }
}
