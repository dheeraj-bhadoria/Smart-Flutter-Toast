
import 'smartfluttertoast_platform_interface.dart';

class Smartfluttertoast {
  Future<String?> getPlatformVersion() {
    return SmartfluttertoastPlatform.instance.getPlatformVersion();
  }

  showToast(String message){
    SmartfluttertoastPlatform.instance.showToast(message);
  }

}
