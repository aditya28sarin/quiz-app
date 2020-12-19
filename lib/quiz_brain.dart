import 'question.dart';

class QuizBrain {
  var _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Pele is the youngest winner of the World Cup', true),
    Question(
        'Pedro Rodriguez scored in 6 different competitions in 2009/10, the most anyone scored in one season',
        false),
    Question('Mario Balotelli has been booked more times than he has scored.',
        false),
    Question('The Copa America is older than the World Cup', true),
    Question(
        'Alan Shearer was the first Golden boot winner in the Premier League.',
        false),
    Question('Arsenal have always been based in North London', false),
    Question('Ferenc Puskas played international football for Spain.', true),
    Question(
        'Alan Shearer is the all time Premier League Leading Scorer.', true),
    Question('David Beckham scored the longest distance Premier League goal.',
        false),
    Question(
        'Steven Gerrard has made more Premier League appearances than Frank Lampard.',
        false),
    Question(
        'Teddy Sheringham is the only outfield player to play a Premier League match in his forties.',
        false),
    Question(
        'Jermain Defoe once scored 5 goals in a single Premier League half.',
        true),
    Question('Pavel Nedved has won the Champions League.', false),
    Question(
        'Ryan Giggs played in the opening weekend of Premier League fixtures.',
        true),
    // Question(
    //     'The record for fewest points won in a Premier League season is held by Sunderland.',
    //     false),
    // Question(
    //     'Eric Cantona scored the first ever Premier League hat trick.', true),
    // Question('Ronaldo Lima has won the Champions League.', false),
    // Question(
    //     'Kevin Phillips was the first Premier League player to win the European Golden Shoe award.',
    //     true),
    // Question(
    //     'The record for most points scored in a Premier League season is held by Manchester United.',
    //     false),
    // Question(
    //     'Thierry Henry won more Premier League Golden Boots than Alan Shearer.',
    //     true),
    // Question('Michael Ballack has won the Champions League.', false),
  ];

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionNumber() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswerNumber() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
