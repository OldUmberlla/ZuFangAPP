import 'package:app/pages/home/home_recommend.dart';
import 'package:app/pages/home/tab/index_navigator.dart';
import 'package:app/widgets/common_news.dart';
import 'package:app/widgets/common_swiper.dart';
import 'package:flutter/material.dart';

class HomeIndex extends StatelessWidget {
  //添加name参数
  final String name;

  const HomeIndex({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CommonSwiper(),
          IndexNavigator(),
          HomeRecommend(),
          CommonNewsPage(
            showTitle: true,
          )
        ],
      ),
    );
  }
}
