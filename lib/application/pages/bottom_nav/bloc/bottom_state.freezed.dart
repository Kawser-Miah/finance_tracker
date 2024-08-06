// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BottomState {
  int get currentIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentIndex) currentTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentIndex)? currentTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentIndex)? currentTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomState value) currentTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBottomState value)? currentTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomState value)? currentTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomStateCopyWith<BottomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomStateCopyWith<$Res> {
  factory $BottomStateCopyWith(
          BottomState value, $Res Function(BottomState) then) =
      _$BottomStateCopyWithImpl<$Res, BottomState>;
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class _$BottomStateCopyWithImpl<$Res, $Val extends BottomState>
    implements $BottomStateCopyWith<$Res> {
  _$BottomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeBottomStateImplCopyWith<$Res>
    implements $BottomStateCopyWith<$Res> {
  factory _$$ChangeBottomStateImplCopyWith(_$ChangeBottomStateImpl value,
          $Res Function(_$ChangeBottomStateImpl) then) =
      __$$ChangeBottomStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndex});
}

/// @nodoc
class __$$ChangeBottomStateImplCopyWithImpl<$Res>
    extends _$BottomStateCopyWithImpl<$Res, _$ChangeBottomStateImpl>
    implements _$$ChangeBottomStateImplCopyWith<$Res> {
  __$$ChangeBottomStateImplCopyWithImpl(_$ChangeBottomStateImpl _value,
      $Res Function(_$ChangeBottomStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
  }) {
    return _then(_$ChangeBottomStateImpl(
      null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeBottomStateImpl implements ChangeBottomState {
  const _$ChangeBottomStateImpl(this.currentIndex);

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'BottomState.currentTab(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeBottomStateImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeBottomStateImplCopyWith<_$ChangeBottomStateImpl> get copyWith =>
      __$$ChangeBottomStateImplCopyWithImpl<_$ChangeBottomStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentIndex) currentTab,
  }) {
    return currentTab(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentIndex)? currentTab,
  }) {
    return currentTab?.call(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentIndex)? currentTab,
    required TResult orElse(),
  }) {
    if (currentTab != null) {
      return currentTab(currentIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomState value) currentTab,
  }) {
    return currentTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBottomState value)? currentTab,
  }) {
    return currentTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomState value)? currentTab,
    required TResult orElse(),
  }) {
    if (currentTab != null) {
      return currentTab(this);
    }
    return orElse();
  }
}

abstract class ChangeBottomState implements BottomState {
  const factory ChangeBottomState(final int currentIndex) =
      _$ChangeBottomStateImpl;

  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$ChangeBottomStateImplCopyWith<_$ChangeBottomStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
