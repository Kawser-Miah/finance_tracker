// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnalysisEvent {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnalysisEventCopyWith<AnalysisEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisEventCopyWith<$Res> {
  factory $AnalysisEventCopyWith(
          AnalysisEvent value, $Res Function(AnalysisEvent) then) =
      _$AnalysisEventCopyWithImpl<$Res, AnalysisEvent>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AnalysisEventCopyWithImpl<$Res, $Val extends AnalysisEvent>
    implements $AnalysisEventCopyWith<$Res> {
  _$AnalysisEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $AnalysisEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AnalysisEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$StartedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'AnalysisEvent.started(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) started,
  }) {
    return started(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? started,
  }) {
    return started?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AnalysisEvent {
  const factory _Started({required final String name}) = _$StartedImpl;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnalysisState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TimeSeriesTotal> data) dataLoaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TimeSeriesTotal> data)? dataLoaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TimeSeriesTotal> data)? dataLoaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalysisInitialState value) initial,
    required TResult Function(AnalysisLoadingState value) loading,
    required TResult Function(AnalysisDataLoadedState value) dataLoaded,
    required TResult Function(AnalysisErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisInitialState value)? initial,
    TResult? Function(AnalysisLoadingState value)? loading,
    TResult? Function(AnalysisDataLoadedState value)? dataLoaded,
    TResult? Function(AnalysisErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisInitialState value)? initial,
    TResult Function(AnalysisLoadingState value)? loading,
    TResult Function(AnalysisDataLoadedState value)? dataLoaded,
    TResult Function(AnalysisErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisStateCopyWith<$Res> {
  factory $AnalysisStateCopyWith(
          AnalysisState value, $Res Function(AnalysisState) then) =
      _$AnalysisStateCopyWithImpl<$Res, AnalysisState>;
}

/// @nodoc
class _$AnalysisStateCopyWithImpl<$Res, $Val extends AnalysisState>
    implements $AnalysisStateCopyWith<$Res> {
  _$AnalysisStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AnalysisInitialStateImplCopyWith<$Res> {
  factory _$$AnalysisInitialStateImplCopyWith(_$AnalysisInitialStateImpl value,
          $Res Function(_$AnalysisInitialStateImpl) then) =
      __$$AnalysisInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnalysisInitialStateImplCopyWithImpl<$Res>
    extends _$AnalysisStateCopyWithImpl<$Res, _$AnalysisInitialStateImpl>
    implements _$$AnalysisInitialStateImplCopyWith<$Res> {
  __$$AnalysisInitialStateImplCopyWithImpl(_$AnalysisInitialStateImpl _value,
      $Res Function(_$AnalysisInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AnalysisInitialStateImpl implements AnalysisInitialState {
  const _$AnalysisInitialStateImpl();

  @override
  String toString() {
    return 'AnalysisState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TimeSeriesTotal> data) dataLoaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TimeSeriesTotal> data)? dataLoaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TimeSeriesTotal> data)? dataLoaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalysisInitialState value) initial,
    required TResult Function(AnalysisLoadingState value) loading,
    required TResult Function(AnalysisDataLoadedState value) dataLoaded,
    required TResult Function(AnalysisErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisInitialState value)? initial,
    TResult? Function(AnalysisLoadingState value)? loading,
    TResult? Function(AnalysisDataLoadedState value)? dataLoaded,
    TResult? Function(AnalysisErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisInitialState value)? initial,
    TResult Function(AnalysisLoadingState value)? loading,
    TResult Function(AnalysisDataLoadedState value)? dataLoaded,
    TResult Function(AnalysisErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AnalysisInitialState implements AnalysisState {
  const factory AnalysisInitialState() = _$AnalysisInitialStateImpl;
}

/// @nodoc
abstract class _$$AnalysisLoadingStateImplCopyWith<$Res> {
  factory _$$AnalysisLoadingStateImplCopyWith(_$AnalysisLoadingStateImpl value,
          $Res Function(_$AnalysisLoadingStateImpl) then) =
      __$$AnalysisLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnalysisLoadingStateImplCopyWithImpl<$Res>
    extends _$AnalysisStateCopyWithImpl<$Res, _$AnalysisLoadingStateImpl>
    implements _$$AnalysisLoadingStateImplCopyWith<$Res> {
  __$$AnalysisLoadingStateImplCopyWithImpl(_$AnalysisLoadingStateImpl _value,
      $Res Function(_$AnalysisLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AnalysisLoadingStateImpl implements AnalysisLoadingState {
  const _$AnalysisLoadingStateImpl();

  @override
  String toString() {
    return 'AnalysisState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TimeSeriesTotal> data) dataLoaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TimeSeriesTotal> data)? dataLoaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TimeSeriesTotal> data)? dataLoaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalysisInitialState value) initial,
    required TResult Function(AnalysisLoadingState value) loading,
    required TResult Function(AnalysisDataLoadedState value) dataLoaded,
    required TResult Function(AnalysisErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisInitialState value)? initial,
    TResult? Function(AnalysisLoadingState value)? loading,
    TResult? Function(AnalysisDataLoadedState value)? dataLoaded,
    TResult? Function(AnalysisErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisInitialState value)? initial,
    TResult Function(AnalysisLoadingState value)? loading,
    TResult Function(AnalysisDataLoadedState value)? dataLoaded,
    TResult Function(AnalysisErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AnalysisLoadingState implements AnalysisState {
  const factory AnalysisLoadingState() = _$AnalysisLoadingStateImpl;
}

/// @nodoc
abstract class _$$AnalysisDataLoadedStateImplCopyWith<$Res> {
  factory _$$AnalysisDataLoadedStateImplCopyWith(
          _$AnalysisDataLoadedStateImpl value,
          $Res Function(_$AnalysisDataLoadedStateImpl) then) =
      __$$AnalysisDataLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TimeSeriesTotal> data});
}

/// @nodoc
class __$$AnalysisDataLoadedStateImplCopyWithImpl<$Res>
    extends _$AnalysisStateCopyWithImpl<$Res, _$AnalysisDataLoadedStateImpl>
    implements _$$AnalysisDataLoadedStateImplCopyWith<$Res> {
  __$$AnalysisDataLoadedStateImplCopyWithImpl(
      _$AnalysisDataLoadedStateImpl _value,
      $Res Function(_$AnalysisDataLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AnalysisDataLoadedStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TimeSeriesTotal>,
    ));
  }
}

/// @nodoc

class _$AnalysisDataLoadedStateImpl implements AnalysisDataLoadedState {
  const _$AnalysisDataLoadedStateImpl(
      {required final List<TimeSeriesTotal> data})
      : _data = data;

  final List<TimeSeriesTotal> _data;
  @override
  List<TimeSeriesTotal> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AnalysisState.dataLoaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisDataLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisDataLoadedStateImplCopyWith<_$AnalysisDataLoadedStateImpl>
      get copyWith => __$$AnalysisDataLoadedStateImplCopyWithImpl<
          _$AnalysisDataLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TimeSeriesTotal> data) dataLoaded,
    required TResult Function(String errorMessage) error,
  }) {
    return dataLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TimeSeriesTotal> data)? dataLoaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return dataLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TimeSeriesTotal> data)? dataLoaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalysisInitialState value) initial,
    required TResult Function(AnalysisLoadingState value) loading,
    required TResult Function(AnalysisDataLoadedState value) dataLoaded,
    required TResult Function(AnalysisErrorState value) error,
  }) {
    return dataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisInitialState value)? initial,
    TResult? Function(AnalysisLoadingState value)? loading,
    TResult? Function(AnalysisDataLoadedState value)? dataLoaded,
    TResult? Function(AnalysisErrorState value)? error,
  }) {
    return dataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisInitialState value)? initial,
    TResult Function(AnalysisLoadingState value)? loading,
    TResult Function(AnalysisDataLoadedState value)? dataLoaded,
    TResult Function(AnalysisErrorState value)? error,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(this);
    }
    return orElse();
  }
}

abstract class AnalysisDataLoadedState implements AnalysisState {
  const factory AnalysisDataLoadedState(
          {required final List<TimeSeriesTotal> data}) =
      _$AnalysisDataLoadedStateImpl;

  List<TimeSeriesTotal> get data;
  @JsonKey(ignore: true)
  _$$AnalysisDataLoadedStateImplCopyWith<_$AnalysisDataLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnalysisErrorStateImplCopyWith<$Res> {
  factory _$$AnalysisErrorStateImplCopyWith(_$AnalysisErrorStateImpl value,
          $Res Function(_$AnalysisErrorStateImpl) then) =
      __$$AnalysisErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AnalysisErrorStateImplCopyWithImpl<$Res>
    extends _$AnalysisStateCopyWithImpl<$Res, _$AnalysisErrorStateImpl>
    implements _$$AnalysisErrorStateImplCopyWith<$Res> {
  __$$AnalysisErrorStateImplCopyWithImpl(_$AnalysisErrorStateImpl _value,
      $Res Function(_$AnalysisErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AnalysisErrorStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AnalysisErrorStateImpl implements AnalysisErrorState {
  const _$AnalysisErrorStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AnalysisState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisErrorStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisErrorStateImplCopyWith<_$AnalysisErrorStateImpl> get copyWith =>
      __$$AnalysisErrorStateImplCopyWithImpl<_$AnalysisErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TimeSeriesTotal> data) dataLoaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TimeSeriesTotal> data)? dataLoaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TimeSeriesTotal> data)? dataLoaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnalysisInitialState value) initial,
    required TResult Function(AnalysisLoadingState value) loading,
    required TResult Function(AnalysisDataLoadedState value) dataLoaded,
    required TResult Function(AnalysisErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnalysisInitialState value)? initial,
    TResult? Function(AnalysisLoadingState value)? loading,
    TResult? Function(AnalysisDataLoadedState value)? dataLoaded,
    TResult? Function(AnalysisErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnalysisInitialState value)? initial,
    TResult Function(AnalysisLoadingState value)? loading,
    TResult Function(AnalysisDataLoadedState value)? dataLoaded,
    TResult Function(AnalysisErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AnalysisErrorState implements AnalysisState {
  const factory AnalysisErrorState({required final String errorMessage}) =
      _$AnalysisErrorStateImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$AnalysisErrorStateImplCopyWith<_$AnalysisErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
