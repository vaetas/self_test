import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire.freezed.dart';
part 'questionnaire.g.dart';

@freezed
class Questionnaire with _$Questionnaire {
  const factory Questionnaire({
    required String name,
    required String text,
    required List<Question> questions,
    required List<QuestionnaireResult> results,
  }) = _Questionnaire;

  factory Questionnaire.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireFromJson(json);
}

@freezed
class Question with _$Question {
  const factory Question({
    required int id,
    required String text,
    required List<Answer> answers,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
class Answer with _$Answer {
  const factory Answer({
    required int value,
    required String text,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

@freezed
class QuestionnaireResult with _$QuestionnaireResult {
  const factory QuestionnaireResult({
    required int cutpoint,
    required String text,
  }) = _QuestionnaireResult;

  factory QuestionnaireResult.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireResultFromJson(json);
}

@freezed
class PersistedQuestionnaire with _$PersistedQuestionnaire {
  const factory PersistedQuestionnaire({
    required List<PersistedQuestionnaireAnswer> answers,
  }) = _PersistedQuestionnaire;

  factory PersistedQuestionnaire.fromJson(Map<String, dynamic> json) =>
      _$PersistedQuestionnaireFromJson(json);
}

@freezed
class PersistedQuestionnaireAnswer with _$PersistedQuestionnaireAnswer {
  const factory PersistedQuestionnaireAnswer({
    required int questionId,
    required int answerValue,
  }) = _PersistedQuestionnaireAnswer;

  factory PersistedQuestionnaireAnswer.fromJson(Map<String, dynamic> json) =>
      _$PersistedQuestionnaireAnswerFromJson(json);
}
