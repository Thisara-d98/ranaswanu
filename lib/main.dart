import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar:AppBar(
          title:const Text(
            'Ran aswanu',
          ),
        ),
        body:Column(
         children:[
           Expanded(child: LoginWelcome()),
           Expanded(child:  MyloginPage()),

         ],

        ),

      ),
    );
  }
}


