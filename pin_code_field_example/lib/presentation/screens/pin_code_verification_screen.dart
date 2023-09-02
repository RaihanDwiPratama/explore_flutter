import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeVerificationScreen extends StatefulWidget {
  const PinCodeVerificationScreen({super.key});

  @override
  State<PinCodeVerificationScreen> createState() =>
      _PinCodeVerificationScreenState();
}

class _PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
  TextEditingController newTextEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    newTextEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pin Code Fields Demo'),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 30.0),
              const Text(
                'Default Pincode Fields',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              PinCodeTextField(
                appContext: context,
                length: 4,
                controller: newTextEditingController,
                focusNode: focusNode,
                onCompleted: (value) {},
              ),
              const SizedBox(height: 80.0),
              const Text(
                'Obscure Pincode Fields',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: true,
                // obscureCharacter: '❌',
                onCompleted: (text) {
                  // Your logic with pin code
                  Text(text);
                },
              ),
              const SizedBox(height: 80.0),
              const Text(
                'Custom Pincode Fields',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              PinCodeTextField(
                appContext: context,
                length: 4,
                keyboardType: TextInputType.number,
                textStyle: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
                onCompleted: (value) {},
              ),
              const SizedBox(
                height: 80.0,
              ),
              const Text(
                'Animated Pincode Fields',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              PinCodeTextField(
                appContext: context,
                length: 4,
                animationDuration: const Duration(milliseconds: 200),
                animationCurve: Curves.easeInOut,
                onCompleted: (value) {
                  Text(value);
                },
              ),
              const SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
