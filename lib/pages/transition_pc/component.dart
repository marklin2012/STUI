import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';
import 'package:stui/pages/transition/video.dart';
import 'package:video_player/video_player.dart';

class ComponentPCContent extends StatelessWidget {
  const ComponentPCContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H2Text('高频组件'),
          NormalText('----'),
          Video(
            key: Key('form'),
            path: 'assets/video/pc/component_form.mp4',
            title: '表单',
            summary: '表单的两种状态，静止状态/鼠标经过状态',
            backgroundColor: Color(0xFFFFBE01),
          ),
          Video(
            key: Key('button'),
            path: 'assets/video/pc/component_button.mp4',
            title: '按钮',
            summary: '按钮的五种状态，正常状态/鼠标悬停时状态/鼠标按下时状态/鼠标按下后弹起状态(可不做)/不可点击状态',
            backgroundColor: Color(0xFFFFBE01),
          ),
          Video(
            key: Key('input'),
            path: 'assets/video/pc/component_input.mp4',
            title: '输入框',
            summary: '输入框的四种状态，静止状态/输入时状态/输入有误状态/输入正确状态',
            backgroundColor: Color(0xFFFFBE01),
          ),
          Video(
            key: Key('select'),
            path: 'assets/video/pc/component_select.mp4',
            title: '选择器',
            summary: '--',
            backgroundColor: Color(0xFFFFBE01),
          ),
        ],
        // child: STVideo.asset(
        //   path: 'assets/video/pc/page_jump.mp4',
        // ),
      ),
    );
  }
}
