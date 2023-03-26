import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/Title.dart';
import 'package:flutter_application_1/screens/second.dart';
class ThirdPage extends StatelessWidget {
  //const ThirdPage({Key? key}) : super(key: key);
  int score;
  ThirdPage(this.score);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Question 3"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [CTitle('*Fur Elise* est composée par ?',30),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('score',arguments: score);
                },
                child: CTitle(
                  "Mozart",20
                ),
              ),
              TextButton(
                onPressed: () {Navigator.of(context).pushNamed('score',arguments: score+25);},
                child: CTitle(
                  "Beethoven",20
                ),
              ),
              TextButton(
                onPressed: () {Navigator.of(context).pushNamed('score',arguments: score);},
                child: CTitle(
                  "Antonio ",20
                ),
              ),
              TextButton(
                onPressed: () {Navigator.of(context).pushNamed('score',arguments:score);},
                child: CTitle(
                  "Georg Friedrich",20
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}