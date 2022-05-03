import 'dart:async';
import 'package:app/utils/event_bus_utils.dart';
import 'package:flutter/material.dart';

///静态控件基类
abstract class BaseStatelessWidget extends StatelessWidget {}

///动态控件基类
abstract class BaseStatefulWidget extends StatefulWidget {}

///动态控件 State 基类
abstract class BaseState<T extends StatefulWidget> extends State<T>
    with AutomaticKeepAliveClientMixin {
  ///是否保持界面状态
  bool isWantKeepAlive = true;
  StreamSubscription? subscription;

  @override
  bool get wantKeepAlive => isWantKeepAlive;

  @override
  void initState() {
    super.initState();
    subscription = EventBusInstance().subscription<EventBean>((event) {
      eventBusListen(event);
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (subscription != null) {
      subscription?.cancel();
    }
  }

  void eventBusListen(EventBean eventBean);
}
