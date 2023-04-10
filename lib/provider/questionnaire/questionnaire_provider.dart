import 'dart:math' as math;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/data/phq9.dart';
import '/db/database.dart';
import '/db/questionnaire.dart';
import '/provider/database_provider.dart';

part 'questionnaire_provider.freezed.dart';

final questionnaireProvider = StateNotifierProvider.autoDispose<
    QuestionnaireNotifier, QuestionnaireState>(
  (ref) {
    final database = ref.watch(databaseProvider);

    return QuestionnaireNotifier(
      const QuestionnaireState(
        currentIndex: 0,
        questionnaire: Questionnaires.phq9,
        selectedAnswers: [],
      ),
      database: database,
    );
  },
);

@freezed
class QuestionnaireState with _$QuestionnaireState {
  const factory QuestionnaireState({
    required int currentIndex,
    required Questionnaire questionnaire,
    required List<SelectedAnswer> selectedAnswers,
    @Default(false) bool isFinished,
    Result? result,
  }) = _QuestionnaireState;
}

@freezed
class SelectedAnswer with _$SelectedAnswer {
  const factory SelectedAnswer({
    required Question question,
    required Answer answer,
  }) = _SelectedAnswer;
}

@freezed
class Result with _$Result {
  const factory Result({
    required String questionnaire,
    required int score,
    required List<SelectedAnswer> selectedAnswers,
    required QuestionnaireResult result,
  }) = _Result;
}

extension ResultX on Result {
  EntriesCompanion toEntry() {
    return EntriesCompanion.insert(
      type: questionnaire,
      score: score,
      questionnaire: PersistedQuestionnaire(
        answers: selectedAnswers
            .map(
              (selectedAnswer) => PersistedQuestionnaireAnswer(
                questionId: selectedAnswer.question.id,
                answerValue: selectedAnswer.answer.value,
              ),
            )
            .toList(),
      ),
    );
  }
}

extension EntryX on Entry {
  Result toResult() {
    const questionnaire = Questionnaires.phq9;
    final result = questionnaire.results.firstWhere(
      (result) => result.cutpoint >= score,
    );

    return Result(
      questionnaire: type,
      score: score,
      selectedAnswers: this
          .questionnaire
          .answers
          .map(
            (answer) => SelectedAnswer(
              question: questionnaire.questions.firstWhere(
                (question) => question.id == answer.questionId,
              ),
              answer: questionnaire.questions
                  .firstWhere(
                    (question) => question.id == answer.questionId,
                  )
                  .answers
                  .firstWhere(
                    (questionAnswer) =>
                        questionAnswer.value == answer.answerValue,
                  ),
            ),
          )
          .toList(),
      result: result,
    );
  }
}

extension QuestionnaireStateX on QuestionnaireState {
  Question get currentQuestion => questionnaire.questions[currentIndex];

  int get totalQuestions => questionnaire.questions.length;
}

class QuestionnaireNotifier extends StateNotifier<QuestionnaireState> {
  QuestionnaireNotifier(
    super.state, {
    required this.database,
  });

  final Database database;

  void answer(Answer answer) {
    state = state.copyWith(
      currentIndex: math.min(state.currentIndex + 1, state.totalQuestions - 1),
      selectedAnswers: [
        ...state.selectedAnswers,
        SelectedAnswer(
          question: state.currentQuestion,
          answer: answer,
        ),
      ],
    );

    if (state.currentIndex == state.totalQuestions - 1) {
      finish();
    }
  }

  void finish() {
    final score = state.selectedAnswers
        .map((selectedAnswer) => selectedAnswer.answer.value)
        .reduce((prev, element) => prev + element);

    print('[QuestionnaireNotifier.finish] Score: $score');

    final result = state.questionnaire.results.firstWhere(
      (result) {
        print('[QuestionnaireNotifier.finish] ${result.cutpoint} > $score}');
        return result.cutpoint >= score;
      },
      orElse: () => state.questionnaire.results.last,
    );

    state = state.copyWith(
      isFinished: true,
      result: Result(
        questionnaire: state.questionnaire.name,
        score: score,
        selectedAnswers: state.selectedAnswers,
        result: result,
      ),
    );

    database.insertEntry(
      state.result!.toEntry(),
    );
  }
}
