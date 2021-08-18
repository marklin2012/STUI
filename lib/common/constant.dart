import 'package:flutter/material.dart';
import 'package:stui/models/nav.dart';

const styleH1 = TextStyle(fontSize: 28, fontWeight: FontWeight.w600);
const styleH2 = TextStyle(
    fontSize: 20, fontWeight: FontWeight.w600, fontFamily: 'PingFang');
const styleContent = TextStyle(fontSize: 14);

List<LeftNavTitle> navDocDatas = [
  LeftNavTitle(name: '组件总揽', key: 'total', children: []),
  LeftNavTitle(
    name: '基础',
    key: 'basic',
    children: [
      LeftNavSubTitle(key: 'button', name: 'Button  按钮', route: '/button'),
      LeftNavSubTitle(key: 'icon', name: 'Icon 图标', route: '/icon'),
    ],
  ),
  LeftNavTitle(
    name: '表单',
    key: 'form',
    children: [
      LeftNavSubTitle(key: 'slider', name: 'Slider  滑块', route: '/slider'),
      LeftNavSubTitle(key: 'switch', name: 'Switch 开关', route: '/switch'),
      LeftNavSubTitle(key: 'radio', name: 'Radio 单选框', route: '/radio'),
      LeftNavSubTitle(
          key: 'checkbox', name: 'Checkbox 多选框', route: '/checkbox'),
      LeftNavSubTitle(key: 'stepper', name: 'Stepper 步进器', route: '/stepper'),
      LeftNavSubTitle(key: 'select', name: 'Select 选择器', route: '/select'),
      LeftNavSubTitle(
          key: 'cascader', name: 'Cascader 级联器', route: '/cascader'),
      LeftNavSubTitle(key: 'picker', name: 'Picker 时间/日期选择器', route: '/picker'),
    ],
  ),
  LeftNavTitle(
    name: '导航',
    key: 'nav',
    children: [
      LeftNavSubTitle(key: 'menu', name: 'Menu 菜单', route: '/menu'),
      LeftNavSubTitle(key: 'steps', name: 'Steps 步骤条', route: '/steps'),
    ],
  ),
  LeftNavTitle(
    name: '数据',
    key: 'data',
    children: [
      LeftNavSubTitle(key: 'badge', name: 'Badge 徽标', route: '/badge'),
      LeftNavSubTitle(key: 'card', name: 'Card 卡片', route: '/card'),
      LeftNavSubTitle(key: 'tag', name: 'Tag 标签', route: '/tag'),
      LeftNavSubTitle(key: 'tooltip', name: 'Tooltip 文字提示', route: '/tooltip'),
      LeftNavSubTitle(
          key: 'progress', name: 'Progress 进度条', route: '/progress'),
    ],
  ),
  LeftNavTitle(name: '反馈', key: 'feedback', children: [
    LeftNavSubTitle(key: 'alert', name: 'Alert 警告', route: '/button'),
    LeftNavSubTitle(key: 'loading', name: 'Loading 加载', route: '/button'),
    LeftNavSubTitle(key: 'message', name: 'Message 全局提示', route: '/button'),
    LeftNavSubTitle(key: 'dialog', name: 'Dialog 弹出框', route: '/dialog'),
    LeftNavSubTitle(
        key: 'actionsheet', name: 'Actionsheet 上拉菜单', route: '/actionsheet'),
    LeftNavSubTitle(key: 'toast', name: 'Toast 轻提示', route: '/toast'),
    LeftNavSubTitle(
        key: 'snackbar', name: 'Snackbar 底部轻提示', route: '/snackbar'),
  ]),
];

List<LeftNavTitle> navDesignDatas = [
  LeftNavTitle(name: '设计原则', key: 'designPrinciple', children: [
    LeftNavSubTitle(key: 'intimacy', name: '亲密性', route: '/intimacy'),
    LeftNavSubTitle(key: 'similarity', name: '相似性', route: '/similarity'),
    LeftNavSubTitle(key: 'coherence', name: '一致性/统一性', route: '/coherence'),
  ]),
  LeftNavTitle(
    name: '全局样式',
    key: 'globalStyle',
    children: [
      LeftNavSubTitle(key: 'color', name: '色彩', route: '/color'),
      LeftNavSubTitle(key: 'font', name: '字体', route: '/font'),
      LeftNavSubTitle(key: 'icon', name: '图标', route: '/icon'),
      LeftNavSubTitle(key: 'shadow', name: '阴影', route: '/shadow'),
      LeftNavSubTitle(key: 'cutoff', name: '分割线', route: '/cutoff'),
    ],
  ),
  LeftNavTitle(
    name: '全局规则',
    key: 'globalRule',
    children: [
      LeftNavSubTitle(key: 'button', name: '按钮', route: '/button'),
      LeftNavSubTitle(key: 'form', name: '表单', route: '/form'),
      LeftNavSubTitle(key: 'list', name: '列表', route: '/list'),
      LeftNavSubTitle(key: 'message', name: '消息反馈', route: '/message'),
      LeftNavSubTitle(key: 'transition', name: '界面转场', route: '/transition'),
      LeftNavSubTitle(key: 'empty', name: '空状态', route: '/empty'),
    ],
  ),
  LeftNavTitle(
    name: 'Web 规则',
    key: 'webRule',
    children: [
      LeftNavSubTitle(key: 'frame', name: '框架', route: '/frame'),
      LeftNavSubTitle(key: 'nav', name: '导航', route: '/nav'),
      LeftNavSubTitle(key: 'label', name: '字段和标签', route: '/label'),
      LeftNavSubTitle(key: 'select', name: '选择器', route: '/select'),
      LeftNavSubTitle(key: 'result', name: '结果页', route: '/result'),
      LeftNavSubTitle(key: 'error', name: '异常页', route: '/error'),
    ],
  ),
  LeftNavTitle(
    name: '动效',
    key: 'animation',
    children: [
      LeftNavSubTitle(key: 'principle', name: '动效原则', route: '/principle'),
      LeftNavSubTitle(key: 'mobile', name: '移动端交互动效', route: '/mobile'),
      LeftNavSubTitle(key: 'pc', name: 'PC端交互动效', route: '/pc'),
    ],
  ),
];
