
import 'package:payyo_sdk/src/config/payyo_api_configuration.dart';

class PayyoMobileSDK {
  PayyoAPIConfiguration _configurations;

  PayyoMobileSDK._();

  static PayyoMobileSDK _instance = PayyoMobileSDK._();

  static get instance => _instance;

  static get configurations => _instance._configurations;

  static set configurations(PayyoAPIConfiguration payyoAPIConfiguration) {
    _instance._configurations = payyoAPIConfiguration;
  }
}
