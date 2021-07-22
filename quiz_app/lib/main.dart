import 'package:flutter/material.dart';

import './questions.dart';
import './options.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int score = 0;

  Map answerkey = {
    "The Great Wall of China is longer than the distance between London and Beijing":
        "True",
    "There are 219 episodes of Friend": "False",
    "'A' is the most common letter used in the English language": "False",
    "A lion's roar can be heard up to eight kilometres away": "True",
    "In Harry Potter, Draco Malfoy has no siblings": "False",
    "Louis Walsh is older than Simon Cowell": "True",
    "Monaco is the smallest country in the world": "False",
    "'What Do You Mean' was Justin Bieber's first UK number one single": "True",
    "The river Seine in Paris is longer than the river Thames in London":
        "True",
    "A cara cara navel is a type of orange": "True",
  };

  List questions = [
    "The Great Wall of China is longer than the distance between London and Beijing",
    "There are 219 episodes of Friend",
    "'A' is the most common letter used in the English language",
    "A lion's roar can be heard up to eight kilometres away",
    "In Harry Potter, Draco Malfoy has no siblings",
    "Louis Walsh is older than Simon Cowell",
    "Monaco is the smallest country in the world",
    "'What Do You Mean' was Justin Bieber's first UK number one single",
    "The river Seine in Paris is longer than the river Thames in London",
    "A cara cara navel is a type of orange"
  ];

  void answerquestions(String Text) {
    if (Text == answerkey[questions[questionIndex]]) score = score + 1;

    setState(() {
      if (questionIndex == 9) {
        questionIndex = 0;
        score = 0;
      } else
        questionIndex = questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Quiz"),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Question(questions[questionIndex]),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Option("True", answerquestions),
                  Option("False", answerquestions),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Text(
          "Score : $score" + "/10",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
