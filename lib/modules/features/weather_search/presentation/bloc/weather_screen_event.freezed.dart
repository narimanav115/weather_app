// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(CityModel city) selectCity,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(CityModel city)? selectCity,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(CityModel city)? selectCity,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherScreenEventSearch value) search,
    required TResult Function(_WeatherScreenEventSelectCity value) selectCity,
    required TResult Function(_WeatherScreenEventClear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherScreenEventSearch value)? search,
    TResult? Function(_WeatherScreenEventSelectCity value)? selectCity,
    TResult? Function(_WeatherScreenEventClear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherScreenEventSearch value)? search,
    TResult Function(_WeatherScreenEventSelectCity value)? selectCity,
    TResult Function(_WeatherScreenEventClear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherScreenEventCopyWith<$Res> {
  factory $WeatherScreenEventCopyWith(
          WeatherScreenEvent value, $Res Function(WeatherScreenEvent) then) =
      _$WeatherScreenEventCopyWithImpl<$Res, WeatherScreenEvent>;
}

/// @nodoc
class _$WeatherScreenEventCopyWithImpl<$Res, $Val extends WeatherScreenEvent>
    implements $WeatherScreenEventCopyWith<$Res> {
  _$WeatherScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherScreenEventSearchImplCopyWith<$Res> {
  factory _$$WeatherScreenEventSearchImplCopyWith(
          _$WeatherScreenEventSearchImpl value,
          $Res Function(_$WeatherScreenEventSearchImpl) then) =
      __$$WeatherScreenEventSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$WeatherScreenEventSearchImplCopyWithImpl<$Res>
    extends _$WeatherScreenEventCopyWithImpl<$Res,
        _$WeatherScreenEventSearchImpl>
    implements _$$WeatherScreenEventSearchImplCopyWith<$Res> {
  __$$WeatherScreenEventSearchImplCopyWithImpl(
      _$WeatherScreenEventSearchImpl _value,
      $Res Function(_$WeatherScreenEventSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$WeatherScreenEventSearchImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherScreenEventSearchImpl implements _WeatherScreenEventSearch {
  const _$WeatherScreenEventSearchImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'WeatherScreenEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherScreenEventSearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherScreenEventSearchImplCopyWith<_$WeatherScreenEventSearchImpl>
      get copyWith => __$$WeatherScreenEventSearchImplCopyWithImpl<
          _$WeatherScreenEventSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(CityModel city) selectCity,
    required TResult Function() clear,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(CityModel city)? selectCity,
    TResult? Function()? clear,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(CityModel city)? selectCity,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherScreenEventSearch value) search,
    required TResult Function(_WeatherScreenEventSelectCity value) selectCity,
    required TResult Function(_WeatherScreenEventClear value) clear,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherScreenEventSearch value)? search,
    TResult? Function(_WeatherScreenEventSelectCity value)? selectCity,
    TResult? Function(_WeatherScreenEventClear value)? clear,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherScreenEventSearch value)? search,
    TResult Function(_WeatherScreenEventSelectCity value)? selectCity,
    TResult Function(_WeatherScreenEventClear value)? clear,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _WeatherScreenEventSearch implements WeatherScreenEvent {
  const factory _WeatherScreenEventSearch(final String query) =
      _$WeatherScreenEventSearchImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$WeatherScreenEventSearchImplCopyWith<_$WeatherScreenEventSearchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherScreenEventSelectCityImplCopyWith<$Res> {
  factory _$$WeatherScreenEventSelectCityImplCopyWith(
          _$WeatherScreenEventSelectCityImpl value,
          $Res Function(_$WeatherScreenEventSelectCityImpl) then) =
      __$$WeatherScreenEventSelectCityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CityModel city});

  $CityModelCopyWith<$Res> get city;
}

/// @nodoc
class __$$WeatherScreenEventSelectCityImplCopyWithImpl<$Res>
    extends _$WeatherScreenEventCopyWithImpl<$Res,
        _$WeatherScreenEventSelectCityImpl>
    implements _$$WeatherScreenEventSelectCityImplCopyWith<$Res> {
  __$$WeatherScreenEventSelectCityImplCopyWithImpl(
      _$WeatherScreenEventSelectCityImpl _value,
      $Res Function(_$WeatherScreenEventSelectCityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_$WeatherScreenEventSelectCityImpl(
      null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res> get city {
    return $CityModelCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc

class _$WeatherScreenEventSelectCityImpl
    implements _WeatherScreenEventSelectCity {
  const _$WeatherScreenEventSelectCityImpl(this.city);

  @override
  final CityModel city;

  @override
  String toString() {
    return 'WeatherScreenEvent.selectCity(city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherScreenEventSelectCityImpl &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherScreenEventSelectCityImplCopyWith<
          _$WeatherScreenEventSelectCityImpl>
      get copyWith => __$$WeatherScreenEventSelectCityImplCopyWithImpl<
          _$WeatherScreenEventSelectCityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(CityModel city) selectCity,
    required TResult Function() clear,
  }) {
    return selectCity(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(CityModel city)? selectCity,
    TResult? Function()? clear,
  }) {
    return selectCity?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(CityModel city)? selectCity,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (selectCity != null) {
      return selectCity(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherScreenEventSearch value) search,
    required TResult Function(_WeatherScreenEventSelectCity value) selectCity,
    required TResult Function(_WeatherScreenEventClear value) clear,
  }) {
    return selectCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherScreenEventSearch value)? search,
    TResult? Function(_WeatherScreenEventSelectCity value)? selectCity,
    TResult? Function(_WeatherScreenEventClear value)? clear,
  }) {
    return selectCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherScreenEventSearch value)? search,
    TResult Function(_WeatherScreenEventSelectCity value)? selectCity,
    TResult Function(_WeatherScreenEventClear value)? clear,
    required TResult orElse(),
  }) {
    if (selectCity != null) {
      return selectCity(this);
    }
    return orElse();
  }
}

abstract class _WeatherScreenEventSelectCity implements WeatherScreenEvent {
  const factory _WeatherScreenEventSelectCity(final CityModel city) =
      _$WeatherScreenEventSelectCityImpl;

  CityModel get city;
  @JsonKey(ignore: true)
  _$$WeatherScreenEventSelectCityImplCopyWith<
          _$WeatherScreenEventSelectCityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherScreenEventClearImplCopyWith<$Res> {
  factory _$$WeatherScreenEventClearImplCopyWith(
          _$WeatherScreenEventClearImpl value,
          $Res Function(_$WeatherScreenEventClearImpl) then) =
      __$$WeatherScreenEventClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherScreenEventClearImplCopyWithImpl<$Res>
    extends _$WeatherScreenEventCopyWithImpl<$Res,
        _$WeatherScreenEventClearImpl>
    implements _$$WeatherScreenEventClearImplCopyWith<$Res> {
  __$$WeatherScreenEventClearImplCopyWithImpl(
      _$WeatherScreenEventClearImpl _value,
      $Res Function(_$WeatherScreenEventClearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherScreenEventClearImpl implements _WeatherScreenEventClear {
  const _$WeatherScreenEventClearImpl();

  @override
  String toString() {
    return 'WeatherScreenEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherScreenEventClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(CityModel city) selectCity,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(CityModel city)? selectCity,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(CityModel city)? selectCity,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherScreenEventSearch value) search,
    required TResult Function(_WeatherScreenEventSelectCity value) selectCity,
    required TResult Function(_WeatherScreenEventClear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherScreenEventSearch value)? search,
    TResult? Function(_WeatherScreenEventSelectCity value)? selectCity,
    TResult? Function(_WeatherScreenEventClear value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherScreenEventSearch value)? search,
    TResult Function(_WeatherScreenEventSelectCity value)? selectCity,
    TResult Function(_WeatherScreenEventClear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _WeatherScreenEventClear implements WeatherScreenEvent {
  const factory _WeatherScreenEventClear() = _$WeatherScreenEventClearImpl;
}
