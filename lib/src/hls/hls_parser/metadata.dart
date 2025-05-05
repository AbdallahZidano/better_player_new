import 'package:better_player/src/hls/hls_parser/hls_track_metadata_entry.dart';
import 'package:collection/collection.dart';

class Metadata {
  Metadata(this.list);

  final List<HlsTrackMetadataEntry> list;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Metadata &&
          runtimeType == other.runtimeType &&
          const ListEquality<HlsTrackMetadataEntry>().equals(other.list, list);

  @override
  int get hashCode => list.hashCode;
}
