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
        return MyContainer();
      case BasicWidgetType.row:
        return MyRow();
      case BasicWidgetType.column:
        return MyColumn();
      case BasicWidgetType.image:
        return MyImage();
      case BasicWidgetType.text:
        return MyText();
      case BasicWidgetType.icon:
        return MyIcon();
      case BasicWidgetType.button:
        return const MyButton();
      case BasicWidgetType.scaffold:
        return MyScaffold();
      case BasicWidgetType.appBar:
        return MyAppBar();
      case BasicWidgetType.placeholder:
        return MyPlaceholder();
      case BasicWidgetType.list:
        return const MyList();
      case BasicWidgetType.listBuilder:
        return const MyListBuilder();
      case BasicWidgetType.listSeperator:
        return const MyListSeparator();
      case BasicWidgetType.customScrollView:
        return const MyCustomScrollView();
      case BasicWidgetType.customPaint:
        return MyCustomPainter();
    }
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
