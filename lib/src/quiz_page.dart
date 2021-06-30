import 'package:flutter/material.dart';
import 'ques_brain.dart';
import 'ques_template.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

RiddleBrain riddleBrain = RiddleBrain();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  Widget correctAnswer() {
    return Icon(
      Icons.check,
      color: Colors.green,
    );
  }

  Widget wrongAnswer() {
    return Icon(
      Icons.close,
      color: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Card(
                shadowColor: Colors.orange,
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    (riddleBrain.qna[riddleBrain.questionNum - 1].question),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                setState(() {
                  if (riddleBrain.qna[riddleBrain.questionNum - 1].answer ==
                      false) {
                    scoreKeeper.add(wrongAnswer());
                    riddleBrain.wrong++;
                  } else {
                    scoreKeeper.add(correctAnswer());
                    riddleBrain.right++;
                  }
                  if (riddleBrain.questionNum == riddleBrain.qna.length) {
                    riddleBrain.printScore();
                    int r, w;
                    r = riddleBrain.right;
                    w = riddleBrain.wrong;
                    Alert(
                            context: context,
                            title: 'The End!',
                            desc: 'You\'ve reached the end of the quiz.',
                            content:
                                Text('\nYour Score:\nCorrect: $r \nWrong: $w'))
                        .show();
                    riddleBrain.reset();
                    scoreKeeper.clear();
                  } else {
                    riddleBrain.questionNum++;
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                setState(() {
                  if (riddleBrain.qna[riddleBrain.questionNum - 1].answer ==
                      true) {
                    scoreKeeper.add(wrongAnswer());
                    riddleBrain.wrong++;
                  } else {
                    scoreKeeper.add(correctAnswer());
                    riddleBrain.right++;
                  }
                  if (riddleBrain.questionNum == riddleBrain.qna.length) {
                    riddleBrain.printScore();
                    int r, w;
                    r = riddleBrain.right;
                    w = riddleBrain.wrong;
                    Alert(
                            context: context,
                            title: 'The End!',
                            desc: 'You\'ve reached the end of the quiz.',
                            content:
                                Text('\nYour Score:\nCorrect: $r \nWrong: $w'))
                        .show();
                    riddleBrain.reset();
                    scoreKeeper.clear();
                  } else {
                    riddleBrain.questionNum++;
                  }
                });
              },
            ),
          ),
        ),
        Container(
          color: Colors.grey.shade900,
          child: Row(
            children: scoreKeeper,
          ),
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
