import 'package:flutter/material.dart';
import 'package:onboarding/authentication/presentation/onboarding/onboarding_screen.dart';

void main() {
  runApp(const Initial());
}

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen(),
      },
    );
  }
}
