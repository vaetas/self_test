// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryEntry {
  Entry get entry => throw _privateConstructorUsedError;
  Result get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryEntryCopyWith<HistoryEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEntryCopyWith<$Res> {
  factory $HistoryEntryCopyWith(
          HistoryEntry value, $Res Function(HistoryEntry) then) =
      _$HistoryEntryCopyWithImpl<$Res, HistoryEntry>;
  @useResult
  $Res call({Entry entry, Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class _$HistoryEntryCopyWithImpl<$Res, $Val extends HistoryEntry>
    implements $HistoryEntryCopyWith<$Res> {
  _$HistoryEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = freezed,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      entry: freezed == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as Entry,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res> get result {
    return $ResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HistoryEntryCopyWith<$Res>
    implements $HistoryEntryCopyWith<$Res> {
  factory _$$_HistoryEntryCopyWith(
          _$_HistoryEntry value, $Res Function(_$_HistoryEntry) then) =
      __$$_HistoryEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Entry entry, Result result});

  @override
  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$_HistoryEntryCopyWithImpl<$Res>
    extends _$HistoryEntryCopyWithImpl<$Res, _$_HistoryEntry>
    implements _$$_HistoryEntryCopyWith<$Res> {
  __$$_HistoryEntryCopyWithImpl(
      _$_HistoryEntry _value, $Res Function(_$_HistoryEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = freezed,
    Object? result = null,
  }) {
    return _then(_$_HistoryEntry(
      entry: freezed == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as Entry,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }
}

/// @nodoc

class _$_HistoryEntry implements _HistoryEntry {
  const _$_HistoryEntry({required this.entry, required this.result});

  @override
  final Entry entry;
  @override
  final Result result;

  @override
  String toString() {
    return 'HistoryEntry(entry: $entry, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryEntry &&
            const DeepCollectionEquality().equals(other.entry, entry) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(entry), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryEntryCopyWith<_$_HistoryEntry> get copyWith =>
      __$$_HistoryEntryCopyWithImpl<_$_HistoryEntry>(this, _$identity);
}

abstract class _HistoryEntry implements HistoryEntry {
  const factory _HistoryEntry(
      {required final Entry entry,
      required final Result result}) = _$_HistoryEntry;

  @override
  Entry get entry;
  @override
  Result get result;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryEntryCopyWith<_$_HistoryEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
