String _baseAssetsPath(String name,
    {String ext = '.png', String sourcePath = 'images'}) {
  return "assets/$sourcePath/$name$ext";
}

String localImagePath(String name, {String ext = ".png"}) {
  return _baseAssetsPath(name, ext: ext);
}

String localSvgPath(String name) {
  return _baseAssetsPath(name, ext: '.svg', sourcePath: 'svg');
}
