
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class FlutterPluginDemo {
  static const MethodChannel _channel = MethodChannel('flutter_plugin_demo');

  static Future<List<String>?> get nameList async {
    final List<Object?> version = await _channel.invokeMethod('getPlatformVersion');
    List<String> nameList = <String>[];
    version.forEach((element) {
      nameList.add(element as String);
    });
    return nameList;
  }
}
