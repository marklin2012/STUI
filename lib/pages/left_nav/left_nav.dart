import 'package:flutter/material.dart';
import 'package:stui/models/nav.dart';
import 'package:stui/pages/left_nav/left_nav_title_item.dart';

class LeftNav extends StatefulWidget {
  final Function(String) onChangeKey;
  final List<LeftNavTitle> datas;
  final String defaultKey;

  const LeftNav(
      {Key key, this.onChangeKey, this.datas, this.defaultKey = 'button'})
      : super(key: key);

  @override
  _LeftNavState createState() => _LeftNavState();
}

class _LeftNavState extends State<LeftNav> {
  List<LeftNavTitle> _navs = [];
  String _currentKey = 'button';

  @override
  void initState() {
    super.initState();
    _navs = List.from(widget.datas);
    _currentKey = widget.defaultKey ?? 'button';
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 52),
        width: 220,
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _navs
              .map(
                (item) => LeftNavTitleItem(
                  item: item,
                  currentKey: _currentKey,
                  isShow: item.isShow,
                  onChangeKey: (key) {
                    setState(() {
                      _currentKey = key;
                    });
                    if (widget.onChangeKey != null) {
                      widget.onChangeKey(key);
                    }
                  },
                  onTap: (key) {
                    setState(() {
                      _navs = _navs.map((title) {
                        if (title.key == key) {
                          return LeftNavTitle(
                              key: title.key,
                              name: title.name,
                              isShow: !title.isShow,
                              children: title.children);
                        } else {
                          return title;
                        }
                      }).toList();
                    });
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
