import 'package:flutter/material.dart';

class CommonSearchBar extends StatefulWidget {
  final bool showLocation; //展示位置按钮
  final Function goBackCallback; //返回按钮事件
  final String inputValue; //搜索框输入的值
  final String defaultInputValue; //搜索框默认值
  final Function onCancel; //取消按钮事件
  final bool showMap; //展示地图按钮
  final Function onSearch; //用户点击搜索框触发的事件
  final ValueChanged<String> onSearchSubmit;

  const CommonSearchBar(
      {Key? key,
      required this.showLocation,
      required this.goBackCallback,
      required this.inputValue,
      required this.defaultInputValue,
      required this.onCancel,
      required this.showMap,
      required this.onSearch,
      required this.onSearchSubmit})
      : super(key: key); //用户输入内容后点击手机键盘触发的事件

  @override
  _CommonSearchBar createState() => _CommonSearchBar();
}

class _CommonSearchBar extends State<CommonSearchBar> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
