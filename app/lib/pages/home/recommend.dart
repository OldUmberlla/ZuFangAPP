import 'package:flutter/material.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({Key? key}) : super(key: key);

  @override
  _RecommendPageState createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('推荐'),
      ),
      //SafeArea 安全区域，去掉底部以及像刘海屏那种上面挖空的区域，在此内的控件不会被遮挡
      body: SafeArea(
        //边距
        minimum: EdgeInsets.all(30),
        child: Text('推荐'),
      ),
    );
  }
}
