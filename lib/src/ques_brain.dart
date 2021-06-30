import 'ques_template.dart';

class RiddleBrain {
  List<question_bank> qna = [
    question_bank('Earth is round', true),
    question_bank('Moon is flat', false),
    question_bank('Water is blue', true),
    question_bank('New York is in United Kingdom', false),
    question_bank('India is the largest country in the world', false),
    question_bank('Some cats are actually allergic to humans', true),
    question_bank('You can lead a cow down stairs but not up stairs.', false),
    question_bank(
        'Approximately one quarter of human bones are in the feet.', true),
    question_bank('A slug\'s blood is green.', true),
    question_bank('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    question_bank('It is illegal to pee in the Ocean in Portugal.', true),
    question_bank(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    question_bank(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    question_bank(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    question_bank(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    question_bank('Google was originally called \"Backrub\".', true),
    question_bank(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    question_bank(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  int questionNum = 1, right = 0, wrong = 0;

  void printScore() {
    print('Right= $right \n Wrong= $wrong');
  }

  void reset() {
    questionNum = 1;
    right = 0;
    wrong = 0;
  }
}
