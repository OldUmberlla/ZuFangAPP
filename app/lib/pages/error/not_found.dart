import 'package:flutter/material.dart';


//实现NotFound
class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404'),
      ),
      body: Center(
        child: Text('你访问的页面不存在！'),
      ),
    );
  }
}
