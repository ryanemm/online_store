import "package:flutter/material.dart";
import "package:firebase_core/firebase_core.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:online_store/screens/landing_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: LandingPage(),
    );
  }
}
