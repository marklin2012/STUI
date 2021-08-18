import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';
import 'package:stui/pages/transition/video.dart';
import 'package:video_player/video_player.dart';

class LoadingContent extends StatelessWidget {
  const LoadingContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H2Text('加载'),
          NormalText('数据加载是发生在用户触发特定操作后，客户端向服务器发送请求，服务器处理并返回数据给客户端的过程。'),
          Video(
            key: Key('shimmer'),
            path: 'assets/video/mobile/loading_shimmer.mp4',
            title: '占位符加载',
            summary: '使用矩形色块代替未加载完成的数据，加载过程中用户可以提前看到即将展示的界面框架。',
            backgroundColor: Color(0xFF6633FF),
          ),
          Video(
            key: Key('full'),
            path: 'assets/video/mobile/loading_full.mp4',
            title: '全屏加载',
            summary:
                '全屏加载的特点是数据一次性加载完成，内容加载完成之前界面都会停留在loading界面。建议设计进度条或有趣的动画，减轻用户等待时的焦虑感。',
            backgroundColor: Color(0xFF6633FF),
          ),
          Video(
            key: Key('alpha'),
            path: 'assets/video/mobile/loading_part.mp4',
            title: '局部',
            summary: '当界面中图文同时存在时，会选择优先加载文字，图片则用其他的方式占位，最终等待图片加载完成。',
            backgroundColor: Color(0xFF6633FF),
          ),
          Video(
            key: Key('modal'),
            path: 'assets/video/mobile/loading_modal.mp4',
            title: '模态加载',
            summary:
                '模态加载需要中断用户的其他操作，用户只能等待加载结束，因为如果用户执行了其他操作就会打断正在进行的加载过程，模态加载对用户干扰较大，需谨慎使用。',
            backgroundColor: Color(0xFF6633FF),
          ),
        ],
        // child: STVideo.asset(
        //   path: 'assets/video/mobile/page_jump.mp4',
        // ),
      ),
    );
  }
}
