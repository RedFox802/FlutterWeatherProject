// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'choose_city_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChooseCityState _$ChooseCityStateFromJson(Map<String, dynamic> json) {
  return _ChooseCityState.fromJson(json);
}

/// @nodoc
mixin _$ChooseCityState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChooseCityStateCopyWith<ChooseCityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseCityStateCopyWith<$Res> {
  factory $ChooseCityStateCopyWith(
          ChooseCityState value, $Res Function(ChooseCityState) then) =
      _$ChooseCityStateCopyWithImpl<$Res>;
  $Res call({bool loading, bool error, String city});
}

/// @nodoc
class _$ChooseCityStateCopyWithImpl<$Res>
    implements $ChooseCityStateCopyWith<$Res> {
  _$ChooseCityStateCopyWithImpl(this._value, this._then);

  final ChooseCityState _value;
  // ignore: unused_field
  final $Res Function(ChooseCityState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ChooseCityStateCopyWith<$Res>
    implements $ChooseCityStateCopyWith<$Res> {
  factory _$$_ChooseCityStateCopyWith(
          _$_ChooseCityState value, $Res Function(_$_ChooseCityState) then) =
      __$$_ChooseCityStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, bool error, String city});
}

/// @nodoc
class __$$_ChooseCityStateCopyWithImpl<$Res>
    extends _$ChooseCityStateCopyWithImpl<$Res>
    implements _$$_ChooseCityStateCopyWith<$Res> {
  __$$_ChooseCityStateCopyWithImpl(
      _$_ChooseCityState _value, $Res Function(_$_ChooseCityState) _then)
      : super(_value, (v) => _then(v as _$_ChooseCityState));

  @override
  _$_ChooseCityState get _value => super._value as _$_ChooseCityState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_ChooseCityState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChooseCityState implements _ChooseCityState {
  const _$_ChooseCityState(
      {this.loading = false, this.error = false, this.city = ''});

  factory _$_ChooseCityState.fromJson(Map<String, dynamic> json) =>
      _$$_ChooseCityStateFromJson(json);

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final String city;

  @override
  String toString() {
    return 'ChooseCityState(loading: $loading, error: $error, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChooseCityState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$$_ChooseCityStateCopyWith<_$_ChooseCityState> get copyWith =>
      __$$_ChooseCityStateCopyWithImpl<_$_ChooseCityState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChooseCityStateToJson(this);
  }
}

abstract class _ChooseCityState implements ChooseCityState {
  const factory _ChooseCityState(
      {final bool loading,
      final bool error,
      final String city}) = _$_ChooseCityState;

  factory _ChooseCityState.fromJson(Map<String, dynamic> json) =
      _$_ChooseCityState.fromJson;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get error => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChooseCityStateCopyWith<_$_ChooseCityState> get copyWith =>
      throw _privateConstructorUsedError;
}
