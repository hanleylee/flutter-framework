import 'package:flutter/material.dart';
import 'package:myapp/Entries/MVVM/Provider.dart';
import 'package:myapp/Entries/MVVM/mvvm.dart';

class BizViewModel extends BaseViewModel {
  String name;
  int age;

  BizViewModel(this.name, this.age);

  void increment() {
    age += 1;
    print(age);
    notifyListeners();
  }
}

class BizView extends BaseView<BizViewModel> {
  const BizView(BizViewModel viewmodel, {Key? key})
      : super(viewmodel, key: key);

  @override
  Widget build(BuildContext context) {
    // final counterNotifier = Provider.of<BaseNotifier>(context);
    final _ = Provider.of<BizViewModel>(context);
    return Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BizView1(viewmodel),
              const SizedBox(width: 10, height: 100, child: ColoredBox(color:Colors.lightBlue)),
              BizView2(viewmodel),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => viewmodel.increment(),
          child: const Icon(Icons.add),
        )
        // ),
        );
  }
}

class BizView1 extends BaseView<BizViewModel> {
  const BizView1(BizViewModel viewmodel, {Key? key})
      : super(viewmodel, key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '${viewmodel.age}',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}

class BizView2 extends BaseView<BizViewModel> {
  const BizView2(BizViewModel viewmodel, {Key? key})
      : super(viewmodel, key: key);

  @override
  Widget build(BuildContext context) {
    final notifier = Provider.of<BizViewModel>(context);
    return Center(
      child: Text(
        '${notifier.age}',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
