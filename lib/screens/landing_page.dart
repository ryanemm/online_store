import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:online_store/constants.dart';
import 'package:online_store/screens/home_page.dart';
import 'package:online_store/screens/login_page.dart';

class LandingPage extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      //initialize FlutterFire
      future: _initialization,
      builder: (context, snapshot) {
        //check for errors
        if (snapshot.hasError) {
          return MaterialApp(
              home: Scaffold(
            body: Center(
              child: Text("Connection error"),
            ),
          ));
        }
        if (snapshot.connectionState == ConnectionState.done) {
          // StreamBuilder can check the login state live
          return StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, streamSnapshot) {
              if (snapshot.hasError) {
                return MaterialApp(
                    home: Scaffold(
                  body: Center(
                    child: Text("Connection error"),
                  ),
                ));
              }

              // Connection is active so do user login check in if statement
              if (streamSnapshot.connectionState == ConnectionState.active) {
                Object? _user = streamSnapshot.data;
                //if user is not logged in
                if (_user == null) {
                  return LoginPage();
                } else {
                  return HomePage();
                }
              }
              // Checking authentication state
              return MaterialApp(
                  home: Scaffold(
                body: Center(
                  child: Text("Checking authentication...",
                      style: Constants.headingStyle),
                ),
              ));
            },
          );
        }
        return MaterialApp(
            home: Scaffold(
          body: Center(
            child: Text("Loading", style: Constants.headingStyle),
          ),
        ));
      },
    );
  }
}
