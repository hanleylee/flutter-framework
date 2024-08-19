import 'package:flutter/material.dart';
import 'package:myapp/Entries/MVVM/biz_mvvm.dart';
import 'package:myapp/Entries/MyAppLifeCycle.dart';
import 'package:myapp/Entries/MyFutureBuilder.dart';
import 'package:myapp/Entries/MyLayoutBuilder.dart';
import 'package:myapp/Entries/MyListener.dart';
import 'package:myapp/Entries/MyNavigator.dart';
import 'package:myapp/Entries/MVVM/mvvm.dart';
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
  notifier,
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
      case ListItemType.notifier:
        return "My Notifier";
    }
  }

  Widget get widget {
    Widget content;
    switch (this) {
      case ListItemType.none:
        return const Text('none');
      case ListItemType.basicWidget:
        return MyBasicWidget();
      case ListItemType.theme:
        return MyThemeWidget();
      case ListItemType.gestureDetector:
        return const MyGestureDetector();
      case ListItemType.passDataToSuper:
        return PassDataToSuperWidget();
      case ListItemType.webview:
        return MyWebView();
      case ListItemType.lifecycle:
        return WidgetLiftCyclePage();
      case ListItemType.layoutBuilder:
        return MyLayoutBuilder();
      case ListItemType.futureBuilder:
        return const MyFutureBuilder();
      case ListItemType.streamBuilder:
        return const MyStreamBuilder();
      case ListItemType.myAppLifeCycle:
        return const MyAppLifeCycle();
      case ListItemType.navigator:
        return const MyNavigator();
      case ListItemType.listener:
        return const MyListener();
      case ListItemType.route:
        return const MyRouteFirstPage();
      case ListItemType.platformView:
        return MyPlatformViewWidget();
      case ListItemType.notifier:
        return BizView(BizViewModel('h', 30));
    }
  }

  void talk() {
    print('meow');
  }
}
