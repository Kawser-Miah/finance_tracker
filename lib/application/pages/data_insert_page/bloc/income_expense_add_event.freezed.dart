// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_expense_add_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IncomeExpenseAddEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String type, String title,
            String amount, String description, String date)
        textChanged,
    required TResult Function(TransactionModel transaction) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String type, String title, String amount,
            String description, String date)?
        textChanged,
    TResult? Function(TransactionModel transaction)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String type, String title, String amount,
            String description, String date)?
        textChanged,
    TResult Function(TransactionModel transaction)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFieldTextChangeEvent value) textChanged,
    required TResult Function(SubmitToDataBaseEvent value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFieldTextChangeEvent value)? textChanged,
    TResult? Function(SubmitToDataBaseEvent value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFieldTextChangeEvent value)? textChanged,
    TResult Function(SubmitToDataBaseEvent value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeExpenseAddEventCopyWith<$Res> {
  factory $IncomeExpenseAddEventCopyWith(IncomeExpenseAddEvent value,
          $Res Function(IncomeExpenseAddEvent) then) =
      _$IncomeExpenseAddEventCopyWithImpl<$Res, IncomeExpenseAddEvent>;
}

/// @nodoc
class _$IncomeExpenseAddEventCopyWithImpl<$Res,
        $Val extends IncomeExpenseAddEvent>
    implements $IncomeExpenseAddEventCopyWith<$Res> {
  _$IncomeExpenseAddEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IncomeExpenseAddEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TextFieldTextChangeEventImplCopyWith<$Res> {
  factory _$$TextFieldTextChangeEventImplCopyWith(
          _$TextFieldTextChangeEventImpl value,
          $Res Function(_$TextFieldTextChangeEventImpl) then) =
      __$$TextFieldTextChangeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String category,
      String type,
      String title,
      String amount,
      String description,
      String date});
}

/// @nodoc
class __$$TextFieldTextChangeEventImplCopyWithImpl<$Res>
    extends _$IncomeExpenseAddEventCopyWithImpl<$Res,
        _$TextFieldTextChangeEventImpl>
    implements _$$TextFieldTextChangeEventImplCopyWith<$Res> {
  __$$TextFieldTextChangeEventImplCopyWithImpl(
      _$TextFieldTextChangeEventImpl _value,
      $Res Function(_$TextFieldTextChangeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of IncomeExpenseAddEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? type = null,
    Object? title = null,
    Object? amount = null,
    Object? description = null,
    Object? date = null,
  }) {
    return _then(_$TextFieldTextChangeEventImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TextFieldTextChangeEventImpl implements TextFieldTextChangeEvent {
  const _$TextFieldTextChangeEventImpl(
      {required this.category,
      required this.type,
      required this.title,
      required this.amount,
      required this.description,
      required this.date});

  @override
  final String category;
  @override
  final String type;
  @override
  final String title;
  @override
  final String amount;
  @override
  final String description;
  @override
  final String date;

  @override
  String toString() {
    return 'IncomeExpenseAddEvent.textChanged(category: $category, type: $type, title: $title, amount: $amount, description: $description, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextFieldTextChangeEventImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, category, type, title, amount, description, date);

  /// Create a copy of IncomeExpenseAddEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextFieldTextChangeEventImplCopyWith<_$TextFieldTextChangeEventImpl>
      get copyWith => __$$TextFieldTextChangeEventImplCopyWithImpl<
          _$TextFieldTextChangeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String type, String title,
            String amount, String description, String date)
        textChanged,
    required TResult Function(TransactionModel transaction) submitted,
  }) {
    return textChanged(category, type, title, amount, description, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String type, String title, String amount,
            String description, String date)?
        textChanged,
    TResult? Function(TransactionModel transaction)? submitted,
  }) {
    return textChanged?.call(category, type, title, amount, description, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String type, String title, String amount,
            String description, String date)?
        textChanged,
    TResult Function(TransactionModel transaction)? submitted,
    required TResult orElse(),
  }) {
    if (textChanged != null) {
      return textChanged(category, type, title, amount, description, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFieldTextChangeEvent value) textChanged,
    required TResult Function(SubmitToDataBaseEvent value) submitted,
  }) {
    return textChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFieldTextChangeEvent value)? textChanged,
    TResult? Function(SubmitToDataBaseEvent value)? submitted,
  }) {
    return textChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFieldTextChangeEvent value)? textChanged,
    TResult Function(SubmitToDataBaseEvent value)? submitted,
    required TResult orElse(),
  }) {
    if (textChanged != null) {
      return textChanged(this);
    }
    return orElse();
  }
}

abstract class TextFieldTextChangeEvent implements IncomeExpenseAddEvent {
  const factory TextFieldTextChangeEvent(
      {required final String category,
      required final String type,
      required final String title,
      required final String amount,
      required final String description,
      required final String date}) = _$TextFieldTextChangeEventImpl;

  String get category;
  String get type;
  String get title;
  String get amount;
  String get description;
  String get date;

  /// Create a copy of IncomeExpenseAddEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextFieldTextChangeEventImplCopyWith<_$TextFieldTextChangeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitToDataBaseEventImplCopyWith<$Res> {
  factory _$$SubmitToDataBaseEventImplCopyWith(
          _$SubmitToDataBaseEventImpl value,
          $Res Function(_$SubmitToDataBaseEventImpl) then) =
      __$$SubmitToDataBaseEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel transaction});
}

/// @nodoc
class __$$SubmitToDataBaseEventImplCopyWithImpl<$Res>
    extends _$IncomeExpenseAddEventCopyWithImpl<$Res,
        _$SubmitToDataBaseEventImpl>
    implements _$$SubmitToDataBaseEventImplCopyWith<$Res> {
  __$$SubmitToDataBaseEventImplCopyWithImpl(_$SubmitToDataBaseEventImpl _value,
      $Res Function(_$SubmitToDataBaseEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of IncomeExpenseAddEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$SubmitToDataBaseEventImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$SubmitToDataBaseEventImpl implements SubmitToDataBaseEvent {
  const _$SubmitToDataBaseEventImpl({required this.transaction});

  @override
  final TransactionModel transaction;

  @override
  String toString() {
    return 'IncomeExpenseAddEvent.submitted(transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitToDataBaseEventImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  /// Create a copy of IncomeExpenseAddEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitToDataBaseEventImplCopyWith<_$SubmitToDataBaseEventImpl>
      get copyWith => __$$SubmitToDataBaseEventImplCopyWithImpl<
          _$SubmitToDataBaseEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String type, String title,
            String amount, String description, String date)
        textChanged,
    required TResult Function(TransactionModel transaction) submitted,
  }) {
    return submitted(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String type, String title, String amount,
            String description, String date)?
        textChanged,
    TResult? Function(TransactionModel transaction)? submitted,
  }) {
    return submitted?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String type, String title, String amount,
            String description, String date)?
        textChanged,
    TResult Function(TransactionModel transaction)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFieldTextChangeEvent value) textChanged,
    required TResult Function(SubmitToDataBaseEvent value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFieldTextChangeEvent value)? textChanged,
    TResult? Function(SubmitToDataBaseEvent value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFieldTextChangeEvent value)? textChanged,
    TResult Function(SubmitToDataBaseEvent value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class SubmitToDataBaseEvent implements IncomeExpenseAddEvent {
  const factory SubmitToDataBaseEvent(
          {required final TransactionModel transaction}) =
      _$SubmitToDataBaseEventImpl;

  TransactionModel get transaction;

  /// Create a copy of IncomeExpenseAddEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitToDataBaseEventImplCopyWith<_$SubmitToDataBaseEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
