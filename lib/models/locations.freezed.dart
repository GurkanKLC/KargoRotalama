// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Locations _$LocationsFromJson(Map<String, dynamic> json) {
  return _Locations.fromJson(json);
}

/// @nodoc
mixin _$Locations {
  String? get recipient => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  double? get targetLatitude => throw _privateConstructorUsedError;
  double? get targetLongitude => throw _privateConstructorUsedError;
  String? get packageId => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  String? get packageType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationsCopyWith<Locations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsCopyWith<$Res> {
  factory $LocationsCopyWith(Locations value, $Res Function(Locations) then) =
      _$LocationsCopyWithImpl<$Res, Locations>;
  @useResult
  $Res call(
      {String? recipient,
      String? phone,
      String? address,
      double? targetLatitude,
      double? targetLongitude,
      String? packageId,
      bool? active,
      String? packageType});
}

/// @nodoc
class _$LocationsCopyWithImpl<$Res, $Val extends Locations>
    implements $LocationsCopyWith<$Res> {
  _$LocationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipient = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? targetLatitude = freezed,
    Object? targetLongitude = freezed,
    Object? packageId = freezed,
    Object? active = freezed,
    Object? packageType = freezed,
  }) {
    return _then(_value.copyWith(
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      targetLatitude: freezed == targetLatitude
          ? _value.targetLatitude
          : targetLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      targetLongitude: freezed == targetLongitude
          ? _value.targetLongitude
          : targetLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      packageType: freezed == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationsImplCopyWith<$Res>
    implements $LocationsCopyWith<$Res> {
  factory _$$LocationsImplCopyWith(
          _$LocationsImpl value, $Res Function(_$LocationsImpl) then) =
      __$$LocationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? recipient,
      String? phone,
      String? address,
      double? targetLatitude,
      double? targetLongitude,
      String? packageId,
      bool? active,
      String? packageType});
}

/// @nodoc
class __$$LocationsImplCopyWithImpl<$Res>
    extends _$LocationsCopyWithImpl<$Res, _$LocationsImpl>
    implements _$$LocationsImplCopyWith<$Res> {
  __$$LocationsImplCopyWithImpl(
      _$LocationsImpl _value, $Res Function(_$LocationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipient = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? targetLatitude = freezed,
    Object? targetLongitude = freezed,
    Object? packageId = freezed,
    Object? active = freezed,
    Object? packageType = freezed,
  }) {
    return _then(_$LocationsImpl(
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      targetLatitude: freezed == targetLatitude
          ? _value.targetLatitude
          : targetLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      targetLongitude: freezed == targetLongitude
          ? _value.targetLongitude
          : targetLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      packageType: freezed == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationsImpl implements _Locations {
  const _$LocationsImpl(
      {this.recipient,
      this.phone,
      this.address,
      this.targetLatitude,
      this.targetLongitude,
      this.packageId,
      this.active,
      this.packageType});

  factory _$LocationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationsImplFromJson(json);

  @override
  final String? recipient;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final double? targetLatitude;
  @override
  final double? targetLongitude;
  @override
  final String? packageId;
  @override
  final bool? active;
  @override
  final String? packageType;

  @override
  String toString() {
    return 'Locations(recipient: $recipient, phone: $phone, address: $address, targetLatitude: $targetLatitude, targetLongitude: $targetLongitude, packageId: $packageId, active: $active, packageType: $packageType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsImpl &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.targetLatitude, targetLatitude) ||
                other.targetLatitude == targetLatitude) &&
            (identical(other.targetLongitude, targetLongitude) ||
                other.targetLongitude == targetLongitude) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.packageType, packageType) ||
                other.packageType == packageType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recipient, phone, address,
      targetLatitude, targetLongitude, packageId, active, packageType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsImplCopyWith<_$LocationsImpl> get copyWith =>
      __$$LocationsImplCopyWithImpl<_$LocationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationsImplToJson(
      this,
    );
  }
}

abstract class _Locations implements Locations {
  const factory _Locations(
      {final String? recipient,
      final String? phone,
      final String? address,
      final double? targetLatitude,
      final double? targetLongitude,
      final String? packageId,
      final bool? active,
      final String? packageType}) = _$LocationsImpl;

  factory _Locations.fromJson(Map<String, dynamic> json) =
      _$LocationsImpl.fromJson;

  @override
  String? get recipient;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  double? get targetLatitude;
  @override
  double? get targetLongitude;
  @override
  String? get packageId;
  @override
  bool? get active;
  @override
  String? get packageType;
  @override
  @JsonKey(ignore: true)
  _$$LocationsImplCopyWith<_$LocationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
