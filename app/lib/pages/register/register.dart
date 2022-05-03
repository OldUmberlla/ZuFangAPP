import 'package:app/widgets/page_content.dart';
import 'package:flutter/material.dart';

import '../../routes.dart';

//有状态组件；登陆页
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showPwd1 = false;
  bool showPwd2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册'),
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
              obscureText: !showPwd1,
              decoration: InputDecoration(
                  //添加密码显示按钮，是否显示密码明文
                  suffixIcon: IconButton(
                    icon: Icon(
                        showPwd1 ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        showPwd1 = !showPwd1;
                      });
                    },
                  ),
                  labelText: '密码',
                  hintText: '请输入密码'),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              obscureText: !showPwd2,
              decoration: InputDecoration(
                  //添加密码显示按钮，是否显示密码明文
                  suffixIcon: IconButton(
                    icon: Icon(
                        showPwd2 ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        showPwd2 = !showPwd2;
                      });
                    },
                  ),
                  labelText: '确认密码',
                  hintText: '请输入密码'),
            ),
            Padding(padding: EdgeInsets.all(10)),
            MaterialButton(
                color: Colors.deepOrangeAccent,
                child: Text(
                  '注册',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {}),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              //设置内容居中
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('已有账号,'),
                FlatButton(
                    onPressed: () {
                      //pushReplacementNamed 替换掉当前页面为新页面，不保留当前页面
                      Navigator.pushReplacementNamed(context, Routes.loginRoute);
                    },
                    child: Text(
                      '去登陆~',
                      style: TextStyle(color: Colors.deepOrangeAccent),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
