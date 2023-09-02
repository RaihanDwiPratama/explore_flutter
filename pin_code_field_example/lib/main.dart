import 'package:flutter/material.dart';
import 'package:pin_code_field_example/presentation/screens/pin_code_verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PinCodeVerificationScreen(),
    );
  }
}
