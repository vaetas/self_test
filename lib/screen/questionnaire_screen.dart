import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pressable/pressable.dart';

import '/db/questionnaire.dart';
import '/provider/questionnaire/questionnaire_provider.dart';
import '/widget/back_button.dart';

class QuestionnaireScreen extends HookConsumerWidget {
  const QuestionnaireScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(questionnaireProvider.notifier);
    final state = ref.watch(questionnaireProvider);

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: const CustomBackButton(),
      ),
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
          return SharedAxisTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            transitionType: SharedAxisTransitionType.horizontal,
            child: child,
          );
        },
        child: state.isFinished
            ? _ResultView(result: state.result!)
            : _ContentView(state: state, notifier: notifier),
      ),
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({
    Key? key,
    required this.state,
    required this.notifier,
  }) : super(key: key);

  final QuestionnaireState state;
  final QuestionnaireNotifier notifier;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            flex: 4,
            child: _QuestionsView(
              question: state.currentQuestion,
              currentIndex: state.currentIndex,
              totalQuestions: state.totalQuestions,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.only(bottom: 32),
              child: _AnswersView(
                question: state.currentQuestion,
                onAnswer: notifier.answer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _QuestionsView extends StatelessWidget {
  const _QuestionsView({
    Key? key,
    required this.question,
    required this.currentIndex,
    required this.totalQuestions,
  }) : super(key: key);

  final Question question;
  final int currentIndex;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              '${currentIndex + 1} / $totalQuestions',
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: PageTransitionSwitcher(
              transitionBuilder: (
                child,
                primaryAnimation,
                secondaryAnimation,
              ) {
                return SharedAxisTransition(
                  animation: primaryAnimation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.horizontal,
                  child: child,
                );
              },
              child: Container(
                key: ValueKey(question.id),
                child: Center(
                  child: SingleChildScrollView(
                    child: Text(
                      question.text,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        height: 1.6,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AnswersView extends HookConsumerWidget {
  const _AnswersView({
    Key? key,
    required this.question,
    required this.onAnswer,
  }) : super(key: key);

  final Question question;
  final ValueChanged<Answer> onAnswer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = useMemoized(
      () {
        return question.answers.map(
          (answer) {
            return Expanded(
              child: _Answer(
                onPressed: () => onAnswer(answer),
                answer: answer,
              ),
            );
          },
        ).toList();
      },
      [question.answers],
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: items,
    );
  }
}

class _Answer extends StatelessWidget {
  const _Answer({
    Key? key,
    required this.answer,
    required this.onPressed,
  }) : super(key: key);

  final Answer answer;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Pressable.scale(
      onPressed: onPressed,
      theme: const PressableScaleTheme(
        scaleFactor: 0.85,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Center(
          child: Text(
            answer.text,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

class _ResultView extends StatelessWidget {
  const _ResultView({
    Key? key,
    required this.result,
  }) : super(key: key);

  final Result result;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const Text(
              'Your score is',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),
            RichText(
              text: TextSpan(
                text: '${result.score}',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
                children: const [
                  TextSpan(
                    text: ' / 27',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 64),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Text(
                result.result.text,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const Spacer(),
            TextButton.icon(
              onPressed: () {
                context.go('/history');
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              icon: const HeroIcon(HeroIcons.calendar),
              label: const Text('View history'),
            ),
          ],
        ),
      ),
    );
  }
}
