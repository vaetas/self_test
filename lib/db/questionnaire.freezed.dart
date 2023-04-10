// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Questionnaire _$QuestionnaireFromJson(Map<String, dynamic> json) {
  return _Questionnaire.fromJson(json);
}

/// @nodoc
mixin _$Questionnaire {
  String get name => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  List<QuestionnaireResult> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireCopyWith<Questionnaire> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireCopyWith<$Res> {
  factory $QuestionnaireCopyWith(
          Questionnaire value, $Res Function(Questionnaire) then) =
      _$QuestionnaireCopyWithImpl<$Res, Questionnaire>;
  @useResult
  $Res call(
      {String name,
      String text,
      List<Question> questions,
      List<QuestionnaireResult> results});
}

/// @nodoc
class _$QuestionnaireCopyWithImpl<$Res, $Val extends Questionnaire>
    implements $QuestionnaireCopyWith<$Res> {
  _$QuestionnaireCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? text = null,
    Object? questions = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionnaireCopyWith<$Res>
    implements $QuestionnaireCopyWith<$Res> {
  factory _$$_QuestionnaireCopyWith(
          _$_Questionnaire value, $Res Function(_$_Questionnaire) then) =
      __$$_QuestionnaireCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String text,
      List<Question> questions,
      List<QuestionnaireResult> results});
}

/// @nodoc
class __$$_QuestionnaireCopyWithImpl<$Res>
    extends _$QuestionnaireCopyWithImpl<$Res, _$_Questionnaire>
    implements _$$_QuestionnaireCopyWith<$Res> {
  __$$_QuestionnaireCopyWithImpl(
      _$_Questionnaire _value, $Res Function(_$_Questionnaire) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? text = null,
    Object? questions = null,
    Object? results = null,
  }) {
    return _then(_$_Questionnaire(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Questionnaire implements _Questionnaire {
  const _$_Questionnaire(
      {required this.name,
      required this.text,
      required final List<Question> questions,
      required final List<QuestionnaireResult> results})
      : _questions = questions,
        _results = results;

  factory _$_Questionnaire.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireFromJson(json);

  @override
  final String name;
  @override
  final String text;
  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final List<QuestionnaireResult> _results;
  @override
  List<QuestionnaireResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'Questionnaire(name: $name, text: $text, questions: $questions, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Questionnaire &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      text,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireCopyWith<_$_Questionnaire> get copyWith =>
      __$$_QuestionnaireCopyWithImpl<_$_Questionnaire>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireToJson(
      this,
    );
  }
}

abstract class _Questionnaire implements Questionnaire {
  const factory _Questionnaire(
      {required final String name,
      required final String text,
      required final List<Question> questions,
      required final List<QuestionnaireResult> results}) = _$_Questionnaire;

  factory _Questionnaire.fromJson(Map<String, dynamic> json) =
      _$_Questionnaire.fromJson;

  @override
  String get name;
  @override
  String get text;
  @override
  List<Question> get questions;
  @override
  List<QuestionnaireResult> get results;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireCopyWith<_$_Questionnaire> get copyWith =>
      throw _privateConstructorUsedError;
}

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<Answer> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call({int id, String text, List<Answer> answers});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String text, List<Answer> answers});
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$_Question>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? answers = null,
  }) {
    return _then(_$_Question(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question implements _Question {
  const _$_Question(
      {required this.id,
      required this.text,
      required final List<Answer> answers})
      : _answers = answers;

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  final int id;
  @override
  final String text;
  final List<Answer> _answers;
  @override
  List<Answer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'Question(id: $id, text: $text, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, text, const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {required final int id,
      required final String text,
      required final List<Answer> answers}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  List<Answer> get answers;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
mixin _$Answer {
  int get value => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res, Answer>;
  @useResult
  $Res call({int value, String text});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res, $Val extends Answer>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$_AnswerCopyWith(_$_Answer value, $Res Function(_$_Answer) then) =
      __$$_AnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value, String text});
}

/// @nodoc
class __$$_AnswerCopyWithImpl<$Res>
    extends _$AnswerCopyWithImpl<$Res, _$_Answer>
    implements _$$_AnswerCopyWith<$Res> {
  __$$_AnswerCopyWithImpl(_$_Answer _value, $Res Function(_$_Answer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? text = null,
  }) {
    return _then(_$_Answer(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Answer implements _Answer {
  const _$_Answer({required this.value, required this.text});

  factory _$_Answer.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFromJson(json);

  @override
  final int value;
  @override
  final String text;

  @override
  String toString() {
    return 'Answer(value: $value, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Answer &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      __$$_AnswerCopyWithImpl<_$_Answer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerToJson(
      this,
    );
  }
}

abstract class _Answer implements Answer {
  const factory _Answer(
      {required final int value, required final String text}) = _$_Answer;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$_Answer.fromJson;

  @override
  int get value;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionnaireResult _$QuestionnaireResultFromJson(Map<String, dynamic> json) {
  return _QuestionnaireResult.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireResult {
  int get cutpoint => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireResultCopyWith<QuestionnaireResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireResultCopyWith<$Res> {
  factory $QuestionnaireResultCopyWith(
          QuestionnaireResult value, $Res Function(QuestionnaireResult) then) =
      _$QuestionnaireResultCopyWithImpl<$Res, QuestionnaireResult>;
  @useResult
  $Res call({int cutpoint, String text});
}

/// @nodoc
class _$QuestionnaireResultCopyWithImpl<$Res, $Val extends QuestionnaireResult>
    implements $QuestionnaireResultCopyWith<$Res> {
  _$QuestionnaireResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cutpoint = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      cutpoint: null == cutpoint
          ? _value.cutpoint
          : cutpoint // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionnaireResultCopyWith<$Res>
    implements $QuestionnaireResultCopyWith<$Res> {
  factory _$$_QuestionnaireResultCopyWith(_$_QuestionnaireResult value,
          $Res Function(_$_QuestionnaireResult) then) =
      __$$_QuestionnaireResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int cutpoint, String text});
}

/// @nodoc
class __$$_QuestionnaireResultCopyWithImpl<$Res>
    extends _$QuestionnaireResultCopyWithImpl<$Res, _$_QuestionnaireResult>
    implements _$$_QuestionnaireResultCopyWith<$Res> {
  __$$_QuestionnaireResultCopyWithImpl(_$_QuestionnaireResult _value,
      $Res Function(_$_QuestionnaireResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cutpoint = null,
    Object? text = null,
  }) {
    return _then(_$_QuestionnaireResult(
      cutpoint: null == cutpoint
          ? _value.cutpoint
          : cutpoint // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionnaireResult implements _QuestionnaireResult {
  const _$_QuestionnaireResult({required this.cutpoint, required this.text});

  factory _$_QuestionnaireResult.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireResultFromJson(json);

  @override
  final int cutpoint;
  @override
  final String text;

  @override
  String toString() {
    return 'QuestionnaireResult(cutpoint: $cutpoint, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireResult &&
            (identical(other.cutpoint, cutpoint) ||
                other.cutpoint == cutpoint) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cutpoint, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireResultCopyWith<_$_QuestionnaireResult> get copyWith =>
      __$$_QuestionnaireResultCopyWithImpl<_$_QuestionnaireResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireResultToJson(
      this,
    );
  }
}

abstract class _QuestionnaireResult implements QuestionnaireResult {
  const factory _QuestionnaireResult(
      {required final int cutpoint,
      required final String text}) = _$_QuestionnaireResult;

  factory _QuestionnaireResult.fromJson(Map<String, dynamic> json) =
      _$_QuestionnaireResult.fromJson;

  @override
  int get cutpoint;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireResultCopyWith<_$_QuestionnaireResult> get copyWith =>
      throw _privateConstructorUsedError;
}

PersistedQuestionnaire _$PersistedQuestionnaireFromJson(
    Map<String, dynamic> json) {
  return _PersistedQuestionnaire.fromJson(json);
}

/// @nodoc
mixin _$PersistedQuestionnaire {
  List<PersistedQuestionnaireAnswer> get answers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersistedQuestionnaireCopyWith<PersistedQuestionnaire> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersistedQuestionnaireCopyWith<$Res> {
  factory $PersistedQuestionnaireCopyWith(PersistedQuestionnaire value,
          $Res Function(PersistedQuestionnaire) then) =
      _$PersistedQuestionnaireCopyWithImpl<$Res, PersistedQuestionnaire>;
  @useResult
  $Res call({List<PersistedQuestionnaireAnswer> answers});
}

/// @nodoc
class _$PersistedQuestionnaireCopyWithImpl<$Res,
        $Val extends PersistedQuestionnaire>
    implements $PersistedQuestionnaireCopyWith<$Res> {
  _$PersistedQuestionnaireCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<PersistedQuestionnaireAnswer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersistedQuestionnaireCopyWith<$Res>
    implements $PersistedQuestionnaireCopyWith<$Res> {
  factory _$$_PersistedQuestionnaireCopyWith(_$_PersistedQuestionnaire value,
          $Res Function(_$_PersistedQuestionnaire) then) =
      __$$_PersistedQuestionnaireCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PersistedQuestionnaireAnswer> answers});
}

/// @nodoc
class __$$_PersistedQuestionnaireCopyWithImpl<$Res>
    extends _$PersistedQuestionnaireCopyWithImpl<$Res,
        _$_PersistedQuestionnaire>
    implements _$$_PersistedQuestionnaireCopyWith<$Res> {
  __$$_PersistedQuestionnaireCopyWithImpl(_$_PersistedQuestionnaire _value,
      $Res Function(_$_PersistedQuestionnaire) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = null,
  }) {
    return _then(_$_PersistedQuestionnaire(
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<PersistedQuestionnaireAnswer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersistedQuestionnaire implements _PersistedQuestionnaire {
  const _$_PersistedQuestionnaire(
      {required final List<PersistedQuestionnaireAnswer> answers})
      : _answers = answers;

  factory _$_PersistedQuestionnaire.fromJson(Map<String, dynamic> json) =>
      _$$_PersistedQuestionnaireFromJson(json);

  final List<PersistedQuestionnaireAnswer> _answers;
  @override
  List<PersistedQuestionnaireAnswer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'PersistedQuestionnaire(answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersistedQuestionnaire &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersistedQuestionnaireCopyWith<_$_PersistedQuestionnaire> get copyWith =>
      __$$_PersistedQuestionnaireCopyWithImpl<_$_PersistedQuestionnaire>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersistedQuestionnaireToJson(
      this,
    );
  }
}

abstract class _PersistedQuestionnaire implements PersistedQuestionnaire {
  const factory _PersistedQuestionnaire(
          {required final List<PersistedQuestionnaireAnswer> answers}) =
      _$_PersistedQuestionnaire;

  factory _PersistedQuestionnaire.fromJson(Map<String, dynamic> json) =
      _$_PersistedQuestionnaire.fromJson;

  @override
  List<PersistedQuestionnaireAnswer> get answers;
  @override
  @JsonKey(ignore: true)
  _$$_PersistedQuestionnaireCopyWith<_$_PersistedQuestionnaire> get copyWith =>
      throw _privateConstructorUsedError;
}

PersistedQuestionnaireAnswer _$PersistedQuestionnaireAnswerFromJson(
    Map<String, dynamic> json) {
  return _PersistedQuestionnaireAnswer.fromJson(json);
}

/// @nodoc
mixin _$PersistedQuestionnaireAnswer {
  int get questionId => throw _privateConstructorUsedError;
  int get answerValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersistedQuestionnaireAnswerCopyWith<PersistedQuestionnaireAnswer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersistedQuestionnaireAnswerCopyWith<$Res> {
  factory $PersistedQuestionnaireAnswerCopyWith(
          PersistedQuestionnaireAnswer value,
          $Res Function(PersistedQuestionnaireAnswer) then) =
      _$PersistedQuestionnaireAnswerCopyWithImpl<$Res,
          PersistedQuestionnaireAnswer>;
  @useResult
  $Res call({int questionId, int answerValue});
}

/// @nodoc
class _$PersistedQuestionnaireAnswerCopyWithImpl<$Res,
        $Val extends PersistedQuestionnaireAnswer>
    implements $PersistedQuestionnaireAnswerCopyWith<$Res> {
  _$PersistedQuestionnaireAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? answerValue = null,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      answerValue: null == answerValue
          ? _value.answerValue
          : answerValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersistedQuestionnaireAnswerCopyWith<$Res>
    implements $PersistedQuestionnaireAnswerCopyWith<$Res> {
  factory _$$_PersistedQuestionnaireAnswerCopyWith(
          _$_PersistedQuestionnaireAnswer value,
          $Res Function(_$_PersistedQuestionnaireAnswer) then) =
      __$$_PersistedQuestionnaireAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int questionId, int answerValue});
}

/// @nodoc
class __$$_PersistedQuestionnaireAnswerCopyWithImpl<$Res>
    extends _$PersistedQuestionnaireAnswerCopyWithImpl<$Res,
        _$_PersistedQuestionnaireAnswer>
    implements _$$_PersistedQuestionnaireAnswerCopyWith<$Res> {
  __$$_PersistedQuestionnaireAnswerCopyWithImpl(
      _$_PersistedQuestionnaireAnswer _value,
      $Res Function(_$_PersistedQuestionnaireAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? answerValue = null,
  }) {
    return _then(_$_PersistedQuestionnaireAnswer(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      answerValue: null == answerValue
          ? _value.answerValue
          : answerValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersistedQuestionnaireAnswer implements _PersistedQuestionnaireAnswer {
  const _$_PersistedQuestionnaireAnswer(
      {required this.questionId, required this.answerValue});

  factory _$_PersistedQuestionnaireAnswer.fromJson(Map<String, dynamic> json) =>
      _$$_PersistedQuestionnaireAnswerFromJson(json);

  @override
  final int questionId;
  @override
  final int answerValue;

  @override
  String toString() {
    return 'PersistedQuestionnaireAnswer(questionId: $questionId, answerValue: $answerValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersistedQuestionnaireAnswer &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answerValue, answerValue) ||
                other.answerValue == answerValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questionId, answerValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersistedQuestionnaireAnswerCopyWith<_$_PersistedQuestionnaireAnswer>
      get copyWith => __$$_PersistedQuestionnaireAnswerCopyWithImpl<
          _$_PersistedQuestionnaireAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersistedQuestionnaireAnswerToJson(
      this,
    );
  }
}

abstract class _PersistedQuestionnaireAnswer
    implements PersistedQuestionnaireAnswer {
  const factory _PersistedQuestionnaireAnswer(
      {required final int questionId,
      required final int answerValue}) = _$_PersistedQuestionnaireAnswer;

  factory _PersistedQuestionnaireAnswer.fromJson(Map<String, dynamic> json) =
      _$_PersistedQuestionnaireAnswer.fromJson;

  @override
  int get questionId;
  @override
  int get answerValue;
  @override
  @JsonKey(ignore: true)
  _$$_PersistedQuestionnaireAnswerCopyWith<_$_PersistedQuestionnaireAnswer>
      get copyWith => throw _privateConstructorUsedError;
}
