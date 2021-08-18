class LeftNavTitle {
  final String key;
  final String name;
  final bool isShow;
  final List<LeftNavSubTitle> children;

  LeftNavTitle({this.key, this.name, this.children, this.isShow = true});
}

class LeftNavSubTitle {
  final String key;
  final String name;
  final String route;

  LeftNavSubTitle({this.key, this.name, this.route});
}
