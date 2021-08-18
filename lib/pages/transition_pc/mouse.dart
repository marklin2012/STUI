import 'package:flutter/material.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';
import 'package:stui/pages/transition/video.dart';

class MouseContent extends StatelessWidget {
  const MouseContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H2Text('鼠标悬停'),
          NormalText('----'),
          Video(
            key: Key('move'),
            path: 'assets/video/pc/mouse_move.mp4',
            title: '位移',
            summary: '--',
            backgroundColor: Color(0xFF000000),
          ),
          Video(
            key: Key('scale'),
            path: 'assets/video/pc/mouse_scale.mp4',
            title: '缩放',
            summary: '--',
            backgroundColor: Color(0xFF000000),
          ),
          Video(
            key: Key('animation'),
            path: 'assets/video/pc/mouse_animation.mp4',
            title: '播放动画',
            summary: '--',
            backgroundColor: Color(0xFF000000),
          ),
          Video(
            key: Key('shadow'),
            path: 'assets/video/pc/mouse_shadow.mp4',
            title: '阴影高亮',
            summary: '--',
            backgroundColor: Color(0xFF000000),
          ),
          Video(
            key: Key('shade'),
            path: 'assets/video/pc/mouse_shade.mp4',
            title: '遮罩',
            summary: '--',
            backgroundColor: Color(0xFF000000),
          ),
          Video(
            key: Key('gif'),
            path: 'assets/video/pc/mouse_gif.mp4',
            title: 'GIF',
            summary: '--',
            backgroundColor: Color(0xFF000000),
          ),
        ],
        // child: STVideo.asset(
        //   path: 'assets/video/pc/page_jump.mp4',
        // ),
      ),
    );
  }
}
