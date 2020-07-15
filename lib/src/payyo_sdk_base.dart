import 'package:payyo_sdk/src/config/payyo_api_configuration.dart';

class PayyoMobileSDK {
  PayyoAPIConfiguration _configurations;

  PayyoMobileSDK._();

  static final PayyoMobileSDK _instance = PayyoMobileSDK._();

  /// [PayyoAPIConfiguration] getter which returns the singleton [PayyoMobileSDK]
  /// instance's [PayyoAPIConfiguration].
  static PayyoAPIConfiguration get configurations => _instance._configurations;

  /// [PayyoAPIConfiguration] setter which sets the singleton [PayyoMobileSDK]
  /// instance's [PayyoAPIConfiguration].
  static set configurations(PayyoAPIConfiguration payyoAPIConfiguration) {
    _instance._configurations = payyoAPIConfiguration;
  }
}
