import 'package:flutter/material.dart';

// TODO: support multiple notifier(viewmodel)
class Provider<T extends Listenable> extends InheritedNotifier<T> {
  const Provider({Key? key, required child, required notifier})
      : super(key: key, child: child, notifier: notifier);

  static T of<T extends Listenable>(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<Provider<T>>();

    if (provider == null) {
      throw Exception("No Provider found in context");
    }

    final notifier = provider.notifier;

    if (notifier == null) {
      throw Exception("No notifier found in Provider");
    }

    return notifier;
  }
}

