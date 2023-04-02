// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getRocketInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getRocketInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getRocketInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRocketInfo value) getRocketInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRocketInfo value)? getRocketInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRocketInfo value)? getRocketInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getRocketInfo,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getRocketInfo,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getRocketInfo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRocketInfo value) getRocketInfo,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRocketInfo value)? getRocketInfo,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRocketInfo value)? getRocketInfo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_GetRocketInfoCopyWith<$Res> {
  factory _$$_GetRocketInfoCopyWith(
          _$_GetRocketInfo value, $Res Function(_$_GetRocketInfo) then) =
      __$$_GetRocketInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetRocketInfoCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetRocketInfo>
    implements _$$_GetRocketInfoCopyWith<$Res> {
  __$$_GetRocketInfoCopyWithImpl(
      _$_GetRocketInfo _value, $Res Function(_$_GetRocketInfo) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetRocketInfo implements _GetRocketInfo {
  const _$_GetRocketInfo();

  @override
  String toString() {
    return 'HomeEvent.getRocketInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetRocketInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getRocketInfo,
  }) {
    return getRocketInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getRocketInfo,
  }) {
    return getRocketInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getRocketInfo,
    required TResult orElse(),
  }) {
    if (getRocketInfo != null) {
      return getRocketInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetRocketInfo value) getRocketInfo,
  }) {
    return getRocketInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetRocketInfo value)? getRocketInfo,
  }) {
    return getRocketInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetRocketInfo value)? getRocketInfo,
    required TResult orElse(),
  }) {
    if (getRocketInfo != null) {
      return getRocketInfo(this);
    }
    return orElse();
  }
}

abstract class _GetRocketInfo implements HomeEvent {
  const factory _GetRocketInfo() = _$_GetRocketInfo;
}

/// @nodoc
mixin _$HomeState {
  HomePageStateEnum get homepageState => throw _privateConstructorUsedError;
  List<RocketInfo> get rocketInfoList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            HomePageStateEnum homepageState, List<RocketInfo> rocketInfoList)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            HomePageStateEnum homepageState, List<RocketInfo> rocketInfoList)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            HomePageStateEnum homepageState, List<RocketInfo> rocketInfoList)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({HomePageStateEnum homepageState, List<RocketInfo> rocketInfoList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homepageState = null,
    Object? rocketInfoList = null,
  }) {
    return _then(_value.copyWith(
      homepageState: null == homepageState
          ? _value.homepageState
          : homepageState // ignore: cast_nullable_to_non_nullable
              as HomePageStateEnum,
      rocketInfoList: null == rocketInfoList
          ? _value.rocketInfoList
          : rocketInfoList // ignore: cast_nullable_to_non_nullable
              as List<RocketInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomePageStateEnum homepageState, List<RocketInfo> rocketInfoList});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homepageState = null,
    Object? rocketInfoList = null,
  }) {
    return _then(_$_Initial(
      homepageState: null == homepageState
          ? _value.homepageState
          : homepageState // ignore: cast_nullable_to_non_nullable
              as HomePageStateEnum,
      rocketInfoList: null == rocketInfoList
          ? _value._rocketInfoList
          : rocketInfoList // ignore: cast_nullable_to_non_nullable
              as List<RocketInfo>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.homepageState = HomePageStateEnum.initial,
      final List<RocketInfo> rocketInfoList = const <RocketInfo>[]})
      : _rocketInfoList = rocketInfoList;

  @override
  @JsonKey()
  final HomePageStateEnum homepageState;
  final List<RocketInfo> _rocketInfoList;
  @override
  @JsonKey()
  List<RocketInfo> get rocketInfoList {
    if (_rocketInfoList is EqualUnmodifiableListView) return _rocketInfoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rocketInfoList);
  }

  @override
  String toString() {
    return 'HomeState.initial(homepageState: $homepageState, rocketInfoList: $rocketInfoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.homepageState, homepageState) ||
                other.homepageState == homepageState) &&
            const DeepCollectionEquality()
                .equals(other._rocketInfoList, _rocketInfoList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homepageState,
      const DeepCollectionEquality().hash(_rocketInfoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            HomePageStateEnum homepageState, List<RocketInfo> rocketInfoList)
        initial,
  }) {
    return initial(homepageState, rocketInfoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            HomePageStateEnum homepageState, List<RocketInfo> rocketInfoList)?
        initial,
  }) {
    return initial?.call(homepageState, rocketInfoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            HomePageStateEnum homepageState, List<RocketInfo> rocketInfoList)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(homepageState, rocketInfoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {final HomePageStateEnum homepageState,
      final List<RocketInfo> rocketInfoList}) = _$_Initial;

  @override
  HomePageStateEnum get homepageState;
  @override
  List<RocketInfo> get rocketInfoList;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
