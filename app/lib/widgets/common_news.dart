import 'package:app/pages/news/news_data_bean.dart';
import 'package:app/widgets/common_image.dart';
import 'package:flutter/material.dart';

class CommonNewsPage extends StatelessWidget{
  final bool showTitle;
  final List<NewData> list;

  const CommonNewsPage({Key? key, this.list = newsList, this.showTitle = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (showTitle) //是否显示标题
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10.0),
            child: Text(
              '最新资讯',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        Column(
          children: list
              .map((item) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, item.navigateUri);
            },
            child: Container(
              height: 100,
              margin: EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(5.0)),
                  CommonImage(
                      src: item.imgUrl,
                      width:
                      (MediaQuery.of(context).size.width - 15) / 3,
                      height: 100),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text(
                            item.title,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.source,
                              style: TextStyle(color: Colors.black26),
                            ),
                            Text(
                              item.time,
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                ],
              ),
            ),
          ))
              .toList(),
        ),
      ],
    );
  }

}