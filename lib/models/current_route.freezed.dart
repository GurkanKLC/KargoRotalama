// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentRoute _$CurrentRouteFromJson(Map<String, dynamic> json) {
  return _CurrentRoute.fromJson(json);
}

/// @nodoc
mixin _$CurrentRoute {
  String? get routeId => throw _privateConstructorUsedError;
  String? get routeName => throw _privateConstructorUsedError;
  int? get packageCount => throw _privateConstructorUsedError;
  String? get routeStartTime => throw _privateConstructorUsedError;
  int? get estimatedDuration => throw _privateConstructorUsedError;
  int? get totalDistance => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  List<Locations>? get locations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentRouteCopyWith<CurrentRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentRouteCopyWith<$Res> {
  factory $CurrentRouteCopyWith(
          CurrentRoute value, $Res Function(CurrentRoute) then) =
      _$CurrentRouteCopyWithImpl<$Res, CurrentRoute>;
  @useResult
  $Res call(
      {String? routeId,
      String? routeName,
      int? packageCount,
      String? routeStartTime,
      int? estimatedDuration,
      int? totalDistance,
      bool? active,
      List<Locations>? locations});
}

/// @nodoc
class _$CurrentRouteCopyWithImpl<$Res, $Val extends CurrentRoute>
    implements $CurrentRouteCopyWith<$Res> {
  _$CurrentRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeId = freezed,
    Object? routeName = freezed,
    Object? packageCount = freezed,
    Object? routeStartTime = freezed,
    Object? estimatedDuration = freezed,
    Object? totalDistance = freezed,
    Object? active = freezed,
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      routeId: freezed == routeId
          ? _value.routeId
          : routeId // ignore: cast_nullable_to_non_nullable
              as String?,
      routeName: freezed == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageCount: freezed == packageCount
          ? _value.packageCount
          : packageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      routeStartTime: freezed == routeStartTime
          ? _value.routeStartTime
          : routeStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedDuration: freezed == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDistance: freezed == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Locations>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentRouteImplCopyWith<$Res>
    implements $CurrentRouteCopyWith<$Res> {
  factory _$$CurrentRouteImplCopyWith(
          _$CurrentRouteImpl value, $Res Function(_$CurrentRouteImpl) then) =
      __$$CurrentRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? routeId,
      String? routeName,
      int? packageCount,
      String? routeStartTime,
      int? estimatedDuration,
      int? totalDistance,
      bool? active,
      List<Locations>? locations});
}

/// @nodoc
class __$$CurrentRouteImplCopyWithImpl<$Res>
    extends _$CurrentRouteCopyWithImpl<$Res, _$CurrentRouteImpl>
    implements _$$CurrentRouteImplCopyWith<$Res> {
  __$$CurrentRouteImplCopyWithImpl(
      _$CurrentRouteImpl _value, $Res Function(_$CurrentRouteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeId = freezed,
    Object? routeName = freezed,
    Object? packageCount = freezed,
    Object? routeStartTime = freezed,
    Object? estimatedDuration = freezed,
    Object? totalDistance = freezed,
    Object? active = freezed,
    Object? locations = freezed,
  }) {
    return _then(_$CurrentRouteImpl(
      routeId: freezed == routeId
          ? _value.routeId
          : routeId // ignore: cast_nullable_to_non_nullable
              as String?,
      routeName: freezed == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageCount: freezed == packageCount
          ? _value.packageCount
          : packageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      routeStartTime: freezed == routeStartTime
          ? _value.routeStartTime
          : routeStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedDuration: freezed == estimatedDuration
          ? _value.estimatedDuration
          : estimatedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDistance: freezed == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Locations>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentRouteImpl implements _CurrentRoute {
  const _$CurrentRouteImpl(
      {this.routeId,
      this.routeName,
      this.packageCount,
      this.routeStartTime,
      this.estimatedDuration,
      this.totalDistance,
      this.active,
      this.locations});

  factory _$CurrentRouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentRouteImplFromJson(json);

  @override
  final String? routeId;
  @override
  final String? routeName;
  @override
  final int? packageCount;
  @override
  final String? routeStartTime;
  @override
  final int? estimatedDuration;
  @override
  final int? totalDistance;
  @override
  final bool? active;
  @override
  final List<Locations>? locations;

  @override
  String toString() {
    return 'CurrentRoute(routeId: $routeId, routeName: $routeName, packageCount: $packageCount, routeStartTime: $routeStartTime, estimatedDuration: $estimatedDuration, totalDistance: $totalDistance, active: $active, locations: $locations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentRouteImpl &&
            (identical(other.routeId, routeId) || other.routeId == routeId) &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.packageCount, packageCount) ||
                other.packageCount == packageCount) &&
            (identical(other.routeStartTime, routeStartTime) ||
                other.routeStartTime == routeStartTime) &&
            (identical(other.estimatedDuration, estimatedDuration) ||
                other.estimatedDuration == estimatedDuration) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality().equals(other.locations, locations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      routeId,
      routeName,
      packageCount,
      routeStartTime,
      estimatedDuration,
      totalDistance,
      active,
      const DeepCollectionEquality().hash(locations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentRouteImplCopyWith<_$CurrentRouteImpl> get copyWith =>
      __$$CurrentRouteImplCopyWithImpl<_$CurrentRouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentRouteImplToJson(
      this,
    );
  }
}

abstract class _CurrentRoute implements CurrentRoute {
  const factory _CurrentRoute(
      {final String? routeId,
      final String? routeName,
      final int? packageCount,
      final String? routeStartTime,
      final int? estimatedDuration,
      final int? totalDistance,
      final bool? active,
      final List<Locations>? locations}) = _$CurrentRouteImpl;

  factory _CurrentRoute.fromJson(Map<String, dynamic> json) =
      _$CurrentRouteImpl.fromJson;

  @override
  String? get routeId;
  @override
  String? get routeName;
  @override
  int? get packageCount;
  @override
  String? get routeStartTime;
  @override
  int? get estimatedDuration;
  @override
  int? get totalDistance;
  @override
  bool? get active;
  @override
  List<Locations>? get locations;
  @override
  @JsonKey(ignore: true)
  _$$CurrentRouteImplCopyWith<_$CurrentRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
