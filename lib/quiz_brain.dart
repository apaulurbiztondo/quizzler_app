import 'package:flutter/material.dart';
import 'package:quizzler_app/question.dart';

class QuizBrain {
  final List<Question> _questions = [
    Question(
        question: 'You can lead a cow down stairs but not up stairs.',
        answer: false),
    Question(
        question: 'Approximately one quarter of human bones are in the feet.',
        answer: true),
    Question(
        question: 'You can lead a cow down stairs but not up stairs.',
        answer: true)
  ];

  List<Question> get questions => _questions;

  bool isCorrectAnswer(int questionNumber) {
    return _questions[questionNumber].answer;
  }

  bool isNextQuestionAvailable(int questionNumber) {
    return questionNumber < _questions.length;
  }

  String displayQuestion(int questionNumber) {
    return questionNumber == _questions.length
        ? 'Finished'
        : _questions[questionNumber].question;
  }
}
