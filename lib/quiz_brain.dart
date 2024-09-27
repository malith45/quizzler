import 'package:flutter/material.dart';

import 'questions.dart';

class QuizBrain {
  int _qNum = 0;

  final List<Questions> _questionList = [
    Questions(
        questionText: 'Some cats are actually allergic to humans',
        answer: true),
    Questions(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        answer: false),
    Questions(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        answer: true),
    Questions(questionText: 'A slug\'s blood is green.', answer: true),
    Questions(
        questionText: 'Buzz Aldrin\'s mother\'s maiden name was"Moon".',
        answer: true),
    Questions(
        questionText: 'It is illegal to pee in the Ocean in Portugal.',
        answer: true),
    Questions(
        questionText:
            'No piece of square dry paper can be folded in half more than 7 times.',
        answer: false),
    Questions(
        questionText:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        answer: true),
    Questions(
        questionText:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        answer: false),
    Questions(
        questionText:
            'The total surface area of two human lungs is approximately 70 square metres.',
        answer: true),
    Questions(
        questionText: 'Google was originally called "Backrub".', answer: true),
    Questions(
        questionText:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        answer: true),
    Questions(
        questionText:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        answer: true),
  ];

  String getQuestionText() {
    return _questionList[_qNum].questionText;
  }

  bool getAnswer() {
    return _questionList[_qNum].answer;
  }

  void nextQuestion() {
    if (_qNum < _questionList.length - 1) {
      _qNum++;
    } else {}
  }

  bool isFinished() {
    if (_qNum >= _questionList.length - 1) {
      debugPrint('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _qNum = 0;
  }
}
