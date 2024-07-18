// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_routes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentRoutes _$CurrentRoutesFromJson(Map<String, dynamic> json) {
  return _CurrentRoutes.fromJson(json);
}

/// @nodoc
mixin _$CurrentRoutes {
  List<CurrentRoute>? get data => throw _privateConstructorUsedError;
  double get totalRoutesDistance => throw _privateConstructorUsedError;
  double get totalRoutesTime => throw _privateConstructorUsedError;
  int get totalPackageCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentRoutesCopyWith<CurrentRoutes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentRoutesCopyWith<$Res> {
  factory $CurrentRoutesCopyWith(
          CurrentRoutes value, $Res Function(CurrentRoutes) then) =
      _$CurrentRoutesCopyWithImpl<$Res, CurrentRoutes>;
  @useResult
  $Res call(
      {List<CurrentRoute>? data,
      double totalRoutesDistance,
      double totalRoutesTime,
      int totalPackageCount});
}

/// @nodoc
class _$CurrentRoutesCopyWithImpl<$Res, $Val extends CurrentRoutes>
    implements $CurrentRoutesCopyWith<$Res> {
  _$CurrentRoutesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? totalRoutesDistance = null,
    Object? totalRoutesTime = null,
    Object? totalPackageCount = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CurrentRoute>?,
      totalRoutesDistance: null == totalRoutesDistance
          ? _value.totalRoutesDistance
          : totalRoutesDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalRoutesTime: null == totalRoutesTime
          ? _value.totalRoutesTime
          : totalRoutesTime // ignore: cast_nullable_to_non_nullable
              as double,
      totalPackageCount: null == totalPackageCount
          ? _value.totalPackageCount
          : totalPackageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentRoutesImplCopyWith<$Res>
    implements $CurrentRoutesCopyWith<$Res> {
  factory _$$CurrentRoutesImplCopyWith(
          _$CurrentRoutesImpl value, $Res Function(_$CurrentRoutesImpl) then) =
      __$$CurrentRoutesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CurrentRoute>? data,
      double totalRoutesDistance,
      double totalRoutesTime,
      int totalPackageCount});
}

/// @nodoc
class __$$CurrentRoutesImplCopyWithImpl<$Res>
    extends _$CurrentRoutesCopyWithImpl<$Res, _$CurrentRoutesImpl>
    implements _$$CurrentRoutesImplCopyWith<$Res> {
  __$$CurrentRoutesImplCopyWithImpl(
      _$CurrentRoutesImpl _value, $Res Function(_$CurrentRoutesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? totalRoutesDistance = null,
    Object? totalRoutesTime = null,
    Object? totalPackageCount = null,
  }) {
    return _then(_$CurrentRoutesImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CurrentRoute>?,
      totalRoutesDistance: null == totalRoutesDistance
          ? _value.totalRoutesDistance
          : totalRoutesDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalRoutesTime: null == totalRoutesTime
          ? _value.totalRoutesTime
          : totalRoutesTime // ignore: cast_nullable_to_non_nullable
              as double,
      totalPackageCount: null == totalPackageCount
          ? _value.totalPackageCount
          : totalPackageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentRoutesImpl implements _CurrentRoutes {
  const _$CurrentRoutesImpl(
      {this.data,
      this.totalRoutesDistance = 0.0,
      this.totalRoutesTime = 0.0,
      this.totalPackageCount = 0});

  factory _$CurrentRoutesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentRoutesImplFromJson(json);

  @override
  final List<CurrentRoute>? data;
  @override
  @JsonKey()
  final double totalRoutesDistance;
  @override
  @JsonKey()
  final double totalRoutesTime;
  @override
  @JsonKey()
  final int totalPackageCount;

  @override
  String toString() {
    return 'CurrentRoutes(data: $data, totalRoutesDistance: $totalRoutesDistance, totalRoutesTime: $totalRoutesTime, totalPackageCount: $totalPackageCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentRoutesImpl &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.totalRoutesDistance, totalRoutesDistance) ||
                other.totalRoutesDistance == totalRoutesDistance) &&
            (identical(other.totalRoutesTime, totalRoutesTime) ||
                other.totalRoutesTime == totalRoutesTime) &&
            (identical(other.totalPackageCount, totalPackageCount) ||
                other.totalPackageCount == totalPackageCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      totalRoutesDistance,
      totalRoutesTime,
      totalPackageCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentRoutesImplCopyWith<_$CurrentRoutesImpl> get copyWith =>
      __$$CurrentRoutesImplCopyWithImpl<_$CurrentRoutesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentRoutesImplToJson(
      this,
    );
  }
}

abstract class _CurrentRoutes implements CurrentRoutes {
  const factory _CurrentRoutes(
      {final List<CurrentRoute>? data,
      final double totalRoutesDistance,
      final double totalRoutesTime,
      final int totalPackageCount}) = _$CurrentRoutesImpl;

  factory _CurrentRoutes.fromJson(Map<String, dynamic> json) =
      _$CurrentRoutesImpl.fromJson;

  @override
  List<CurrentRoute>? get data;
  @override
  double get totalRoutesDistance;
  @override
  double get totalRoutesTime;
  @override
  int get totalPackageCount;
  @override
  @JsonKey(ignore: true)
  _$$CurrentRoutesImplCopyWith<_$CurrentRoutesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
