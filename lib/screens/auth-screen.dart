import 'package:flutter/material.dart';

/// Authentication screen with background image, main icon area,
/// and a login/signup form.
/// Usage:
/// - Ensure you have an image at `assets/background.jpg` and
///  list it in `pubspec.yaml` under `assets:`.
/// - Provide `child` widget for the login/signup form.
/// - Optionally provide `mainIcon` widget for the icon area.

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login / Signup')),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text('Auth Page'),
        ),
      ),
    );
  }
}
