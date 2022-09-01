class AnswerModel {
  String answer0 = "";
  String answer1 = "";
  String answer2 = "";
  String answer3 = "";
  String answer4 = "";
  String answer5 = "";
  String answer6 = "";
  String answer7 = "";
  String answer8 = "";
  String answer9 = "";
  String answer10 = "";
  String answer11 = "";

  setAnswer(int index, String answer) {
    switch (index) {
      case 0:
        answer0 = answer;
        break;
      case 1:
        answer1 = answer;
        break;
      case 2:
        answer2 = answer;
        break;
      case 3:
        answer3 = answer;
        break;
      case 4:
        answer4 = answer;
        break;
      case 5:
        answer5 = answer;
        break;
      case 6:
        answer6 = answer;
        break;
      case 7:
        answer7 = answer;
        break;
      case 8:
        answer8 = answer;
        break;
      case 9:
        answer9 = answer;
        break;
      case 10:
        answer10 = answer;
        break;
      case 11:
        answer11 = answer;
        break;
    }
  }

  @override
  String toString() {
    return 'AnswerModel{answer0: $answer0, answer1: $answer1, '
        'answer2: $answer2, answer3: $answer3, answer4: $answer4, '
        'answer5: $answer5, answer6: $answer6, answer7: $answer7, '
        'answer8: $answer8, answer9: $answer9, answer10: $answer10, '
        'answer11: $answer11}';
  }
}
