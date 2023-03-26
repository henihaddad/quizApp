import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/Title.dart';

class SecondPage extends StatelessWidget {
  //const SecondPage({Key? key}) : super(key: key);
  int score;
  SecondPage(this.score);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Question 2"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [CTitle('Quelle est la nationalité de Beethoven?',30),
              TextButton(
                onPressed: () {       Navigator.of(context).pushNamed('third',arguments:score);},
                child: CTitle(
                  "turque",20
                ),
              ),
              TextButton(
                onPressed: () {       Navigator.of(context).pushNamed('third',arguments:score);},
                child: CTitle(
                  "Américaine",20
                ),
              ),
              TextButton(
                onPressed: () {       Navigator.of(context).pushNamed('third',arguments:score+25);},
                child: CTitle(
                  "Allemande",20
                ),
              ),
              TextButton(
                onPressed: () {Navigator.of(context).pushNamed('third',arguments:score);},
                child: CTitle(
                  "Italienne",20
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}