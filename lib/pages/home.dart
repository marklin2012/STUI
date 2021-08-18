import 'package:flutter/material.dart';
import 'package:stui/pages/home/main_content.dart';
import 'package:stui/pages/home/top_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _currentKey = 'doc';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFCFF),
      body: Column(
        children: [
          TopNavBar(
            selectedKey: _currentKey,
            onTap: (key) {
              setState(() {
                _currentKey = key;
              });
            },
          ),
          Flexible(
            child: MainContent(contentKey: _currentKey),
          )
        ],
      ),
    );
  }
}
