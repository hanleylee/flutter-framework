import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyPlatformViewWidget extends StatelessWidget {
  const MyPlatformViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This is used in the platform side to register the view.
    const String viewType = '<platform-view-type>';
    // Pass parameters to the platform side.
    final Map<String, dynamic> creationParams = <String, dynamic>{};

    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return Column(
        children: [
          Text("Flutter header"),
          Expanded(
            child: UiKitView(
              viewType: viewType,
              layoutDirection: TextDirection.ltr,
              creationParams: creationParams,
              creationParamsCodec: const StandardMessageCodec(),
            ),
          ),
          Text("Flutter footer"),
        ],
      );
    } else {
      return Text("123");
    }
    // return Container();
  }
}
