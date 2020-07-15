
import 'package:payyo_sdk/src/config/payyo_api_configuration.dart';

class PayyoMobileSDK {
  PayyoAPIConfiguration _configurations;

  PayyoMobileSDK._();

  static final PayyoMobileSDK _instance = PayyoMobileSDK._();

  static PayyoMobileSDK get instance => _instance;

  static PayyoAPIConfiguration get configurations => _instance._configurations;

  static set configurations(PayyoAPIConfiguration payyoAPIConfiguration) {
    _instance._configurations = payyoAPIConfiguration;
  }
}
