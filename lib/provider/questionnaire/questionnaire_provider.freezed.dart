// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionnaireState {
  int get currentIndex => throw _privateConstructorUsedError;
  Questionnaire get questionnaire => throw _privateConstructorUsedError;
  List<SelectedAnswer> get selectedAnswers =>
      throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionnaireStateCopyWith<QuestionnaireState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireStateCopyWith<$Res> {
  factory $QuestionnaireStateCopyWith(
          QuestionnaireState value, $Res Function(QuestionnaireState) then) =
      _$QuestionnaireStateCopyWithImpl<$Res, QuestionnaireState>;
  @useResult
  $Res call(
      {int currentIndex,
      Questionnaire questionnaire,
      List<SelectedAnswer> selectedAnswers,
      bool isFinished,
      Result? result});

  $QuestionnaireCopyWith<$Res> get questionnaire;
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$QuestionnaireStateCopyWithImpl<$Res, $Val extends QuestionnaireState>
    implements $QuestionnaireStateCopyWith<$Res> {
  _$QuestionnaireStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? questionnaire = null,
    Object? selectedAnswers = null,
    Object? isFinished = null,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      questionnaire: null == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as Questionnaire,
      selectedAnswers: null == selectedAnswers
          ? _value.selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as List<SelectedAnswer>,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireCopyWith<$Res> get questionnaire {
    return $QuestionnaireCopyWith<$Res>(_value.questionnaire, (value) {
      return _then(_value.copyWith(questionnaire: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionnaireStateCopyWith<$Res>
    implements $QuestionnaireStateCopyWith<$Res> {
  factory _$$_QuestionnaireStateCopyWith(_$_QuestionnaireState value,
          $Res Function(_$_QuestionnaireState) then) =
      __$$_QuestionnaireStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentIndex,
      Questionnaire questionnaire,
      List<SelectedAnswer> selectedAnswers,
      bool isFinished,
      Result? result});

  @override
  $QuestionnaireCopyWith<$Res> get questionnaire;
  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_QuestionnaireStateCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res, _$_QuestionnaireState>
    implements _$$_QuestionnaireStateCopyWith<$Res> {
  __$$_QuestionnaireStateCopyWithImpl(
      _$_QuestionnaireState _value, $Res Function(_$_QuestionnaireState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? questionnaire = null,
    Object? selectedAnswers = null,
    Object? isFinished = null,
    Object? result = freezed,
  }) {
    return _then(_$_QuestionnaireState(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      questionnaire: null == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as Questionnaire,
      selectedAnswers: null == selectedAnswers
          ? _value._selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as List<SelectedAnswer>,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc

class _$_QuestionnaireState implements _QuestionnaireState {
  const _$_QuestionnaireState(
      {required this.currentIndex,
      required this.questionnaire,
      required final List<SelectedAnswer> selectedAnswers,
      this.isFinished = false,
      this.result})
      : _selectedAnswers = selectedAnswers;

  @override
  final int currentIndex;
  @override
  final Questionnaire questionnaire;
  final List<SelectedAnswer> _selectedAnswers;
  @override
  List<SelectedAnswer> get selectedAnswers {
    if (_selectedAnswers is EqualUnmodifiableListView) return _selectedAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedAnswers);
  }

  @override
  @JsonKey()
  final bool isFinished;
  @override
  final Result? result;

  @override
  String toString() {
    return 'QuestionnaireState(currentIndex: $currentIndex, questionnaire: $questionnaire, selectedAnswers: $selectedAnswers, isFinished: $isFinished, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireState &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.questionnaire, questionnaire) ||
                other.questionnaire == questionnaire) &&
            const DeepCollectionEquality()
                .equals(other._selectedAnswers, _selectedAnswers) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentIndex,
      questionnaire,
      const DeepCollectionEquality().hash(_selectedAnswers),
      isFinished,
      result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireStateCopyWith<_$_QuestionnaireState> get copyWith =>
      __$$_QuestionnaireStateCopyWithImpl<_$_QuestionnaireState>(
          this, _$identity);
}

abstract class _QuestionnaireState implements QuestionnaireState {
  const factory _QuestionnaireState(
      {required final int currentIndex,
      required final Questionnaire questionnaire,
      required final List<SelectedAnswer> selectedAnswers,
      final bool isFinished,
      final Result? result}) = _$_QuestionnaireState;

  @override
  int get currentIndex;
  @override
  Questionnaire get questionnaire;
  @override
  List<SelectedAnswer> get selectedAnswers;
  @override
  bool get isFinished;
  @override
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireStateCopyWith<_$_QuestionnaireState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectedAnswer {
  Question get question => throw _privateConstructorUsedError;
  Answer get answer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedAnswerCopyWith<SelectedAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedAnswerCopyWith<$Res> {
  factory $SelectedAnswerCopyWith(
          SelectedAnswer value, $Res Function(SelectedAnswer) then) =
      _$SelectedAnswerCopyWithImpl<$Res, SelectedAnswer>;
  @useResult
  $Res call({Question question, Answer answer});

  $QuestionCopyWith<$Res> get question;
  $AnswerCopyWith<$Res> get answer;
}

/// @nodoc
class _$SelectedAnswerCopyWithImpl<$Res, $Val extends SelectedAnswer>
    implements $SelectedAnswerCopyWith<$Res> {
  _$SelectedAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswerCopyWith<$Res> get answer {
    return $AnswerCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SelectedAnswerCopyWith<$Res>
    implements $SelectedAnswerCopyWith<$Res> {
  factory _$$_SelectedAnswerCopyWith(
          _$_SelectedAnswer value, $Res Function(_$_SelectedAnswer) then) =
      __$$_SelectedAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Question question, Answer answer});

  @override
  $QuestionCopyWith<$Res> get question;
  @override
  $AnswerCopyWith<$Res> get answer;
}

/// @nodoc
class __$$_SelectedAnswerCopyWithImpl<$Res>
    extends _$SelectedAnswerCopyWithImpl<$Res, _$_SelectedAnswer>
    implements _$$_SelectedAnswerCopyWith<$Res> {
  __$$_SelectedAnswerCopyWithImpl(
      _$_SelectedAnswer _value, $Res Function(_$_SelectedAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_$_SelectedAnswer(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answer,
    ));
  }
}

/// @nodoc

class _$_SelectedAnswer implements _SelectedAnswer {
  const _$_SelectedAnswer({required this.question, required this.answer});

  @override
  final Question question;
  @override
  final Answer answer;

  @override
  String toString() {
    return 'SelectedAnswer(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedAnswer &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedAnswerCopyWith<_$_SelectedAnswer> get copyWith =>
      __$$_SelectedAnswerCopyWithImpl<_$_SelectedAnswer>(this, _$identity);
}

abstract class _SelectedAnswer implements SelectedAnswer {
  const factory _SelectedAnswer(
      {required final Question question,
      required final Answer answer}) = _$_SelectedAnswer;

  @override
  Question get question;
  @override
  Answer get answer;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedAnswerCopyWith<_$_SelectedAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Result {
  String get questionnaire => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  List<SelectedAnswer> get selectedAnswers =>
      throw _privateConstructorUsedError;
  QuestionnaireResult get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {String questionnaire,
      int score,
      List<SelectedAnswer> selectedAnswers,
      QuestionnaireResult result});

  $QuestionnaireResultCopyWith<$Res> get result;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionnaire = null,
    Object? score = null,
    Object? selectedAnswers = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      questionnaire: null == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAnswers: null == selectedAnswers
          ? _value.selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as List<SelectedAnswer>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QuestionnaireResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireResultCopyWith<$Res> get result {
    return $QuestionnaireResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String questionnaire,
      int score,
      List<SelectedAnswer> selectedAnswers,
      QuestionnaireResult result});

  @override
  $QuestionnaireResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionnaire = null,
    Object? score = null,
    Object? selectedAnswers = null,
    Object? result = null,
  }) {
    return _then(_$_Result(
      questionnaire: null == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAnswers: null == selectedAnswers
          ? _value._selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as List<SelectedAnswer>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QuestionnaireResult,
    ));
  }
}

/// @nodoc

class _$_Result implements _Result {
  const _$_Result(
      {required this.questionnaire,
      required this.score,
      required final List<SelectedAnswer> selectedAnswers,
      required this.result})
      : _selectedAnswers = selectedAnswers;

  @override
  final String questionnaire;
  @override
  final int score;
  final List<SelectedAnswer> _selectedAnswers;
  @override
  List<SelectedAnswer> get selectedAnswers {
    if (_selectedAnswers is EqualUnmodifiableListView) return _selectedAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedAnswers);
  }

  @override
  final QuestionnaireResult result;

  @override
  String toString() {
    return 'Result(questionnaire: $questionnaire, score: $score, selectedAnswers: $selectedAnswers, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.questionnaire, questionnaire) ||
                other.questionnaire == questionnaire) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality()
                .equals(other._selectedAnswers, _selectedAnswers) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionnaire, score,
      const DeepCollectionEquality().hash(_selectedAnswers), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);
}

abstract class _Result implements Result {
  const factory _Result(
      {required final String questionnaire,
      required final int score,
      required final List<SelectedAnswer> selectedAnswers,
      required final QuestionnaireResult result}) = _$_Result;

  @override
  String get questionnaire;
  @override
  int get score;
  @override
  List<SelectedAnswer> get selectedAnswers;
  @override
  QuestionnaireResult get result;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}
