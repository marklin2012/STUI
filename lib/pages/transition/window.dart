import 'package:flutter/material.dart';
import 'package:saturn/saturn.dart';
import 'package:stui/components/h2_text.dart';
import 'package:stui/components/normal_text.dart';
import 'package:stui/pages/transition/video.dart';
import 'package:video_player/video_player.dart';

class WindowContent extends StatelessWidget {
  const WindowContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H2Text('弹窗'),
          NormalText('弹窗作为页面的重要控件，可以按照是否强制打断用户操作来分成两种，模态弹窗和非模态弹窗。'),
          NormalText('模态弹窗'),
          NormalText(
            '模态弹窗/阻断式弹窗：模态提供了一个专注聚焦的环境，用户只有完成或者关闭当前任务，才能进行其他任务。',
            color: Color(0xFF888888),
          ),
          Video(
            key: Key('dialog'),
            path: 'assets/video/mobile/window_dialog.mp4',
            title: 'dialog（对话框）/alert(警告框)',
            summary: '''
通常用来传达和app中的重要信息，需要用户操作，通常出现在屏幕中央，并带有透明底的遮罩。
动效参数：曲线-标准曲线(ease in out )     时长-300ms
            ''',
            backgroundColor: Color(0xFF5CC88E),
          ),
          Video(
            key: Key('action'),
            path: 'assets/video/mobile/window_action.mp4',
            title: 'action sheet（动作菜单）',
            summary: '''
用来响应动作或控件，或者呈现和当前内容相关的两个及更多的选项，一般在屏幕底部。
动效参数：曲线-标准曲线(ease in out )     时长-300ms
                ''',
            backgroundColor: Color(0xFF5CC88E),
          ),
          Video(
            key: Key('activity'),
            path: 'assets/video/mobile/window_activity.mp4',
            title: 'activity view（活动视图）',
            summary: '''
用于显示用户可针对当前内容执行的一系列服务（活动）。通常情况下，点击之后该项活动会立刻执行。若某项活动过于复杂，系统则会进一步请求获取更多的信息后才为用户执行该服务。
动效参数：曲线-标准曲线(ease in out )     时长-300ms
            ''',
            backgroundColor: Color(0xFF5CC88E),
          ),
          Video(
            key: Key('popover'),
            path: 'assets/video/mobile/window_popover.mp4',
            title: 'popover（浮出层）',
            summary: '''
是针对当前页面提供的一系列任务和服务。
动效参数：曲线-标准曲线(ease in out )     时长-200ms
            ''',
            backgroundColor: Color(0xFF5CC88E),
          ),
          Video(
            key: Key('side'),
            path: 'assets/video/mobile/window_side.mp4',
            title: 'Side Menus （侧边菜单）',
            summary: '''
以 “侧边弹出层” 的形式承载菜单功能。
动效参数：曲线-标准曲线(ease in out )     时长-300ms
            ''',
            backgroundColor: Color(0xFF5CC88E),
          ),
          NormalText('非模态弹窗'),
          NormalText(
            '非模态弹窗/非阻断式弹窗：常用于轻量级的操作反馈和信息传递，不需要获取屏幕焦点，用户可以同时操作屏幕中的其他内容。',
            color: Color(0xFF888888),
          ),
          Video(
            key: Key('toast'),
            path: 'assets/video/mobile/window_toast.mp4',
            title: 'toast（轻量提示）',
            summary: '''
Toast属于一种轻量级的反馈，常常以小弹框的形式出现，一般出现1到2秒会自动消失，可以出现在屏幕上中下任意位置。
动效参数：曲线-标准曲线(ease in out )     时长-300ms
            ''',
            backgroundColor: Color(0xFF5CC88E),
          ),
          Video(
            key: Key('snackbar'),
            path: 'assets/video/mobile/window_snackbar.mp4',
            title: 'snackbar（轻反馈）',
            summary: '''
snackbar是android专有控件，是出现在屏幕底部的提供有关app相关的简短信息提醒，它属于轻量级的信息提醒，一般出现几秒后就会自动消失，不会中断用户操作。
动效参数：曲线-标准曲线(ease in out )     时长-300ms
                ''',
            backgroundColor: Color(0xFF5CC88E),
          ),
        ],
        // child: STVideo.asset(
        //   path: 'assets/video/mobile/page_jump.mp4',
        // ),
      ),
    );
  }
}
