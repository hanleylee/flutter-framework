// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CounterModel with ChangeNotifier {
//   CounterModel({
//     required this.username,
//     this.counter = 0,
//   });
//
//   final String username;
//   final int counter;
//   int _count = 0;
//
//   int get count => _count;
//
//   CounterModel copyWith({
//     final String? username,
//     final int? counter,
//   }) {
//     return CounterModel(
//       username: username ?? this.username,
//       counter: counter ?? this.counter,
//     );
//   }
//
//   void increment() {
//     _count += 1;
//     notifyListeners();
//   }
// }
//
// class CounterNotifier extends ValueNotifier<CounterModel> {
//   CounterNotifier(CounterModel value) : super(value);
//
//   void increment() {
//     value = value.copyWith(counter: value.counter + 1);
//   }
// }
//
// class Provider<T extends Listenable> extends InheritedNotifier<T> {
//   const Provider({Key? key, required child, required notifier})
//       : super(key: key, child: child, notifier: notifier);
//
//   static T of<T extends Listenable>(BuildContext context) {
//     final provider = context.dependOnInheritedWidgetOfExactType<Provider<T>>();
//
//     if (provider == null) {
//       throw Exception("No Provider found in context");
//     }
//
//     final notifier = provider.notifier;
//
//     if (notifier == null) {
//       throw Exception("No notifier found in Provider");
//     }
//
//     return notifier;
//   }
// }
//
// class MyNotifier extends StatelessWidget {
//   final notifier = CounterNotifier(CounterModel(username: 'a', counter: 1));
//
//   @override
//   Widget build(BuildContext context) {
//     final counterNotifier = Provider.of<CounterNotifier>(context);
//     return Provider<CounterNotifier>(
//       notifier: notifier,
//       child: Scaffold(
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   '${counterNotifier.value.username} has pushed the button this many times:',
//                 ),
//                 Text(
//                   '${counterNotifier.value.counter}',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 ),
//               ],
//             ),
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () => counterNotifier.increment(),
//             child: const Icon(Icons.add),
//           )
//         // ),
//       ),
//     );
//   }
// }