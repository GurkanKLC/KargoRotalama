// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_routes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentRoutesImpl _$$CurrentRoutesImplFromJson(Map<String, dynamic> json) =>
    _$CurrentRoutesImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CurrentRoute.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalRoutesDistance:
          (json['totalRoutesDistance'] as num?)?.toDouble() ?? 0.0,
      totalRoutesTime: (json['totalRoutesTime'] as num?)?.toDouble() ?? 0.0,
      totalPackageCount: (json['totalPackageCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CurrentRoutesImplToJson(_$CurrentRoutesImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalRoutesDistance': instance.totalRoutesDistance,
      'totalRoutesTime': instance.totalRoutesTime,
      'totalPackageCount': instance.totalPackageCount,
    };
