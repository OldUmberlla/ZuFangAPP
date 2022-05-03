import 'package:app/pages/home/tab/index_navigator_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6.0, bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navigatorItemList
            .map((item) => InkWell(
                  onTap: () {
                    item.onTap(context);
                  },
                  child: Column(
                    children: [
                      Icon(item.imgUri, color: Colors.deepOrangeAccent),
                      Text(
                        item.title,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
