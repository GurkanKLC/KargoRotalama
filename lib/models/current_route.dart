import 'package:freezed_annotation/freezed_annotation.dart';

import 'locations.dart';
part 'current_route.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'current_route.g.dart';
@Freezed(makeCollectionsUnmodifiable: false)
class CurrentRoute with _$CurrentRoute {
  const factory CurrentRoute({
    String? routeId,
    String? routeName,
    int? packageCount,
    String? routeStartTime,
    int? estimatedDuration,
    int? totalDistance,
    bool? active,
    List<Locations>? locations,
  }) = _CurrentRoute;

  factory CurrentRoute.fromJson(Map<String, dynamic> json) => _$CurrentRouteFromJson(json);
}
