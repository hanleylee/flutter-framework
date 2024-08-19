import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Entries/MVVM/Provider.dart';

abstract class BaseViewModel with ChangeNotifier {}

// class DummyNotifier<T extends BaseViewModel> extends ValueNotifier<T> {
//   DummyNotifier(T value) : super(value);
// }

abstract class BaseView<T extends BaseViewModel> extends StatefulWidget {
  final T viewmodel;

  const BaseView(this.viewmodel, {Key? key}) : super(key: key);

  // final notifier = BaseNotifier(BizViewModel());
  @override
  State<StatefulWidget> createState() => BaseViewState<T>();

  // custom build
  Widget build(BuildContext context);
}

class BaseViewState<T extends BaseViewModel> extends State<BaseView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<T>(
        notifier: widget.viewmodel,
        child: Builder(builder: (cnt) {
          return widget.build(cnt);
        }));
  }
}
