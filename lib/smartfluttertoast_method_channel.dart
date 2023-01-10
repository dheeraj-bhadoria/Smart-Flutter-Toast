import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:smartfluttertoast/smartfluttertoast.dart';

import 'smartfluttertoast_platform_interface.dart';

/// An implementation of [SmartfluttertoastPlatform] that uses method channels.
class MethodChannelSmartfluttertoast extends SmartfluttertoastPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('smartfluttertoast');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  showToast(String message) {

    final Map<String, dynamic> params = <String, dynamic>{
      'msg': message
    };
    methodChannel.invokeMethod("showToast", params);
  }


}
