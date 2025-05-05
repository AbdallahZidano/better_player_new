import 'package:collection/collection.dart';

import 'scheme_data.dart';

class DrmInitData {
  DrmInitData({this.schemeType, this.schemeData = const []});

  final List<SchemeData> schemeData;
  final String? schemeType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrmInitData &&
          runtimeType == other.runtimeType &&
          schemeType == other.schemeType &&
          const ListEquality<SchemeData>().equals(other.schemeData, schemeData);

  @override
  int get hashCode => Object.hash(schemeType, schemeData);
}
