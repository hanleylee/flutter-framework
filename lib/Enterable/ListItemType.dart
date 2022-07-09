import 'package:flutter/material.dart';
import 'package:myapp/Entries/MyAppLifeCycle.dart';
import 'package:myapp/Entries/MyFutureBuilder.dart';
import 'package:myapp/Entries/MyLayoutBuilder.dart';
import 'package:myapp/Entries/MyListener.dart';
import 'package:myapp/Entries/MyNavigator.dart';
import 'package:myapp/Entries/MyPlatformViewWidget.dart';
import 'package:myapp/Entries/MyStreamBuilder.dart';
import 'package:myapp/Entries/BasicWidget/MyBasicWidget.dart';
import 'package:myapp/Entries/MyGestureDetector.dart';
import 'package:myapp/Entries/MyThemeWidget.dart';
import 'package:myapp/Entries/MyWebView.dart';
import 'package:myapp/Entries/PassDataToSuperWidget.dart';
import 'package:myapp/Entries/MyWidgetLifeCyclePage.dart';
import 'package:myapp/Entries/Route/MyRouteFirstPage.dart';
import 'package:myapp/Entries/Route/MyRouteSecondPage.dart';

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
  route,
  platformView,

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
      case ListItemType.route:
        return "Route";
      case ListItemType.platformView:
        return "Platform View";
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
      case ListItemType.route:
        content = const MyRouteFirstPage();
        break;
      case ListItemType.platformView:
        content = const MyPlatformViewWidget();
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

