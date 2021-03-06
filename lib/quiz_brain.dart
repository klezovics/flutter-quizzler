import 'package:quizzler/question.dart';

class QuizBrain {
  var _questionNumber = 0;
  var _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: true),
  ];

  void nextQuestion() {
    _questionNumber++;
  }

  void reset() {
    _questionNumber = 0;
  }

  bool isFinished() {
    return _questionNumber > _questionBank.length - 1;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
