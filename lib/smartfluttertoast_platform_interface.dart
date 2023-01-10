import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:smartfluttertoast/smartfluttertoast.dart';

import 'smartfluttertoast_method_channel.dart';

abstract class SmartfluttertoastPlatform extends PlatformInterface {
  /// Constructs a SmartfluttertoastPlatform.
  SmartfluttertoastPlatform() : super(token: _token);

  static final Object _token = Object();

  static SmartfluttertoastPlatform _instance = MethodChannelSmartfluttertoast();

  /// The default instance of [SmartfluttertoastPlatform] to use.
  ///
  /// Defaults to [MethodChannelSmartfluttertoast].
  static SmartfluttertoastPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SmartfluttertoastPlatform] when
  /// they register themselves.
  static set instance(SmartfluttertoastPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  showToast(String message){
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

}
