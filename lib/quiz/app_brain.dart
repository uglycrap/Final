import 'package:application/quiz/question.dart';

class AppBrain {
  int _questionNumber = 0;

  // ignore: prefer_final_fields
  List<Question> _questionGroup = [
    Question(
        q: 'Do you currently live with a family member who has depression?',
        a: false),
    Question(
        q: 'Have parents, other relatives, or maybe even friends accused you of being “irritated,” “nasty,” or “always in a bad mood?”',
        a: false),
    Question(q: 'Does life seem pointless?', a: false),
    Question(q: 'Does it seem like it is impossible to concentrate?', a: false),
    Question(q: 'Have you withdrawn from your friends and family?', a: false),
    Question(q: 'Have you noticed a sudden change in your weight?', a: false),
    Question(
        q: 'Do you often oversleep? Do you think you get too little sleep (and may have insomnia)?',
        a: false),
    Question(q: 'Do you have aches and pains?', a: false),
    Question(
        q: 'Have your grades dropped? If you are involved in extracurricular activities, have you stopped participating or has your performance declined?',
        a: false),
    Question(q: 'Have you thought of suicide?', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionGroup.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionGroup[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionGroup[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionGroup.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
