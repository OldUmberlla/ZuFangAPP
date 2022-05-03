import 'package:app/routes.dart';
import 'package:flutter/material.dart';

//无状态组件
class PageContent extends StatelessWidget {
  //添加name参数
  final String name;

  const PageContent({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('当前页面：$name'),
      ),
      body: ListView(
        children: [
          FlatButton(
            child: Text(Routes.homeRoute),
            onPressed: () {
              Navigator.pushNamed(context, Routes.homeRoute);
            },
          ),
          FlatButton(
            child: Text(Routes.loginRoute),
            onPressed: () {
              //pushReplacementNamed 替换掉当前页面为新页面，不保留当前页面
              Navigator.pushReplacementNamed(context, Routes.loginRoute);
            },
          ),
          FlatButton(
            child: Text('不存在的界面'),
            onPressed: () {
              Navigator.pushNamed(context, '/aaaaa');
            },
          ),
          FlatButton(
            child: Text('房屋详情页，id=2222'),
            onPressed: () {
              Navigator.pushNamed(context, '/room/2222');
            },
          ),
        ],
      ),
    );
  }
}
