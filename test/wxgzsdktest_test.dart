import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wxgzsdktest/wxgzsdktest.dart';

void main() {
  const MethodChannel channel = MethodChannel('wxgzsdktest');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Wxgzsdktest.platformVersion, '42');
  });
}
