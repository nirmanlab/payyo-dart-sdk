/// pojo to contain configurations
class PayyoAPIConfiguration {
  String endpoint;
  String version;
  String secreteKey;
  String publicKey;

  String endpointWithVersion() {
    return '$endpoint/$version';
  }
}
