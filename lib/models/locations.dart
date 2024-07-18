import 'package:freezed_annotation/freezed_annotation.dart';
part 'locations.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'locations.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Locations with _$Locations {
  const factory Locations({
    String? recipient,
    String? phone,
    String? address,
    double? targetLatitude,
    double? targetLongitude,
    String? packageId,
    bool? active,
    String? packageType,
  }) = _Locations;

  factory Locations.fromJson(Map<String, dynamic> json) => _$LocationsFromJson(json);
}