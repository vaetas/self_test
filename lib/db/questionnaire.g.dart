// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Questionnaire _$$_QuestionnaireFromJson(Map<String, dynamic> json) =>
    _$_Questionnaire(
      name: json['name'] as String,
      text: json['text'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      results: (json['results'] as List<dynamic>)
          .map((e) => QuestionnaireResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionnaireToJson(_$_Questionnaire instance) =>
    <String, dynamic>{
      'name': instance.name,
      'text': instance.text,
      'questions': instance.questions.map((e) => e.toJson()).toList(),
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as int,
      text: json['text'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'answers': instance.answers.map((e) => e.toJson()).toList(),
    };

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      value: json['value'] as int,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
    };

_$_QuestionnaireResult _$$_QuestionnaireResultFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionnaireResult(
      cutpoint: json['cutpoint'] as int,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_QuestionnaireResultToJson(
        _$_QuestionnaireResult instance) =>
    <String, dynamic>{
      'cutpoint': instance.cutpoint,
      'text': instance.text,
    };

_$_PersistedQuestionnaire _$$_PersistedQuestionnaireFromJson(
        Map<String, dynamic> json) =>
    _$_PersistedQuestionnaire(
      answers: (json['answers'] as List<dynamic>)
          .map((e) =>
              PersistedQuestionnaireAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PersistedQuestionnaireToJson(
        _$_PersistedQuestionnaire instance) =>
    <String, dynamic>{
      'answers': instance.answers.map((e) => e.toJson()).toList(),
    };

_$_PersistedQuestionnaireAnswer _$$_PersistedQuestionnaireAnswerFromJson(
        Map<String, dynamic> json) =>
    _$_PersistedQuestionnaireAnswer(
      questionId: json['questionId'] as int,
      answerValue: json['answerValue'] as int,
    );

Map<String, dynamic> _$$_PersistedQuestionnaireAnswerToJson(
        _$_PersistedQuestionnaireAnswer instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'answerValue': instance.answerValue,
    };
