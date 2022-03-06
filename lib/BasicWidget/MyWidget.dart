import 'package:flutter/material.dart';
import './MyContainer.dart';
import './MyRow.dart';
import './MyIcon.dart';
import './MyText.dart';
import './MyImage.dart';
import './MyAppBar.dart';
import './MyColumn.dart';
import './MyScaffold.dart';
import './MyFlutterLogo.dart';
import './MyPlaceholder.dart';
import './MyRaisedButton.dart';
import './MyList.dart';

enum WidgetType {
  container,
  row,
  column,
  image,
  text,
  icon,
  raisedButton,
  scaffold,
  appBar,
  flutterLogo,
  placeholder,
  list,
}

extension WidgetTypeExtension on WidgetType {
  Widget get widget {
    switch (this) {
      case WidgetType.container:
        return MyContainer();
      case WidgetType.row:
        return MyRow();
      case WidgetType.column:
        return MyColumn();
      case WidgetType.image:
        return MyImage();
      case WidgetType.text:
        return MyText();
      case WidgetType.icon:
        return MyIcon();
      case WidgetType.raisedButton:
        return MyRaisedButton();
      case WidgetType.scaffold:
        return MyScaffold();
      case WidgetType.appBar:
        return MyAppBar();
      case WidgetType.flutterLogo:
        return MyFlutterLogo();
      case WidgetType.placeholder:
        return MyPlaceholder();
      case WidgetType.list:
        return MyList();
      // default:
      //   return Text('none');
    }
  }

  String get rowName {
    switch (this) {
      case WidgetType.container:
        return 'Container';
      case WidgetType.row:
        return 'Row';
      case WidgetType.column:
        return 'Column';
      case WidgetType.image:
        return 'Image';
      case WidgetType.text:
        return 'Text';
      case WidgetType.icon:
        return 'Icon';
      case WidgetType.raisedButton:
        return 'Raised Button';
      case WidgetType.scaffold:
        return 'scaffold';
      case WidgetType.appBar:
        return 'App Bar';
      case WidgetType.flutterLogo:
        return 'Flutter Logo';
      case WidgetType.placeholder:
        return 'Place Holder';
      case WidgetType.list:
        return 'List';
      // default:
      //   return 'Not Definied';
    }
  }
}

class MyWidget extends StatelessWidget {
  MyWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: WidgetType.values.map((type) {
        return ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => type.widget));
          },
          leading: Icon(Icons.map),
          title: Text(type.rowName),
        );
      }).toList()),
    );
  }
}
