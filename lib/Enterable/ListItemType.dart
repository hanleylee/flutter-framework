import 'package:flutter/material.dart';
import 'package:myapp/Enterable/Enterable.dart';
import 'package:myapp/MyAppLifeCycle.dart';
import 'package:myapp/MyFutureBuilder.dart';
import 'package:myapp/MyLayoutBuilder.dart';
import 'package:myapp/MyListener.dart';
import 'package:myapp/MyNavigator.dart';
import 'package:myapp/MyStreamBuilder.dart';
import '../BasicWidget/MyBasicWidget.dart';
import '../MyGestureDetector.dart';
import '../MyThemeWidget.dart';
import '../MyWebView.dart';
import '../PassDataToSuperWidget.dart';
import 'package:myapp/MyWidgetLifeCyclePage.dart';

enum ListItemType {
  none,
  basicWidget,
  theme,
  gestureDetector,
  passDataToSuper,
  webview,
  lifecycle,
  layoutBuilder,
  futureBuilder,
  streamBuilder,
  myAppLifeCycle,
  navigator,
  listener,

}

extension MainEntryType on ListItemType {
  String get rowName {
    switch (this) {
      case ListItemType.none:
        return 'none';
      case ListItemType.basicWidget:
        return 'Basic Widget';
      case ListItemType.theme:
        return 'Theme';
      case ListItemType.gestureDetector:
        return 'GestureDetector';
      case ListItemType.passDataToSuper:
        return 'Pass Data To Super';
      case ListItemType.webview:
        return 'Web View';
      case ListItemType.lifecycle:
        return "Life Cycle";
      case ListItemType.layoutBuilder:
        return "Layout Builder";
      case ListItemType.futureBuilder:
        return "Future Builder";
      case ListItemType.streamBuilder:
        return "Stream Builder";
      case ListItemType.myAppLifeCycle:
        return "App Life Cycle";
      case ListItemType.navigator:
        return "Navigator";
      case ListItemType.listener:
        return "Listener";
    }
  }

  Widget get widget {
    Widget content;
    switch (this) {
      case ListItemType.none:
        content = const Text('none');
        break;
      case ListItemType.basicWidget:
        content = MyBasicWidget();
        break;
      case ListItemType.theme:
        content = MyThemeWidget();
        break;
      case ListItemType.gestureDetector:
        content = const MyGestureDetector();
        break;
      case ListItemType.passDataToSuper:
        content = PassDataToSuperWidget();
        break;
      case ListItemType.webview:
        content = MyWebView();
        break;
      case ListItemType.lifecycle:
        content = WidgetLiftCyclePage();
        break;
      case ListItemType.layoutBuilder:
        content = MyLayoutBuilder();
        break;
      case ListItemType.futureBuilder:
        content = const MyFutureBuilder();
        break;
      case ListItemType.streamBuilder:
        content = const MyStreamBuilder();
        break;
      case ListItemType.myAppLifeCycle:
        content = const MyAppLifeCycle();
        break;
      case ListItemType.navigator:
        content = const MyNavigator();
        break;
      case ListItemType.listener:
        content = const MyListener();
        break;
    }
    return Scaffold(
      body: content,
      appBar: AppBar(title: Text(rowName)),
    );
  }

  void talk() {
    print('meow');
  }
}

