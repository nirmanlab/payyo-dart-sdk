import 'dart:convert';

String metadataToJson(Map<String, dynamic> metaData) {
  return jsonEncode(metaData);
}

Map<String, dynamic> metadataFromJson(String metaData) {
  return jsonDecode(metaData);
}