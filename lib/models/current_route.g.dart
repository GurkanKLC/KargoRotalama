// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentRouteImpl _$$CurrentRouteImplFromJson(Map<String, dynamic> json) =>
    _$CurrentRouteImpl(
      routeId: json['routeId'] as String?,
      routeName: json['routeName'] as String?,
      packageCount: (json['packageCount'] as num?)?.toInt(),
      routeStartTime: json['routeStartTime'] as String?,
      estimatedDuration: (json['estimatedDuration'] as num?)?.toInt(),
      totalDistance: (json['totalDistance'] as num?)?.toInt(),
      active: json['active'] as bool?,
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => Locations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CurrentRouteImplToJson(_$CurrentRouteImpl instance) =>
    <String, dynamic>{
      'routeId': instance.routeId,
      'routeName': instance.routeName,
      'packageCount': instance.packageCount,
      'routeStartTime': instance.routeStartTime,
      'estimatedDuration': instance.estimatedDuration,
      'totalDistance': instance.totalDistance,
      'active': instance.active,
      'locations': instance.locations,
    };
