
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class HomePage extends StatelessWidget {
  //HomePage({Key? key}) : super(key: key);
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz APP"),
        centerTitle: true),

        body: Padding(
          padding: const EdgeInsets.all(10),
         child: 
           Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              Column( 
                  children:[
               Image.asset('assets/quiz.jpg'),
                Text(
                  "Hey this is your quiz",
                  style : TextStyle(
                    fontSize: 40.0,
                    color: Colors.purple.shade900 ,
                  )),
                   TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('first');
                  },
                  child: Text('Start', style : TextStyle(
                    fontSize: 40.0,),
                ))
                  ]
              ),

              ]
              )
              ));}     
   }