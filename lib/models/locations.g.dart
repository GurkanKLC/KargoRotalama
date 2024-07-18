// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationsImpl _$$LocationsImplFromJson(Map<String, dynamic> json) =>
    _$LocationsImpl(
      recipient: json['recipient'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      targetLatitude: (json['targetLatitude'] as num?)?.toDouble(),
      targetLongitude: (json['targetLongitude'] as num?)?.toDouble(),
      packageId: json['packageId'] as String?,
      active: json['active'] as bool?,
      packageType: json['packageType'] as String?,
    );

Map<String, dynamic> _$$LocationsImplToJson(_$LocationsImpl instance) =>
    <String, dynamic>{
      'recipient': instance.recipient,
      'phone': instance.phone,
      'address': instance.address,
      'targetLatitude': instance.targetLatitude,
      'targetLongitude': instance.targetLongitude,
      'packageId': instance.packageId,
      'active': instance.active,
      'packageType': instance.packageType,
    };
