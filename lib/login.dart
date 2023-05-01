import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LoginWelcome extends StatelessWidget {
  const LoginWelcome({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
        body:Center(
          child:Text(
            'Welcome We miss you!',
            style: TextStyle(
              fontSize: 32,
              color:Colors.green,
            ),
          ) ,
        ),
      )

    );
  }
}


class MyloginPage extends StatefulWidget {
  const MyloginPage({super.key});

  @override
  State<MyloginPage> createState() => _MyloginpageState();
}

class _MyloginpageState extends State<MyloginPage> {
  final _UsernameController= TextEditingController();
  final _PasswordController=TextEditingController();

  Future Signin() async{

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:Scaffold(
          body:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: _UsernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter username',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: _PasswordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter password',
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal:48,vertical: 16 ),
                  child:GestureDetector(
                    onTap:Signin,
                    child: Container(
                        width:300 ,
                        height: 60,
                        decoration:BoxDecoration(
                          color: Colors.green[300],
                          border:Border.all(),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(28),
                          ),
                        ),

                        child:Center(
                          child:const Text(
                            'Login',
                            style:const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                        )
                    ),
                  )

              ),
            ],
          ),
        ),
    );
  }
}