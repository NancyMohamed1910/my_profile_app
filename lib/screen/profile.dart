import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';


class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Prrofile"),
        centerTitle: true,
        toolbarHeight: 40,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage('images/cat.png')),
              Title(
                color: Colors.indigo,
                child: Text(
                  "Name : Coco cat",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              // Title(color: Colors.indigo, child: Text("phone:01145678921")),
              ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go('/profile/details');
                  },
                  child: Text("Call me")),
            ],
          ),
        ),
      ),
    );
  }
}
