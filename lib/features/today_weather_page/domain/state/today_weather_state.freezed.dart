// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'today_weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodayWeatherState _$TodayWeatherStateFromJson(Map<String, dynamic> json) {
  return _TodayWeatherState.fromJson(json);
}

/// @nodoc
mixin _$TodayWeatherState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  WeatherEntity get weatherEntity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodayWeatherStateCopyWith<TodayWeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayWeatherStateCopyWith<$Res> {
  factory $TodayWeatherStateCopyWith(
          TodayWeatherState value, $Res Function(TodayWeatherState) then) =
      _$TodayWeatherStateCopyWithImpl<$Res>;
  $Res call({bool loading, bool error, WeatherEntity weatherEntity});

  $WeatherEntityCopyWith<$Res> get weatherEntity;
}

/// @nodoc
class _$TodayWeatherStateCopyWithImpl<$Res>
    implements $TodayWeatherStateCopyWith<$Res> {
  _$TodayWeatherStateCopyWithImpl(this._value, this._then);

  final TodayWeatherState _value;
  // ignore: unused_field
  final $Res Function(TodayWeatherState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? weatherEntity = freezed,
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
      weatherEntity: weatherEntity == freezed
          ? _value.weatherEntity
          : weatherEntity // ignore: cast_nullable_to_non_nullable
              as WeatherEntity,
    ));
  }

  @override
  $WeatherEntityCopyWith<$Res> get weatherEntity {
    return $WeatherEntityCopyWith<$Res>(_value.weatherEntity, (value) {
      return _then(_value.copyWith(weatherEntity: value));
    });
  }
}

/// @nodoc
abstract class _$$_TodayWeatherStateCopyWith<$Res>
    implements $TodayWeatherStateCopyWith<$Res> {
  factory _$$_TodayWeatherStateCopyWith(_$_TodayWeatherState value,
          $Res Function(_$_TodayWeatherState) then) =
      __$$_TodayWeatherStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, bool error, WeatherEntity weatherEntity});

  @override
  $WeatherEntityCopyWith<$Res> get weatherEntity;
}

/// @nodoc
class __$$_TodayWeatherStateCopyWithImpl<$Res>
    extends _$TodayWeatherStateCopyWithImpl<$Res>
    implements _$$_TodayWeatherStateCopyWith<$Res> {
  __$$_TodayWeatherStateCopyWithImpl(
      _$_TodayWeatherState _value, $Res Function(_$_TodayWeatherState) _then)
      : super(_value, (v) => _then(v as _$_TodayWeatherState));

  @override
  _$_TodayWeatherState get _value => super._value as _$_TodayWeatherState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? weatherEntity = freezed,
  }) {
    return _then(_$_TodayWeatherState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherEntity: weatherEntity == freezed
          ? _value.weatherEntity
          : weatherEntity // ignore: cast_nullable_to_non_nullable
              as WeatherEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodayWeatherState implements _TodayWeatherState {
  const _$_TodayWeatherState(
      {this.loading = false, this.error = false, required this.weatherEntity});

  factory _$_TodayWeatherState.fromJson(Map<String, dynamic> json) =>
      _$$_TodayWeatherStateFromJson(json);

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  final WeatherEntity weatherEntity;

  @override
  String toString() {
    return 'TodayWeatherState(loading: $loading, error: $error, weatherEntity: $weatherEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodayWeatherState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.weatherEntity, weatherEntity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(weatherEntity));

  @JsonKey(ignore: true)
  @override
  _$$_TodayWeatherStateCopyWith<_$_TodayWeatherState> get copyWith =>
      __$$_TodayWeatherStateCopyWithImpl<_$_TodayWeatherState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodayWeatherStateToJson(this);
  }
}

abstract class _TodayWeatherState implements TodayWeatherState {
  const factory _TodayWeatherState(
      {final bool loading,
      final bool error,
      required final WeatherEntity weatherEntity}) = _$_TodayWeatherState;

  factory _TodayWeatherState.fromJson(Map<String, dynamic> json) =
      _$_TodayWeatherState.fromJson;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get error => throw _privateConstructorUsedError;
  @override
  WeatherEntity get weatherEntity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TodayWeatherStateCopyWith<_$_TodayWeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
