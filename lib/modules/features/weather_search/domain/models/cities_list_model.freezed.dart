// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CitiesListModel {
  IList<CityModel> get cities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CitiesListModelCopyWith<CitiesListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesListModelCopyWith<$Res> {
  factory $CitiesListModelCopyWith(
          CitiesListModel value, $Res Function(CitiesListModel) then) =
      _$CitiesListModelCopyWithImpl<$Res, CitiesListModel>;
  @useResult
  $Res call({IList<CityModel> cities});
}

/// @nodoc
class _$CitiesListModelCopyWithImpl<$Res, $Val extends CitiesListModel>
    implements $CitiesListModelCopyWith<$Res> {
  _$CitiesListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
  }) {
    return _then(_value.copyWith(
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as IList<CityModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CitiesListModelImplCopyWith<$Res>
    implements $CitiesListModelCopyWith<$Res> {
  factory _$$CitiesListModelImplCopyWith(_$CitiesListModelImpl value,
          $Res Function(_$CitiesListModelImpl) then) =
      __$$CitiesListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IList<CityModel> cities});
}

/// @nodoc
class __$$CitiesListModelImplCopyWithImpl<$Res>
    extends _$CitiesListModelCopyWithImpl<$Res, _$CitiesListModelImpl>
    implements _$$CitiesListModelImplCopyWith<$Res> {
  __$$CitiesListModelImplCopyWithImpl(
      _$CitiesListModelImpl _value, $Res Function(_$CitiesListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
  }) {
    return _then(_$CitiesListModelImpl(
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as IList<CityModel>,
    ));
  }
}

/// @nodoc

class _$CitiesListModelImpl implements _CitiesListModel {
  const _$CitiesListModelImpl({required this.cities});

  @override
  final IList<CityModel> cities;

  @override
  String toString() {
    return 'CitiesListModel(cities: $cities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitiesListModelImpl &&
            const DeepCollectionEquality().equals(other.cities, cities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitiesListModelImplCopyWith<_$CitiesListModelImpl> get copyWith =>
      __$$CitiesListModelImplCopyWithImpl<_$CitiesListModelImpl>(
          this, _$identity);
}

abstract class _CitiesListModel implements CitiesListModel {
  const factory _CitiesListModel({required final IList<CityModel> cities}) =
      _$CitiesListModelImpl;

  @override
  IList<CityModel> get cities;
  @override
  @JsonKey(ignore: true)
  _$$CitiesListModelImplCopyWith<_$CitiesListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
