import 'package:flutter/material.dart';
import 'src/ques_template.dart';
import 'src/quiz_page.dart';
import 'src/ques_brain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey.shade900,
            title: Text('RiddleMe This!'),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                ListTile(
                  tileColor: Colors.grey[900],
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Navigator',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    tileColor: Colors.grey[700],
                    title: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        'Question Page',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    tileColor: Colors.grey[700],
                    title: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        'New Questions',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
          ),
          backgroundColor: Colors.indigo,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: QuizPage(),
            ),
          ),
        ),
        routes: <String, WidgetBuilder>{
          '/ques_home': (BuildContext context) => QuizPage(),
          '/finish': (BuildContext context) => QuizPage(),
        });
  }
}
