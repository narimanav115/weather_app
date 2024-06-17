// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_credentials_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginCredentialsModel {
  String get type => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginCredentialsModelCopyWith<LoginCredentialsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCredentialsModelCopyWith<$Res> {
  factory $LoginCredentialsModelCopyWith(LoginCredentialsModel value,
          $Res Function(LoginCredentialsModel) then) =
      _$LoginCredentialsModelCopyWithImpl<$Res, LoginCredentialsModel>;
  @useResult
  $Res call({String type, String accessToken});
}

/// @nodoc
class _$LoginCredentialsModelCopyWithImpl<$Res,
        $Val extends LoginCredentialsModel>
    implements $LoginCredentialsModelCopyWith<$Res> {
  _$LoginCredentialsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginCredentialsModelImplCopyWith<$Res>
    implements $LoginCredentialsModelCopyWith<$Res> {
  factory _$$LoginCredentialsModelImplCopyWith(
          _$LoginCredentialsModelImpl value,
          $Res Function(_$LoginCredentialsModelImpl) then) =
      __$$LoginCredentialsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String accessToken});
}

/// @nodoc
class __$$LoginCredentialsModelImplCopyWithImpl<$Res>
    extends _$LoginCredentialsModelCopyWithImpl<$Res,
        _$LoginCredentialsModelImpl>
    implements _$$LoginCredentialsModelImplCopyWith<$Res> {
  __$$LoginCredentialsModelImplCopyWithImpl(_$LoginCredentialsModelImpl _value,
      $Res Function(_$LoginCredentialsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? accessToken = null,
  }) {
    return _then(_$LoginCredentialsModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginCredentialsModelImpl implements _LoginCredentialsModel {
  const _$LoginCredentialsModelImpl(
      {required this.type, required this.accessToken});

  @override
  final String type;
  @override
  final String accessToken;

  @override
  String toString() {
    return 'LoginCredentialsModel(type: $type, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCredentialsModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCredentialsModelImplCopyWith<_$LoginCredentialsModelImpl>
      get copyWith => __$$LoginCredentialsModelImplCopyWithImpl<
          _$LoginCredentialsModelImpl>(this, _$identity);
}

abstract class _LoginCredentialsModel implements LoginCredentialsModel {
  const factory _LoginCredentialsModel(
      {required final String type,
      required final String accessToken}) = _$LoginCredentialsModelImpl;

  @override
  String get type;
  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$LoginCredentialsModelImplCopyWith<_$LoginCredentialsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
