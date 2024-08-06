// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionEvent {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) requestForHomePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? requestForHomePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? requestForHomePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageTransactionDataRequestEvent value)
        requestForHomePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionEventCopyWith<TransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

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
abstract class _$$HomePageTransactionDataRequestEventImplCopyWith<$Res>
    implements $TransactionEventCopyWith<$Res> {
  factory _$$HomePageTransactionDataRequestEventImplCopyWith(
          _$HomePageTransactionDataRequestEventImpl value,
          $Res Function(_$HomePageTransactionDataRequestEventImpl) then) =
      __$$HomePageTransactionDataRequestEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$HomePageTransactionDataRequestEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res,
        _$HomePageTransactionDataRequestEventImpl>
    implements _$$HomePageTransactionDataRequestEventImplCopyWith<$Res> {
  __$$HomePageTransactionDataRequestEventImplCopyWithImpl(
      _$HomePageTransactionDataRequestEventImpl _value,
      $Res Function(_$HomePageTransactionDataRequestEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$HomePageTransactionDataRequestEventImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomePageTransactionDataRequestEventImpl
    implements HomePageTransactionDataRequestEvent {
  const _$HomePageTransactionDataRequestEventImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'TransactionEvent.requestForHomePage(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageTransactionDataRequestEventImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageTransactionDataRequestEventImplCopyWith<
          _$HomePageTransactionDataRequestEventImpl>
      get copyWith => __$$HomePageTransactionDataRequestEventImplCopyWithImpl<
          _$HomePageTransactionDataRequestEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) requestForHomePage,
  }) {
    return requestForHomePage(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? requestForHomePage,
  }) {
    return requestForHomePage?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? requestForHomePage,
    required TResult orElse(),
  }) {
    if (requestForHomePage != null) {
      return requestForHomePage(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageTransactionDataRequestEvent value)
        requestForHomePage,
  }) {
    return requestForHomePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
  }) {
    return requestForHomePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
    required TResult orElse(),
  }) {
    if (requestForHomePage != null) {
      return requestForHomePage(this);
    }
    return orElse();
  }
}

abstract class HomePageTransactionDataRequestEvent implements TransactionEvent {
  const factory HomePageTransactionDataRequestEvent(final String name) =
      _$HomePageTransactionDataRequestEventImpl;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$HomePageTransactionDataRequestEventImplCopyWith<
          _$HomePageTransactionDataRequestEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
