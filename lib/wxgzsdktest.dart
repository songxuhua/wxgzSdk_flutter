import 'dart:async';

import 'package:flutter/services.dart';

class Wxgzsdktest {
  static const MethodChannel _channel =
      const MethodChannel('wxgzsdktest');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
