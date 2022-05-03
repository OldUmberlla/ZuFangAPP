import 'package:app/pages/home/tab/index_navigator.dart';
import 'package:app/widgets/common_image.dart';
import 'package:app/widgets/common_news.dart';
import 'package:app/widgets/common_swiper.dart';
import 'package:flutter/material.dart';

import 'news_data_bean.dart';

class NewsPages extends StatelessWidget {
  final bool showTitle;
  final List<NewData> list;

  const NewsPages({Key? key, this.list = newsList, this.showTitle = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('资讯'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(5.0)),
            CommonNewsPage()
          ],
        ),
      ),
    );
  }
}
