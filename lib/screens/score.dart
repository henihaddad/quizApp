import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/Title.dart';


class ScorePage extends StatelessWidget {
  //const ScorePage({Key? key}) : super(key: key);
  String url ;
int score;
  ScorePage(this.score);
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
       body: Padding(
          padding: const EdgeInsets.all(10),
         child: 
           Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              Center(
                child: Column( 
                    children:[
                      if (score >=50 )...[
                 Image.asset('assets/bravo_m.png')]
                 else ... [Image.asset('assets/gameover1.jpg')],
                  Text(
                    "Your Score is ",
                    style : TextStyle(
                      fontSize: 40.0,
                      color: Colors.purple.shade900 ,
                    ),),
                    CTitle(score.toString(),
                    30.0,
                  ),             
            TextButton(
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed('first');
                  },
                  child: Text("Replay" ,style : TextStyle(
                      fontSize: 40.0,)))
          ],
        ),
              ),
             ] ),
       ) )  );
  }
}