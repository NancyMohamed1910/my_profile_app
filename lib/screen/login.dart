import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen',textAlign: TextAlign.center, ),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.brown,
      ),
      body:Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.greenAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration:InputDecoration(
                      labelText: 'Enter user name:'
                  ) ,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  obscuringCharacter: '*',
                  obscureText:true,
                  decoration:InputDecoration(
                      fillColor:Colors.white,
                      labelText: 'Enter password:'
                  ) ,
                ),
              ),
              ElevatedButton(onPressed: () {
                GoRouter.of(context).go('/profile');
              }, child: Text("Login")),
            ],
          ),
        ),
      ) ,

    );
  }
}
