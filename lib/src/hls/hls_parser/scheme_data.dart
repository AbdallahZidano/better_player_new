import 'dart:typed_data';

class SchemeData {
  SchemeData({
    this.licenseServerUrl,
    required this.mimeType,
    this.data,
    this.requiresSecureDecryption,
  });

  final String? licenseServerUrl;
  final String mimeType;
  final Uint8List? data;
  final bool? requiresSecureDecryption;

  SchemeData copyWithData(Uint8List? data) => SchemeData(
        licenseServerUrl: licenseServerUrl,
        mimeType: mimeType,
        data: data,
        requiresSecureDecryption: requiresSecureDecryption,
      );

  @override
  bool operator ==(dynamic other) {
    if (other is SchemeData) {
      return other.mimeType == mimeType &&
          other.licenseServerUrl == licenseServerUrl &&
          other.requiresSecureDecryption == requiresSecureDecryption &&
          other.data == data;
    }

    return false;
  }

  @override
  int get hashCode =>
      Object.hash(licenseServerUrl, mimeType, data, requiresSecureDecryption);
}
