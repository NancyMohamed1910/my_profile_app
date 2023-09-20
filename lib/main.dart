import 'package:flutter/material.dart';
import 'package:my_profile_app/screen/login.dart';
import 'package:my_profile_app/screen/profile.dart';
import 'package:my_profile_app/screen/details.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

//---------
final GoRouter router = GoRouter(initialLocation: '/', routes: [
  GoRoute(path: '/', builder: (context, state) => const MyLogin(), routes: [
    GoRoute(
        path: 'profile',
        builder: (context, state) => const MyProfile(),
        routes: [
          GoRoute(
            path: 'details',
            builder: (context, state) => const MyDetails(),
          )
        ])
  ]),
]);
//---------

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      //home: MyLogin(),
      routerConfig: router,
    );
  }
}
