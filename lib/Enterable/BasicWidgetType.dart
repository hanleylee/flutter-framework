import 'package:flutter/material.dart';
import 'package:myapp/Entries/BasicWidget/MyButton.dart';
import 'package:myapp/Entries/BasicWidget/MyContainer.dart';
import 'package:myapp/Entries/BasicWidget/MyCustomScrollView.dart';
import 'package:myapp/Entries/BasicWidget/MyListBuilder.dart';
import 'package:myapp/Entries/BasicWidget/MyListSeparator.dart';
import 'package:myapp/Entries/BasicWidget/MyRow.dart';
import 'package:myapp/Entries/BasicWidget/MyIcon.dart';
import 'package:myapp/Entries/BasicWidget/MyText.dart';
import 'package:myapp/Entries/BasicWidget/MyImage.dart';
import 'package:myapp/Entries/BasicWidget/MyAppBar.dart';
import 'package:myapp/Entries/BasicWidget/MyColumn.dart';
import 'package:myapp/Entries/BasicWidget/MyScaffold.dart';
import 'package:myapp/Entries/BasicWidget/MyFlutterLogo.dart';
import 'package:myapp/Entries/BasicWidget/MyPlaceholder.dart';
import 'package:myapp/Entries/BasicWidget/MyButton.dart';
import 'package:myapp/Entries/BasicWidget/MyList.dart';
import 'package:myapp/Entries/BasicWidget/MyCustomPaint.dart';

enum BasicWidgetType {
  container,
  row,
  column,
  image,
  text,
  icon,
  button,
  scaffold,
  appBar,
  flutterLogo,
  placeholder,
  list,
  listBuilder,
  listSeperator,
  customScrollView,
  customPaint
}

extension WidgetTypeExtension on BasicWidgetType {
  Widget get widget {
    Widget content;
    switch (this) {
      case BasicWidgetType.container:
        content = MyContainer();
        break;
      case BasicWidgetType.row:
        content = MyRow();
        break;
      case BasicWidgetType.column:
        content = MyColumn();
        break;
      case BasicWidgetType.image:
        content = MyImage();
        break;
      case BasicWidgetType.text:
        content = MyText();
        break;
      case BasicWidgetType.icon:
        content = MyIcon();
        break;
      case BasicWidgetType.button:
        content = const MyButton();
        break;
      case BasicWidgetType.scaffold:
        content = MyScaffold();
        break;
      case BasicWidgetType.appBar:
        content = MyAppBar();
        break;
      case BasicWidgetType.flutterLogo:
        content = MyFlutterLogo();
        break;
      case BasicWidgetType.placeholder:
        content = MyPlaceholder();
        break;
      case BasicWidgetType.list:
        content = const MyList();
        break;
      case BasicWidgetType.listBuilder:
        content = const MyListBuilder();
        break;
      case BasicWidgetType.listSeperator:
        content = const MyListSeparator();
        break;
      case BasicWidgetType.customScrollView:
        content = const MyCustomScrollView();
        break;
      case BasicWidgetType.customPaint:
        content = MyCustomPainter();
        break;
    // default:
    //   return Text('none');
    }
    return Scaffold(
      body: content,
      appBar: AppBar(title: Text(rowName)),
    );
  }

  String get rowName {
    switch (this) {
      case BasicWidgetType.container:
        return 'Container';
      case BasicWidgetType.row:
        return 'Row';
      case BasicWidgetType.column:
        return 'Column';
      case BasicWidgetType.image:
        return 'Image';
      case BasicWidgetType.text:
        return 'Text';
      case BasicWidgetType.icon:
        return 'Icon';
      case BasicWidgetType.button:
        return 'Button';
      case BasicWidgetType.scaffold:
        return 'scaffold';
      case BasicWidgetType.appBar:
        return 'App Bar';
      case BasicWidgetType.flutterLogo:
        return 'Flutter Logo';
      case BasicWidgetType.placeholder:
        return 'Place Holder';
      case BasicWidgetType.list:
        return 'List';
      case BasicWidgetType.listBuilder:
        return "List Builder";
      case BasicWidgetType.listSeperator:
        return "List Separator";
      case BasicWidgetType.customScrollView:
        return "Custom ScrollView";
      case BasicWidgetType.customPaint:
        return "Custom Painter";
    // default:
    //   return 'Not Definied';
    }
  }
}
