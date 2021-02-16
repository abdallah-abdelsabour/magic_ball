import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue.shade700,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(child: Text('magic ball')),
          ),
          body:MagicBallPage() ,
        ),
      ),
    );
  }
}


class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {

   int  ballNumber =1;

   void flipBall(){

  
     ballNumber=Random().nextInt(5)+1;
   }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
       // color: Colors.black,
        child: FlatButton(onPressed: () { 

         setState(() {
          flipBall();
           
         });
         },
        child: Image(image: AssetImage('images/ball$ballNumber.png'),
        )
        )
        
      ),
    );
  }
}