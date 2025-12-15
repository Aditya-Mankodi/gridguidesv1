import 'package:flutter/material.dart';
import 'screens/welcome-screen.dart'; // adjust path if needed

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridGuides',
      home: WelcomeScreen(
        onLogin: () {
          // TODO: navigate to auth screen
        },
        onGuest: () {
          // TODO: navigate to dashboard
        },
      ),
    );
  }
}
