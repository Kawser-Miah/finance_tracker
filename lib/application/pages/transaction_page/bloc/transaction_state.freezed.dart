// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TransactionModel> transactions) dataLoaded,
    required TResult Function() dataLoading,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TransactionModel> transactions)? dataLoaded,
    TResult? Function()? dataLoading,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TransactionModel> transactions)? dataLoaded,
    TResult Function()? dataLoading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HomePageTransactionDataLoadedState value)
        dataLoaded,
    required TResult Function(LoadingState value) dataLoading,
    required TResult Function(TransactionErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HomePageTransactionDataLoadedState value)? dataLoaded,
    TResult? Function(LoadingState value)? dataLoading,
    TResult? Function(TransactionErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HomePageTransactionDataLoadedState value)? dataLoaded,
    TResult Function(LoadingState value)? dataLoading,
    TResult Function(TransactionErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TransactionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TransactionModel> transactions) dataLoaded,
    required TResult Function() dataLoading,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TransactionModel> transactions)? dataLoaded,
    TResult? Function()? dataLoading,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TransactionModel> transactions)? dataLoaded,
    TResult Function()? dataLoading,
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
    required TResult Function(Initial value) initial,
    required TResult Function(HomePageTransactionDataLoadedState value)
        dataLoaded,
    required TResult Function(LoadingState value) dataLoading,
    required TResult Function(TransactionErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HomePageTransactionDataLoadedState value)? dataLoaded,
    TResult? Function(LoadingState value)? dataLoading,
    TResult? Function(TransactionErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HomePageTransactionDataLoadedState value)? dataLoaded,
    TResult Function(LoadingState value)? dataLoading,
    TResult Function(TransactionErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TransactionState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HomePageTransactionDataLoadedStateImplCopyWith<$Res> {
  factory _$$HomePageTransactionDataLoadedStateImplCopyWith(
          _$HomePageTransactionDataLoadedStateImpl value,
          $Res Function(_$HomePageTransactionDataLoadedStateImpl) then) =
      __$$HomePageTransactionDataLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TransactionModel> transactions});
}

/// @nodoc
class __$$HomePageTransactionDataLoadedStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res,
        _$HomePageTransactionDataLoadedStateImpl>
    implements _$$HomePageTransactionDataLoadedStateImplCopyWith<$Res> {
  __$$HomePageTransactionDataLoadedStateImplCopyWithImpl(
      _$HomePageTransactionDataLoadedStateImpl _value,
      $Res Function(_$HomePageTransactionDataLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$HomePageTransactionDataLoadedStateImpl(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ));
  }
}

/// @nodoc

class _$HomePageTransactionDataLoadedStateImpl
    implements HomePageTransactionDataLoadedState {
  const _$HomePageTransactionDataLoadedStateImpl(
      {required final List<TransactionModel> transactions})
      : _transactions = transactions;

  final List<TransactionModel> _transactions;
  @override
  List<TransactionModel> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'TransactionState.dataLoaded(transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageTransactionDataLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageTransactionDataLoadedStateImplCopyWith<
          _$HomePageTransactionDataLoadedStateImpl>
      get copyWith => __$$HomePageTransactionDataLoadedStateImplCopyWithImpl<
          _$HomePageTransactionDataLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TransactionModel> transactions) dataLoaded,
    required TResult Function() dataLoading,
    required TResult Function(String errorMessage) error,
  }) {
    return dataLoaded(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TransactionModel> transactions)? dataLoaded,
    TResult? Function()? dataLoading,
    TResult? Function(String errorMessage)? error,
  }) {
    return dataLoaded?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TransactionModel> transactions)? dataLoaded,
    TResult Function()? dataLoading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HomePageTransactionDataLoadedState value)
        dataLoaded,
    required TResult Function(LoadingState value) dataLoading,
    required TResult Function(TransactionErrorState value) error,
  }) {
    return dataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HomePageTransactionDataLoadedState value)? dataLoaded,
    TResult? Function(LoadingState value)? dataLoading,
    TResult? Function(TransactionErrorState value)? error,
  }) {
    return dataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HomePageTransactionDataLoadedState value)? dataLoaded,
    TResult Function(LoadingState value)? dataLoading,
    TResult Function(TransactionErrorState value)? error,
    required TResult orElse(),
  }) {
    if (dataLoaded != null) {
      return dataLoaded(this);
    }
    return orElse();
  }
}

abstract class HomePageTransactionDataLoadedState implements TransactionState {
  const factory HomePageTransactionDataLoadedState(
          {required final List<TransactionModel> transactions}) =
      _$HomePageTransactionDataLoadedStateImpl;

  List<TransactionModel> get transactions;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageTransactionDataLoadedStateImplCopyWith<
          _$HomePageTransactionDataLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'TransactionState.dataLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TransactionModel> transactions) dataLoaded,
    required TResult Function() dataLoading,
    required TResult Function(String errorMessage) error,
  }) {
    return dataLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TransactionModel> transactions)? dataLoaded,
    TResult? Function()? dataLoading,
    TResult? Function(String errorMessage)? error,
  }) {
    return dataLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TransactionModel> transactions)? dataLoaded,
    TResult Function()? dataLoading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (dataLoading != null) {
      return dataLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HomePageTransactionDataLoadedState value)
        dataLoaded,
    required TResult Function(LoadingState value) dataLoading,
    required TResult Function(TransactionErrorState value) error,
  }) {
    return dataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HomePageTransactionDataLoadedState value)? dataLoaded,
    TResult? Function(LoadingState value)? dataLoading,
    TResult? Function(TransactionErrorState value)? error,
  }) {
    return dataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HomePageTransactionDataLoadedState value)? dataLoaded,
    TResult Function(LoadingState value)? dataLoading,
    TResult Function(TransactionErrorState value)? error,
    required TResult orElse(),
  }) {
    if (dataLoading != null) {
      return dataLoading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements TransactionState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$TransactionErrorStateImplCopyWith<$Res> {
  factory _$$TransactionErrorStateImplCopyWith(
          _$TransactionErrorStateImpl value,
          $Res Function(_$TransactionErrorStateImpl) then) =
      __$$TransactionErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$TransactionErrorStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionErrorStateImpl>
    implements _$$TransactionErrorStateImplCopyWith<$Res> {
  __$$TransactionErrorStateImplCopyWithImpl(_$TransactionErrorStateImpl _value,
      $Res Function(_$TransactionErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$TransactionErrorStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionErrorStateImpl implements TransactionErrorState {
  const _$TransactionErrorStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TransactionState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionErrorStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionErrorStateImplCopyWith<_$TransactionErrorStateImpl>
      get copyWith => __$$TransactionErrorStateImplCopyWithImpl<
          _$TransactionErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TransactionModel> transactions) dataLoaded,
    required TResult Function() dataLoading,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TransactionModel> transactions)? dataLoaded,
    TResult? Function()? dataLoading,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TransactionModel> transactions)? dataLoaded,
    TResult Function()? dataLoading,
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
    required TResult Function(Initial value) initial,
    required TResult Function(HomePageTransactionDataLoadedState value)
        dataLoaded,
    required TResult Function(LoadingState value) dataLoading,
    required TResult Function(TransactionErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(HomePageTransactionDataLoadedState value)? dataLoaded,
    TResult? Function(LoadingState value)? dataLoading,
    TResult? Function(TransactionErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HomePageTransactionDataLoadedState value)? dataLoaded,
    TResult Function(LoadingState value)? dataLoading,
    TResult Function(TransactionErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TransactionErrorState implements TransactionState {
  const factory TransactionErrorState({required final String errorMessage}) =
      _$TransactionErrorStateImpl;

  String get errorMessage;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionErrorStateImplCopyWith<_$TransactionErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
