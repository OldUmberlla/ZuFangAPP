import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage_2/provider.dart';

//判断是网络链接还是本地路径
final netWorkUriRegHttp = RegExp('^http');
final netWorkUriRegHttps = RegExp('^https');
final localUriReg = RegExp('^assets');

class CommonImage extends StatelessWidget {
  final String src;
  final double width;
  final double height;
  BoxFit fit;

  CommonImage(
      {Key? key,
      required this.src,
      required this.width,
      required this.height,
      this.fit = BoxFit.fill});

  @override
  Widget build(BuildContext context) {
    //判断是否含有网络图片链接
    if (netWorkUriRegHttp.hasMatch(src) || netWorkUriRegHttps.hasMatch(src)) {
      return Image(
          width: width,
          height: height,
          fit: fit,
          image: AdvancedNetworkImage(src,
              useDiskCache: true,
              cacheRule: CacheRule(maxAge: Duration(days: 7)), //缓存策略：7天
              timeoutDuration: Duration(seconds: 20) //超时时间：20秒
              ));
    }
    //如果是本地图片路径
    if (localUriReg.hasMatch(src)) {
      return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(src),
            fit: fit,
          ),
        ),
      );
    }
    //不符合条件就返回默认图片
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/default_image.png'),
          fit: fit,
        ),
      ),
    );
  }
}
