import 'package:app/widgets/common_image.dart';
import 'package:flutter/material.dart';

import '../../routes.dart';

class RecommendItem {
  final String title;
  final String subTitle;
  final String imageUri;
  final String navigateUri;

  const RecommendItem(
      this.title, this.subTitle, this.imageUri, this.navigateUri);
}

const List<RecommendItem> listRecommend = [
  RecommendItem(
      '一二三四五', '六七八九十', 'assets/images/recommend_img1.png', '/recommend'),
  RecommendItem(
      '一二三四五', '六七八九十', 'assets/images/recommend_img2.png', '/recommend'),
  RecommendItem(
      '一二三四五', '六七八九十', 'assets/images/recommend_img3.png', '/recommend'),
  RecommendItem(
      '一二三四五', '六七八九十', 'assets/images/recommend_img4.png', '/recommend'),
];

class HomeRecommend extends StatelessWidget {
  final List<RecommendItem> dataList;

  const HomeRecommend({Key? key, this.dataList = listRecommend})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Color(0x08000000)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('房屋推荐',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w200)),
              Text(
                '更多>',
                style: TextStyle(color: Colors.black26),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Wrap(
            spacing: 10.0, //Item之间的间距
            runSpacing: 10.0, //每行之间的间距
            children: dataList
                .map((e) => Container(
                      decoration: BoxDecoration(color: Colors.amber),
                      width: (MediaQuery.of(context).size.width - 10.0 * 3) /
                          2, //每个板块的宽度为屏幕的宽度减去三个边距再除2（一行两个板块）
                      height: 100,
                      child: RecommendItemWidget(e),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}

class RecommendItemWidget extends StatelessWidget {
  final RecommendItem data;

  RecommendItemWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(data.navigateUri);
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: (MediaQuery.of(context).size.width - 10.0 * 3) / 2,
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(data.title,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w200)),
                Text(data.subTitle,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w200)),
              ],
            ),
            CommonImage(
                src: data.imageUri, width: 55, height: 55)
          ],
        ),
      ),
    );
  }
}
