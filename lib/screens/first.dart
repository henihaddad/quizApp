import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/Title.dart';

class FirstPage extends StatelessWidget {
  int score=0;

  //const FirstPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Question 1"),
          centerTitle: true,
        ),
          body:Padding(padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CTitle('Quel est le 4ième art?',30),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('second',arguments: score+25);
                },
                child: CTitle(
                  "La Musique",20
                ),
              ),
              TextButton(
                
                onPressed: () { Navigator.of(context).pushNamed('second',arguments:score);
                },
                child: CTitle(
                  "La littérature et la poésie",
                      20),
                ),
              TextButton(
                onPressed: () { Navigator.of(context).pushNamed('second',arguments:score);},
                child: CTitle(
                  "Le théatre",
              20),
                ),
              TextButton(
                onPressed: () { Navigator.of(context).pushNamed('second',arguments:score);},
                child: CTitle(
                  "La peinture et le dessin",
                      20),
                ),
            ],
          ),
        ),
      ),
    );
  }
}