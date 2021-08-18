import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';
import 'package:stui/pages/transition/video.dart';
import 'package:video_player/video_player.dart';

class ComponentContent extends StatelessWidget {
  const ComponentContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H2Text('高频组件'),
          NormalText('需要动态反馈的组件，主要为了过渡自然和提供组件状态反馈。'),
          Video(
            key: Key('card'),
            path: 'assets/video/mobile/component_card.mp4',
            title: '卡片切换',
            summary: '--',
            backgroundColor: Color(0xFFFFBE01),
          ),
          Video(
            key: Key('tab'),
            path: 'assets/video/mobile/component_tab.mp4',
            title: '标签页',
            summary: '--',
            backgroundColor: Color(0xFFFFBE01),
          ),
          Video(
            key: Key('accordion'),
            path: 'assets/video/mobile/component_accordion.mp4',
            title: '手风琴菜单',
            summary: '--',
            backgroundColor: Color(0xFFFFBE01),
          ),
          Video(
            key: Key('button'),
            path: 'assets/video/mobile/component_button.mp4',
            title: '按钮',
            summary: '--',
            backgroundColor: Color(0xFFFFBE01),
          ),
          Video(
            key: Key('bottom'),
            path: 'assets/video/mobile/component_bottom.mp4',
            title: '底部导航',
            summary: '--',
            backgroundColor: Color(0xFFFFBE01),
          ),
        ],
        // child: STVideo.asset(
        //   path: 'assets/video/mobile/page_jump.mp4',
        // ),
      ),
    );
  }
}
