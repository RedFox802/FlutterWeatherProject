// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherListState _$WeatherListStateFromJson(Map<String, dynamic> json) {
  return _WeatherListState.fromJson(json);
}

/// @nodoc
mixin _$WeatherListState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<ThreeDaysWeatherEntity> get weatherList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherListStateCopyWith<WeatherListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherListStateCopyWith<$Res> {
  factory $WeatherListStateCopyWith(
          WeatherListState value, $Res Function(WeatherListState) then) =
      _$WeatherListStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading, bool error, List<ThreeDaysWeatherEntity> weatherList});
}

/// @nodoc
class _$WeatherListStateCopyWithImpl<$Res>
    implements $WeatherListStateCopyWith<$Res> {
  _$WeatherListStateCopyWithImpl(this._value, this._then);

  final WeatherListState _value;
  // ignore: unused_field
  final $Res Function(WeatherListState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? weatherList = freezed,
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
      weatherList: weatherList == freezed
          ? _value.weatherList
          : weatherList // ignore: cast_nullable_to_non_nullable
              as List<ThreeDaysWeatherEntity>,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherListStateCopyWith<$Res>
    implements $WeatherListStateCopyWith<$Res> {
  factory _$$_WeatherListStateCopyWith(
          _$_WeatherListState value, $Res Function(_$_WeatherListState) then) =
      __$$_WeatherListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading, bool error, List<ThreeDaysWeatherEntity> weatherList});
}

/// @nodoc
class __$$_WeatherListStateCopyWithImpl<$Res>
    extends _$WeatherListStateCopyWithImpl<$Res>
    implements _$$_WeatherListStateCopyWith<$Res> {
  __$$_WeatherListStateCopyWithImpl(
      _$_WeatherListState _value, $Res Function(_$_WeatherListState) _then)
      : super(_value, (v) => _then(v as _$_WeatherListState));

  @override
  _$_WeatherListState get _value => super._value as _$_WeatherListState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? weatherList = freezed,
  }) {
    return _then(_$_WeatherListState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherList: weatherList == freezed
          ? _value._weatherList
          : weatherList // ignore: cast_nullable_to_non_nullable
              as List<ThreeDaysWeatherEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherListState implements _WeatherListState {
  _$_WeatherListState(
      {this.loading = false,
      this.error = false,
      required final List<ThreeDaysWeatherEntity> weatherList})
      : _weatherList = weatherList;

  factory _$_WeatherListState.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherListStateFromJson(json);

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  final List<ThreeDaysWeatherEntity> _weatherList;
  @override
  List<ThreeDaysWeatherEntity> get weatherList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherList);
  }

  @override
  String toString() {
    return 'WeatherListState(loading: $loading, error: $error, weatherList: $weatherList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherListState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._weatherList, _weatherList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_weatherList));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherListStateCopyWith<_$_WeatherListState> get copyWith =>
      __$$_WeatherListStateCopyWithImpl<_$_WeatherListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherListStateToJson(this);
  }
}

abstract class _WeatherListState implements WeatherListState {
  factory _WeatherListState(
          {final bool loading,
          final bool error,
          required final List<ThreeDaysWeatherEntity> weatherList}) =
      _$_WeatherListState;

  factory _WeatherListState.fromJson(Map<String, dynamic> json) =
      _$_WeatherListState.fromJson;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get error => throw _privateConstructorUsedError;
  @override
  List<ThreeDaysWeatherEntity> get weatherList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherListStateCopyWith<_$_WeatherListState> get copyWith =>
      throw _privateConstructorUsedError;
}
