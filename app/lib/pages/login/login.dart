import 'package:app/routes.dart';
import 'package:app/widgets/page_content.dart';
import 'package:flutter/material.dart';

//有状态组件；登陆页
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPwd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      //SafeArea 安全区域，去掉底部以及像刘海屏那种上面挖空的区域，在此内的控件不会被遮挡
      body: SafeArea(
        //边距
        minimum: EdgeInsets.all(30),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              decoration: InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              obscureText: !showPwd,
              decoration: InputDecoration(
                //添加密码显示按钮，是否显示密码明文
                  suffixIcon: IconButton(
                    icon:
                    Icon(showPwd ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        showPwd = !showPwd;
                      });
                    },
                  ),
                  labelText: '密码',
                  hintText: '请输入密码'),
            ),
            Padding(padding: EdgeInsets.all(10)),
            MaterialButton(
                color: Colors.deepOrangeAccent,
                child: Text(
                  '登录',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  operationStr(); //帮露崽去除文档空格
                  Navigator.pushReplacementNamed(context, Routes.homeRoute);
                }),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              //设置内容居中
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('还没有账号,'),
                FlatButton(
                    onPressed: () {
                      //pushReplacementNamed 替换掉当前页面为新页面，不保留当前页面
                      Navigator.pushReplacementNamed(
                          context, Routes.registerRoute);
                    },
                    child: Text(
                      '去注册~',
                      style: TextStyle(color: Colors.deepOrangeAccent),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  void operationStr() {
    String str = "一 、 主 题 聚 焦 传 统 文 化 传承（一） 传统文化的传承故 宫 文 物 是 中 华 民 族 传 统文 化 的 重 要 载 体 ， 文 物 的 修 复不 仅 仅 是 为 了 保 存 中 国 上 千 年的 珍 贵 历 史 遗 迹 ， 更 是 为 了 呈现 中 华 民 族 历 史 的 壮 丽 ， 以 及中 华 民 族 文 化 的 魅 力 。 每 一 件文 物 背 后 都 有 着 深 厚 的 历 史 文化背景，在故宫封存300 年的屏风 、 铜 镀 金 乡 村 音 乐 水 法 钟 、辽 金 时 代 木 雕 佛 像 、 黄 花 梨 百宝 嵌 番 人 进 宝 图 顶 箱 柜 、 世 界体 量 最 大 的 海 南 黄 花 梨 柜 子 、绢 本 山 水 画 《游 春 图》 等 ， 这些 极 为 珍 贵 的 文 物 所 蕴 含 的 历史 价 值 、 艺 术 价 值 难 以 估 量 ，其 背 后 隐 藏 着 丰 富 的 历 史 文化 、 历 史 故 事 ， 如 黄 花 梨 百 宝嵌 番 人 进 宝 图 顶 箱 柜 镶 满 了 外国 人 的 图 像 ， 是 唯 一 一 款 古 时有 ， 但 是 现 今 没 有 的 纹 饰 ， 展";
    var replaceAll = str.replaceAll(new RegExp(r"\s+"), "");
    print(replaceAll);
  }
}
