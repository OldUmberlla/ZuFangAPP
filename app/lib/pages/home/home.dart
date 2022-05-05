import 'package:app/pages/home/home_index.dart';
import 'package:app/pages/mine/mine_index.dart';
import 'package:app/pages/news/news_pages.dart';
import 'package:app/pages/search/search_pages.dart';
import 'package:app/widgets/common_search_bar.dart';
import 'package:app/widgets/page_content.dart';
import 'package:flutter/material.dart';

//准备4个tab
List<Widget> tabViewList = [
  const HomeIndex(name: '首页'),
  SearchPage(),
  NewsPages(),
  const MineIndex(name: '我的')
];

//准备4个BottomNavigationBarItem
List<BottomNavigationBarItem> barItemList = [
  const BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
  const BottomNavigationBarItem(label: '搜索', icon: Icon(Icons.search)),
  const BottomNavigationBarItem(label: '资讯', icon: Icon(Icons.info)),
  const BottomNavigationBarItem(label: '我的', icon: Icon(Icons.account_circle)),
];

//首页
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;

//计算选中的是哪个bottomTab、
  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectIndex,
        selectedItemColor: Colors.deepOrangeAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
