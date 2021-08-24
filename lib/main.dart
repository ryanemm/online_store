import "package:flutter/material.dart";
import "package:firebase_core/firebase_core.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      //initialize FlutterFire
      future: _initialization,
      builder: (context, snapshot) {
        //check for errors
        if (snapshot.hasError) {
          return  MaterialApp ( home:  
          	Scaffold(
            body: Center(
              child: Text("Connection error"),
            ),
          ));
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp ( home:
          Scaffold(
            body: Center(
              child: Text("Firebase initialized"),
            ),
          ));
        }
        return MaterialApp ( home:
        Scaffold(
          body: Center(
            child: Text("Loading"),
          ),
        ));
      },
    );
  }
}
