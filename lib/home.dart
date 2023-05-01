import 'package:flutter/material.dart';

class homePage extends StatelessWidget{
  const homePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text('Home page'),
        ),
        body:Container(
          height:300,
          width:400,
          decoration:BoxDecoration(
            color:Colors.orange,
          ) ,
          child:Center(
            child:Text(
              'Homepage',
              style:TextStyle(
                fontSize:18,
                color:Colors.black,
              )
            )
          )
        ),
      ),
    );
  }
}