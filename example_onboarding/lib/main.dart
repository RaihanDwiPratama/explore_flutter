import 'package:example_onboarding/features/authentication/presentation/login/login_screen.dart';
import 'package:example_onboarding/features/authentication/presentation/onboard/onboard_screen.dart';
import 'package:example_onboarding/features/authentication/presentation/register/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Initial());
}

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Lato'),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardScreen(),
        'login': (context) => const LoginScreen(),
        'register': (context) => const RegisterScreen(),
      },
    );
  }
}
