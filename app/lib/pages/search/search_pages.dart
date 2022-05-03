import 'package:app/pages/search/search_data_bean.dart';
import 'package:app/widgets/common_image.dart';
import 'package:app/widgets/common_tags.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            child: Text('筛选框'),
          ),
          Expanded(
            child: ListView(
              children: searchList
                  .map((item) => Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        height: 130,
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.all(5.0)),
                            CommonImage(
                              src: item.imgUrl,
                              width: 130,
                              height: 100,
                            ),
                            Padding(padding: EdgeInsets.all(5.0)),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              //内容居中
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //内容靠左
                              children: [
                                Text(item.title,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                                Text(item.subTitle,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(fontSize: 13)),
                                Wrap(
                                  children: item.tags
                                      .map((tag) => CommonTag(
                                          tag,
                                          Colors.pink.shade600,
                                          Colors.pink.shade50))
                                      .toList(),
                                ),
                                Text(item.price.toString() + "/每月",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange)),
                              ],
                            )),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
