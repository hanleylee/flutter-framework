import 'package:flutter/material.dart';
import 'BasicWidget/MyWidget.dart';
import 'MyGestureDetector.dart';
import 'MyThemeWidget.dart';
import 'MyWebView.dart';
import 'PassDataToSuperWidget.dart';
import 'package:myapp/MyWidgetLifeCyclePage.dart';

enum ListItemType {
  none,
  basicWidget,
  theme,
  gestureDetector,
  passDataToSuper,
  webview,
  lifecycle,
}

extension ListItemTypeExtension on ListItemType {
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
    }
  }

  Widget get widget {
    Widget content;
    switch (this) {
      case ListItemType.none:
        content = const Text('none');
        break;
      case ListItemType.basicWidget:
        content = MyWidget();
        break;
      case ListItemType.theme:
        content = MyThemeWidget();
        break;
      case ListItemType.gestureDetector:
        content = MyGestureDetector();
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

