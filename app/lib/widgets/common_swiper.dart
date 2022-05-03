import 'package:app/widgets/common_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

const List<String> defaultImgList = [
  'https://img95.699pic.com/photo/40094/7630.jpg_wh300.jpg',
  'https://tools.jiyik.com/demo_source/demo2.jpeg',
  'https://pic3.zhimg.com/v2-3b4fc7e3a1195a081d0259246c38debc_720w.jpg'
];

//图片默认宽高
var imgWidth = 750.0;
var imgHeight = 420.0;

class CommonSwiper extends StatelessWidget {
  final List<String> images;

  const CommonSwiper({Key? key, this.images = defaultImgList});

  @override
  Widget build(BuildContext context) {
    //根据图片尺寸动态计算banner高度
    var height = MediaQuery.of(context).size.width / imgWidth * imgHeight;
    return Container(
      height: height,
      child: Swiper(
        //自动轮播
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return CommonImage(
            //图片列表中的地址
            src: images[index],
            width: double.maxFinite,
            height: height,
          );
        },
        itemCount: images.length,
        pagination: const SwiperPagination(),
        // control: const SwiperControl(),//左右方向的箭头
      ),
    );
  }
}
