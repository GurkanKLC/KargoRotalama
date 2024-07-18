import 'package:freezed_annotation/freezed_annotation.dart';

import 'current_route.dart';
part 'current_routes.freezed.dart';
part 'current_routes.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CurrentRoutes with _$CurrentRoutes {
  const factory CurrentRoutes({
    List<CurrentRoute>? data,
    @Default(0.0) double totalRoutesDistance,
    @Default(0.0) double totalRoutesTime,
    @Default(0) int totalPackageCount,
  }) = _CurrentRoutes;

  factory CurrentRoutes.fromJsonByCalculate(Map<String, dynamic> json) {
    final data = (json['data'] as List<dynamic>?)
        ?.map((item) => CurrentRoute.fromJson(item as Map<String, dynamic>))
        .toList();

    double totalRoutesDistance = 0.0;
    double totalRoutesTime = 0.0;
    int totalPackageCount = 0;

    if (data != null) {
      for (var currentData in data) {
        totalPackageCount += currentData.packageCount ?? 0;
        totalRoutesDistance += currentData.totalDistance ?? 0.0;
        totalRoutesTime += currentData.estimatedDuration ?? 0.0;
      }
    }

    return CurrentRoutes(
      data: data,
      totalRoutesDistance: totalRoutesDistance,
      totalRoutesTime: totalRoutesTime,
      totalPackageCount: totalPackageCount,
    );
  }

  factory CurrentRoutes.fromJson(Map<String, dynamic> json) =>
      _$CurrentRoutesFromJson(json);

}