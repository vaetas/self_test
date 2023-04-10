import '/db/questionnaire.dart';

const _answers = [
  Answer(value: 0, text: 'Not at all'),
  Answer(value: 1, text: 'Several days'),
  Answer(value: 2, text: 'More than half the days'),
  Answer(value: 3, text: 'Nearly every day'),
];

class Questionnaires {
  const Questionnaires._();

  static const phq9 = Questionnaire(
    name: 'PHQ-9',
    text:
        'Over the last 2 weeks, how often have you been bothered by any of the following problems?',
    questions: [
      Question(
        id: 1,
        text: 'Little interest or pleasure in doing things?',
        answers: _answers,
      ),
      Question(
        id: 2,
        text: 'Feeling down, depressed, or hopeless?',
        answers: _answers,
      ),
      Question(
        id: 3,
        text: 'Trouble falling or staying asleep, or sleeping too much?',
        answers: _answers,
      ),
      Question(
        id: 4,
        text: 'Feeling tired or having little energy?',
        answers: _answers,
      ),
      Question(
        id: 5,
        text: 'Poor appetite or overeating?',
        answers: _answers,
      ),
      Question(
        id: 6,
        text:
            'Feeling bad about yourself - or that you are a failure or have let yourself or your family down?',
        answers: _answers,
      ),
      Question(
        id: 7,
        text:
            'Trouble concentrating on things, such as reading the newspaper or watching television?',
        answers: _answers,
      ),
      Question(
        id: 8,
        text:
            'Moving or speaking so slowly that other people could have noticed? Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual?',
        answers: _answers,
      ),
      Question(
        id: 9,
        text:
            'Thoughts that you would be better off dead or of hurting yourself in some way',
        answers: _answers,
      ),
      Question(
        id: 10,
        text:
            'If you checked off any problems, how difficult have these problems made it for you to do your work, take care of things at home, or get along with other people?',
        answers: [
          Answer(value: 0, text: 'Not at all'),
          Answer(value: 0, text: 'Several days'),
          Answer(value: 0, text: 'More than half the days'),
          Answer(value: 0, text: 'Nearly every day'),
        ],
      ),
    ],
    results: [
      QuestionnaireResult(
        cutpoint: 0,
        text: 'No depression',
      ),
      QuestionnaireResult(
        cutpoint: 5,
        text: 'Mild depression',
      ),
      QuestionnaireResult(
        cutpoint: 10,
        text: 'Moderate depression',
      ),
      QuestionnaireResult(
        cutpoint: 15,
        text: 'Moderately severe depression',
      ),
      QuestionnaireResult(
        cutpoint: 20,
        text: 'Severe depression',
      ),
    ],
  );
}
