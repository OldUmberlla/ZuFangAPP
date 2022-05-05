import 'package:app/widgets/common_image.dart';
import 'package:flutter/material.dart';

class CommonSearchBar extends StatefulWidget {
  final bool showLocation; //展示位置按钮
  final Function goBackCallback; //返回按钮事件
  final String inputValue; //搜索框输入的值
  final String defaultInputValue; //搜索框默认值
  final Function onCancel; //取消按钮事件
  final bool showMap; //展示地图按钮
  final Function onSearch; //用户点击搜索框触发的事件
  final ValueChanged<String> onSearchSubmit; //用户输入内容后点击手机键盘触发的事件

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
      : super(key: key);

  @override
  _CommonSearchBar createState() => _CommonSearchBar();
}

class _CommonSearchBar extends State<CommonSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (widget.showLocation)
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    color: Colors.lightGreen,
                  ),
                  Text(
                    '苏州',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
            ),
          if (widget.goBackCallback != null)
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
            ),
          Expanded(
              child: Container(
            height: 30,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(14))),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: -4),
                hintText: '请输入搜索词',
                hintStyle: TextStyle(fontSize: 13),
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.clear,
                  size: 14,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 14,
                ),
              ),
            ),
          )),
          Padding(padding: EdgeInsets.all(3)),
          if (widget.onCancel != null)
            GestureDetector(
              onTap: () {},
              child: Text(
                '取消',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          Padding(padding: EdgeInsets.all(5.0)),
          if (widget.showMap)
            GestureDetector(
              onTap: () {},
              child: CommonImage(
                  src: 'assets/images/search_bar_map.png',
                  width: 15,
                  height: 15),
            )
        ],
      ),
    );
  }
}
