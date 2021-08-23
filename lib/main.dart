import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    Scaffold(
        body: Container(
      child: Center(child: Text("Hello World!")),
    ));
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // if Snapshot has error
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text("Error: ${snapshot.error}"),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          Scaffold(
              body: Container(
            child: Center(child: Text("Firebase App Initialized")),
          ));
        }

        return Scaffold(
          body: Center(
            child: Text("Initializing App"),
          ),
        );
      },
    );
  }
}
