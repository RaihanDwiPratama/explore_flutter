import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_field_example/presentation/screens/new_password.dart';
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

  bool _isButtonEnabled = false;

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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Color(0xff292D32),
            size: 30,
          ),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 30.0),
              const Text(
                'Masukkan Kode OTP',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff697586),
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          'Kode OTP sudah dikirim ke Email, Jika belum menerima OTP silahkan klik',
                    ),
                    TextSpan(
                        text: ' Kirim Ulang.',
                        style: const TextStyle(
                          color: Color(0xff00636C),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              PinCodeTextField(
                appContext: context,
                length: 6,
                keyboardType: TextInputType.number,
                controller: newTextEditingController,
                focusNode: focusNode,
                onCompleted: (value) {},
                onChanged: (value) {
                  setState(() {
                    _isButtonEnabled = value.length == 6;
                  });
                },
                pinTheme: PinTheme(inactiveColor: const Color(0xff697586)),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 48,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              _isButtonEnabled
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NewPassword(),
                      ),
                    )
                  : null;
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: _isButtonEnabled
                  ? const Color(0xff00636C)
                  : const Color(0xffCDD5DF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('Selanjutnya'),
          ),
        ),
      ),
    );
  }
}
