// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherScreenState {
  CityModel? get selectedCity => throw _privateConstructorUsedError;
  IList<CityModel> get cities => throw _privateConstructorUsedError;
  WeatherDataModel? get weather => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherScreenStateCopyWith<WeatherScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherScreenStateCopyWith<$Res> {
  factory $WeatherScreenStateCopyWith(
          WeatherScreenState value, $Res Function(WeatherScreenState) then) =
      _$WeatherScreenStateCopyWithImpl<$Res, WeatherScreenState>;
  @useResult
  $Res call(
      {CityModel? selectedCity,
      IList<CityModel> cities,
      WeatherDataModel? weather,
      String? error});

  $CityModelCopyWith<$Res>? get selectedCity;
  $WeatherDataModelCopyWith<$Res>? get weather;
}

/// @nodoc
class _$WeatherScreenStateCopyWithImpl<$Res, $Val extends WeatherScreenState>
    implements $WeatherScreenStateCopyWith<$Res> {
  _$WeatherScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCity = freezed,
    Object? cities = null,
    Object? weather = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as IList<CityModel>,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherDataModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get selectedCity {
    if (_value.selectedCity == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.selectedCity!, (value) {
      return _then(_value.copyWith(selectedCity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherDataModelCopyWith<$Res>? get weather {
    if (_value.weather == null) {
      return null;
    }

    return $WeatherDataModelCopyWith<$Res>(_value.weather!, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherScreenStateImplCopyWith<$Res>
    implements $WeatherScreenStateCopyWith<$Res> {
  factory _$$WeatherScreenStateImplCopyWith(_$WeatherScreenStateImpl value,
          $Res Function(_$WeatherScreenStateImpl) then) =
      __$$WeatherScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CityModel? selectedCity,
      IList<CityModel> cities,
      WeatherDataModel? weather,
      String? error});

  @override
  $CityModelCopyWith<$Res>? get selectedCity;
  @override
  $WeatherDataModelCopyWith<$Res>? get weather;
}

/// @nodoc
class __$$WeatherScreenStateImplCopyWithImpl<$Res>
    extends _$WeatherScreenStateCopyWithImpl<$Res, _$WeatherScreenStateImpl>
    implements _$$WeatherScreenStateImplCopyWith<$Res> {
  __$$WeatherScreenStateImplCopyWithImpl(_$WeatherScreenStateImpl _value,
      $Res Function(_$WeatherScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCity = freezed,
    Object? cities = null,
    Object? weather = freezed,
    Object? error = freezed,
  }) {
    return _then(_$WeatherScreenStateImpl(
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as IList<CityModel>,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherDataModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WeatherScreenStateImpl implements _WeatherScreenState {
  const _$WeatherScreenStateImpl(
      {this.selectedCity = null,
      this.cities = const IListConst([]),
      this.weather = null,
      this.error = null});

  @override
  @JsonKey()
  final CityModel? selectedCity;
  @override
  @JsonKey()
  final IList<CityModel> cities;
  @override
  @JsonKey()
  final WeatherDataModel? weather;
  @override
  @JsonKey()
  final String? error;

  @override
  String toString() {
    return 'WeatherScreenState(selectedCity: $selectedCity, cities: $cities, weather: $weather, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherScreenStateImpl &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity) &&
            const DeepCollectionEquality().equals(other.cities, cities) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCity,
      const DeepCollectionEquality().hash(cities), weather, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherScreenStateImplCopyWith<_$WeatherScreenStateImpl> get copyWith =>
      __$$WeatherScreenStateImplCopyWithImpl<_$WeatherScreenStateImpl>(
          this, _$identity);
}

abstract class _WeatherScreenState implements WeatherScreenState {
  const factory _WeatherScreenState(
      {final CityModel? selectedCity,
      final IList<CityModel> cities,
      final WeatherDataModel? weather,
      final String? error}) = _$WeatherScreenStateImpl;

  @override
  CityModel? get selectedCity;
  @override
  IList<CityModel> get cities;
  @override
  WeatherDataModel? get weather;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$WeatherScreenStateImplCopyWith<_$WeatherScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
