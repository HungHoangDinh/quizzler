import 'question.dart';
class QuizBrain{

  int questionNumber=0;
  List<Question> questionBank=[
    Question('Võ Minh Phương có yêu HDH không?', true),
    Question('Võ Minh Phương là con sư tử phải không', false),
    Question('Võ Minh Phương sẽ cho HDH hun má?', true),
    Question('Em là đồ hay dỗi?', true),
    Question('Võ Minh Phương là công chúa cuả HDH phải không?', true),
    Question('VMP là con khủng long phải không?', true),
    Question(
        'Em có dỗi HDH nữa không?',
        false),
    Question(
        'Em sẽ iu HDH nhé',
        true),
    Question(
        'Em mà dỗi là do HDH sai phải không?',
        false),
    Question(
        'HDH ôm em nhé?',
        true),
    Question('Sau này HDH cưới em nhé', true),
    Question(
        'Sau này em không dỗi HDH nữa nhé',
        false),
    Question(
        'Mỗi đêm em phải nói em iu hdh nhé',true)

  ];
  void nextQuestion() {
    if (questionNumber < questionBank.length - 1) {
      questionNumber++;
    }
  }
  String getQuestionText(){
      return questionBank[questionNumber].questionText;
  }
  bool getQuestionAnswer(){
    return questionBank[questionNumber].questionAnswer;

  }
  bool isFinished() {
    if (questionNumber >= questionBank.length - 1) {

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    questionNumber = 0;
  }

}