import 'dart:async';
import 'package:event_bus/event_bus.dart';

///EventBus控制
class EventBusInstance {
  static EventBusInstance? _eventInstance;

  EventBus? _eventBus;

  EventBusInstance._internal();

  ///获取单例
  factory EventBusInstance() {
    if (_eventInstance == null) {
      _eventInstance = EventBusInstance._internal();
    }
    return _eventInstance!;
  }

  ///添加订阅
  StreamSubscription subscription<T extends EventBean>(onData) {
    if (_eventBus == null) {
      _eventBus = EventBus();
    }

    ///内部流属于广播模式，可以有多个订阅者
    return _eventBus!.on<T>().listen(onData);
  }

  ///发送事件
  void fire<T extends EventBean>(T e) {
    if (_eventBus == null) {
      _eventBus = EventBus();
    }
    _eventBus!.fire(e);
  }
}

///事件基类 Bean
class EventBean {
  String tag;
  dynamic obj;
  
  EventBean(this.tag, this.obj);

  @override
  String toString() {
    return 'EventBean{tag: $tag, obj: $obj}';
  }
}
