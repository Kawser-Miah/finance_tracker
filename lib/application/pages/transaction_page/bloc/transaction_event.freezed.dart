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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) requestForHomePage,
    required TResult Function() requestForAllTransaction,
    required TResult Function() requestForAllIncomes,
    required TResult Function() requestForAllExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? requestForHomePage,
    TResult? Function()? requestForAllTransaction,
    TResult? Function()? requestForAllIncomes,
    TResult? Function()? requestForAllExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? requestForHomePage,
    TResult Function()? requestForAllTransaction,
    TResult Function()? requestForAllIncomes,
    TResult Function()? requestForAllExpenses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageTransactionDataRequestEvent value)
        requestForHomePage,
    required TResult Function(TransactionRequestEvent value)
        requestForAllTransaction,
    required TResult Function(AllIncomesRequestEvent value)
        requestForAllIncomes,
    required TResult Function(AllExpensesRequestEvent value)
        requestForAllExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
    TResult? Function(TransactionRequestEvent value)? requestForAllTransaction,
    TResult? Function(AllIncomesRequestEvent value)? requestForAllIncomes,
    TResult? Function(AllExpensesRequestEvent value)? requestForAllExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
    TResult Function(TransactionRequestEvent value)? requestForAllTransaction,
    TResult Function(AllIncomesRequestEvent value)? requestForAllIncomes,
    TResult Function(AllExpensesRequestEvent value)? requestForAllExpenses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomePageTransactionDataRequestEventImplCopyWith<$Res> {
  factory _$$HomePageTransactionDataRequestEventImplCopyWith(
          _$HomePageTransactionDataRequestEventImpl value,
          $Res Function(_$HomePageTransactionDataRequestEventImpl) then) =
      __$$HomePageTransactionDataRequestEventImplCopyWithImpl<$Res>;
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

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function() requestForAllTransaction,
    required TResult Function() requestForAllIncomes,
    required TResult Function() requestForAllExpenses,
  }) {
    return requestForHomePage(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? requestForHomePage,
    TResult? Function()? requestForAllTransaction,
    TResult? Function()? requestForAllIncomes,
    TResult? Function()? requestForAllExpenses,
  }) {
    return requestForHomePage?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? requestForHomePage,
    TResult Function()? requestForAllTransaction,
    TResult Function()? requestForAllIncomes,
    TResult Function()? requestForAllExpenses,
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
    required TResult Function(TransactionRequestEvent value)
        requestForAllTransaction,
    required TResult Function(AllIncomesRequestEvent value)
        requestForAllIncomes,
    required TResult Function(AllExpensesRequestEvent value)
        requestForAllExpenses,
  }) {
    return requestForHomePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
    TResult? Function(TransactionRequestEvent value)? requestForAllTransaction,
    TResult? Function(AllIncomesRequestEvent value)? requestForAllIncomes,
    TResult? Function(AllExpensesRequestEvent value)? requestForAllExpenses,
  }) {
    return requestForHomePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
    TResult Function(TransactionRequestEvent value)? requestForAllTransaction,
    TResult Function(AllIncomesRequestEvent value)? requestForAllIncomes,
    TResult Function(AllExpensesRequestEvent value)? requestForAllExpenses,
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

  String get name;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageTransactionDataRequestEventImplCopyWith<
          _$HomePageTransactionDataRequestEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionRequestEventImplCopyWith<$Res> {
  factory _$$TransactionRequestEventImplCopyWith(
          _$TransactionRequestEventImpl value,
          $Res Function(_$TransactionRequestEventImpl) then) =
      __$$TransactionRequestEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionRequestEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$TransactionRequestEventImpl>
    implements _$$TransactionRequestEventImplCopyWith<$Res> {
  __$$TransactionRequestEventImplCopyWithImpl(
      _$TransactionRequestEventImpl _value,
      $Res Function(_$TransactionRequestEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TransactionRequestEventImpl implements TransactionRequestEvent {
  const _$TransactionRequestEventImpl();

  @override
  String toString() {
    return 'TransactionEvent.requestForAllTransaction()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionRequestEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) requestForHomePage,
    required TResult Function() requestForAllTransaction,
    required TResult Function() requestForAllIncomes,
    required TResult Function() requestForAllExpenses,
  }) {
    return requestForAllTransaction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? requestForHomePage,
    TResult? Function()? requestForAllTransaction,
    TResult? Function()? requestForAllIncomes,
    TResult? Function()? requestForAllExpenses,
  }) {
    return requestForAllTransaction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? requestForHomePage,
    TResult Function()? requestForAllTransaction,
    TResult Function()? requestForAllIncomes,
    TResult Function()? requestForAllExpenses,
    required TResult orElse(),
  }) {
    if (requestForAllTransaction != null) {
      return requestForAllTransaction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageTransactionDataRequestEvent value)
        requestForHomePage,
    required TResult Function(TransactionRequestEvent value)
        requestForAllTransaction,
    required TResult Function(AllIncomesRequestEvent value)
        requestForAllIncomes,
    required TResult Function(AllExpensesRequestEvent value)
        requestForAllExpenses,
  }) {
    return requestForAllTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
    TResult? Function(TransactionRequestEvent value)? requestForAllTransaction,
    TResult? Function(AllIncomesRequestEvent value)? requestForAllIncomes,
    TResult? Function(AllExpensesRequestEvent value)? requestForAllExpenses,
  }) {
    return requestForAllTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
    TResult Function(TransactionRequestEvent value)? requestForAllTransaction,
    TResult Function(AllIncomesRequestEvent value)? requestForAllIncomes,
    TResult Function(AllExpensesRequestEvent value)? requestForAllExpenses,
    required TResult orElse(),
  }) {
    if (requestForAllTransaction != null) {
      return requestForAllTransaction(this);
    }
    return orElse();
  }
}

abstract class TransactionRequestEvent implements TransactionEvent {
  const factory TransactionRequestEvent() = _$TransactionRequestEventImpl;
}

/// @nodoc
abstract class _$$AllIncomesRequestEventImplCopyWith<$Res> {
  factory _$$AllIncomesRequestEventImplCopyWith(
          _$AllIncomesRequestEventImpl value,
          $Res Function(_$AllIncomesRequestEventImpl) then) =
      __$$AllIncomesRequestEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllIncomesRequestEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$AllIncomesRequestEventImpl>
    implements _$$AllIncomesRequestEventImplCopyWith<$Res> {
  __$$AllIncomesRequestEventImplCopyWithImpl(
      _$AllIncomesRequestEventImpl _value,
      $Res Function(_$AllIncomesRequestEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AllIncomesRequestEventImpl implements AllIncomesRequestEvent {
  const _$AllIncomesRequestEventImpl();

  @override
  String toString() {
    return 'TransactionEvent.requestForAllIncomes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllIncomesRequestEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) requestForHomePage,
    required TResult Function() requestForAllTransaction,
    required TResult Function() requestForAllIncomes,
    required TResult Function() requestForAllExpenses,
  }) {
    return requestForAllIncomes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? requestForHomePage,
    TResult? Function()? requestForAllTransaction,
    TResult? Function()? requestForAllIncomes,
    TResult? Function()? requestForAllExpenses,
  }) {
    return requestForAllIncomes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? requestForHomePage,
    TResult Function()? requestForAllTransaction,
    TResult Function()? requestForAllIncomes,
    TResult Function()? requestForAllExpenses,
    required TResult orElse(),
  }) {
    if (requestForAllIncomes != null) {
      return requestForAllIncomes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageTransactionDataRequestEvent value)
        requestForHomePage,
    required TResult Function(TransactionRequestEvent value)
        requestForAllTransaction,
    required TResult Function(AllIncomesRequestEvent value)
        requestForAllIncomes,
    required TResult Function(AllExpensesRequestEvent value)
        requestForAllExpenses,
  }) {
    return requestForAllIncomes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
    TResult? Function(TransactionRequestEvent value)? requestForAllTransaction,
    TResult? Function(AllIncomesRequestEvent value)? requestForAllIncomes,
    TResult? Function(AllExpensesRequestEvent value)? requestForAllExpenses,
  }) {
    return requestForAllIncomes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
    TResult Function(TransactionRequestEvent value)? requestForAllTransaction,
    TResult Function(AllIncomesRequestEvent value)? requestForAllIncomes,
    TResult Function(AllExpensesRequestEvent value)? requestForAllExpenses,
    required TResult orElse(),
  }) {
    if (requestForAllIncomes != null) {
      return requestForAllIncomes(this);
    }
    return orElse();
  }
}

abstract class AllIncomesRequestEvent implements TransactionEvent {
  const factory AllIncomesRequestEvent() = _$AllIncomesRequestEventImpl;
}

/// @nodoc
abstract class _$$AllExpensesRequestEventImplCopyWith<$Res> {
  factory _$$AllExpensesRequestEventImplCopyWith(
          _$AllExpensesRequestEventImpl value,
          $Res Function(_$AllExpensesRequestEventImpl) then) =
      __$$AllExpensesRequestEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllExpensesRequestEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$AllExpensesRequestEventImpl>
    implements _$$AllExpensesRequestEventImplCopyWith<$Res> {
  __$$AllExpensesRequestEventImplCopyWithImpl(
      _$AllExpensesRequestEventImpl _value,
      $Res Function(_$AllExpensesRequestEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AllExpensesRequestEventImpl implements AllExpensesRequestEvent {
  const _$AllExpensesRequestEventImpl();

  @override
  String toString() {
    return 'TransactionEvent.requestForAllExpenses()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllExpensesRequestEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) requestForHomePage,
    required TResult Function() requestForAllTransaction,
    required TResult Function() requestForAllIncomes,
    required TResult Function() requestForAllExpenses,
  }) {
    return requestForAllExpenses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? requestForHomePage,
    TResult? Function()? requestForAllTransaction,
    TResult? Function()? requestForAllIncomes,
    TResult? Function()? requestForAllExpenses,
  }) {
    return requestForAllExpenses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? requestForHomePage,
    TResult Function()? requestForAllTransaction,
    TResult Function()? requestForAllIncomes,
    TResult Function()? requestForAllExpenses,
    required TResult orElse(),
  }) {
    if (requestForAllExpenses != null) {
      return requestForAllExpenses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageTransactionDataRequestEvent value)
        requestForHomePage,
    required TResult Function(TransactionRequestEvent value)
        requestForAllTransaction,
    required TResult Function(AllIncomesRequestEvent value)
        requestForAllIncomes,
    required TResult Function(AllExpensesRequestEvent value)
        requestForAllExpenses,
  }) {
    return requestForAllExpenses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
    TResult? Function(TransactionRequestEvent value)? requestForAllTransaction,
    TResult? Function(AllIncomesRequestEvent value)? requestForAllIncomes,
    TResult? Function(AllExpensesRequestEvent value)? requestForAllExpenses,
  }) {
    return requestForAllExpenses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageTransactionDataRequestEvent value)?
        requestForHomePage,
    TResult Function(TransactionRequestEvent value)? requestForAllTransaction,
    TResult Function(AllIncomesRequestEvent value)? requestForAllIncomes,
    TResult Function(AllExpensesRequestEvent value)? requestForAllExpenses,
    required TResult orElse(),
  }) {
    if (requestForAllExpenses != null) {
      return requestForAllExpenses(this);
    }
    return orElse();
  }
}

abstract class AllExpensesRequestEvent implements TransactionEvent {
  const factory AllExpensesRequestEvent() = _$AllExpensesRequestEventImpl;
}
