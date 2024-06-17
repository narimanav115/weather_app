// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CityModel {
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get stateCode => throw _privateConstructorUsedError;
  num? get longitude => throw _privateConstructorUsedError;
  num? get latitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityModelCopyWith<CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityModelCopyWith<$Res> {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) then) =
      _$CityModelCopyWithImpl<$Res, CityModel>;
  @useResult
  $Res call(
      {String name,
      String country,
      String stateCode,
      num? longitude,
      num? latitude});
}

/// @nodoc
class _$CityModelCopyWithImpl<$Res, $Val extends CityModel>
    implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? stateCode = null,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityModelImplCopyWith<$Res>
    implements $CityModelCopyWith<$Res> {
  factory _$$CityModelImplCopyWith(
          _$CityModelImpl value, $Res Function(_$CityModelImpl) then) =
      __$$CityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String country,
      String stateCode,
      num? longitude,
      num? latitude});
}

/// @nodoc
class __$$CityModelImplCopyWithImpl<$Res>
    extends _$CityModelCopyWithImpl<$Res, _$CityModelImpl>
    implements _$$CityModelImplCopyWith<$Res> {
  __$$CityModelImplCopyWithImpl(
      _$CityModelImpl _value, $Res Function(_$CityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? stateCode = null,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_$CityModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$CityModelImpl implements _CityModel {
  const _$CityModelImpl(
      {required this.name,
      required this.country,
      required this.stateCode,
      this.longitude,
      this.latitude});

  @override
  final String name;
  @override
  final String country;
  @override
  final String stateCode;
  @override
  final num? longitude;
  @override
  final num? latitude;

  @override
  String toString() {
    return 'CityModel(name: $name, country: $country, stateCode: $stateCode, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, country, stateCode, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityModelImplCopyWith<_$CityModelImpl> get copyWith =>
      __$$CityModelImplCopyWithImpl<_$CityModelImpl>(this, _$identity);
}

abstract class _CityModel implements CityModel {
  const factory _CityModel(
      {required final String name,
      required final String country,
      required final String stateCode,
      final num? longitude,
      final num? latitude}) = _$CityModelImpl;

  @override
  String get name;
  @override
  String get country;
  @override
  String get stateCode;
  @override
  num? get longitude;
  @override
  num? get latitude;
  @override
  @JsonKey(ignore: true)
  _$$CityModelImplCopyWith<_$CityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
