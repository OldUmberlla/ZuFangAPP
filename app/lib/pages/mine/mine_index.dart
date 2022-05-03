import 'package:app/pages/home/tab/index_navigator.dart';
import 'package:app/widgets/common_swiper.dart';
import 'package:flutter/material.dart';

class MineIndex extends StatelessWidget {
  //添加name参数
  final String name;

  const MineIndex({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('$name'),
      ),
    );
  }
}
