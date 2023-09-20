import 'package:flutter/material.dart';
//import 'package:flutter_launch/flutter_launch.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher_string.dart';

//import 'package:flutter_launch/flutter_launch.dart';

class MyDetails extends StatefulWidget {
  const MyDetails({super.key});

  @override
  State<MyDetails> createState() => _MyDetailsState();
}

class _MyDetailsState extends State<MyDetails> {
  @override
  whatsApp() {
    return launchUrl(
      Uri.parse(
        'whatsapp://send?phone=+2001149857043',//put your number here

      ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Details'),
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
              ElevatedButton(
                  onPressed: () {
                    //GoRouter.of(context).go('/whatsApp');
                    //launchUrlString('www.google.com');
                    //launchWhatsapp('01149857043', 'Hello');
                    whatsApp();
                  },
                  child: Text("WhatsApp")),
            ],
          ),
        ),
      ),
    );
  }
}
