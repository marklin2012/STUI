import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';
import 'package:stui/pages/transition/video.dart';
import 'package:video_player/video_player.dart';

class TransitionContent extends StatelessWidget {
  const TransitionContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H2Text('界面转场'),
          NormalText(
              '移动端出现的转场，即从一个界面转到另一个界面，通过合理的转场动效可以使界面间的逻辑关系和用户自身建立的认知模型吻合'),
          Video(
            key: Key('jump'),
            path: 'assets/video/mobile/page_jump.mp4',
            title: '直接跳转',
            summary: '直接跳转是最原始、最简单的转场方式，在APP中出现较少，常用于标签切换。',
            backgroundColor: Color(0xFF4AADF8),
          ),
          Video(
            key: Key('move'),
            path: 'assets/video/mobile/page_move.mp4',
            title: '移入',
            summary:
                '最常见的转场方式，移入有“上下左右”4个进入方向，原则上是“左移进入、右移退出”“上移进入、下移退出”的转场，父级→子级→子子级，依次类推的结构，最能体现产品功能的使用流程。',
            backgroundColor: Color(0xFF4AADF8),
          ),
          Video(
            key: Key('alpha'),
            path: 'assets/video/mobile/page_alpha.mp4',
            title: '淡入淡出',
            summary: '原有页面上渐变出现或消失，不存在某个方向的移动。',
            backgroundColor: Color(0xFF4AADF8),
          ),
          Video(
            key: Key('scale'),
            path: 'assets/video/mobile/page_scale.mp4',
            title: '缩放',
            summary: '类似于悬浮按钮，点击后由一个点放大到覆盖原有页面，在新页面点击关闭，页面缩小恢复至前一个页面的默认状态。',
            backgroundColor: Color(0xFF4AADF8),
          ),
        ],
        // child: STVideo.asset(
        //   path: 'assets/video/mobile/page_jump.mp4',
        // ),
      ),
    );
  }
}
