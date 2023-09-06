import 'package:flutter/material.dart';
import 'package:forgot_password_lxp_apps/presentation/screen/confirm_password.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _controllerEmail = TextEditingController();

  bool _isButtonEnabled = false;

  bool isEmailValid(String email) {
    // Pola regex untuk alamat email yang valid
    final RegExp emailRegex =
        RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

    return emailRegex.hasMatch(email);
  }

  void checkInputField() {
    String email = _controllerEmail.text.trim();
    // mengecek inputan tidak boleh kosong dan email valid
    if (_controllerEmail.text.isNotEmpty && isEmailValid(email)) {
      setState(() {
        _isButtonEnabled = true;
      });
    } else {
      setState(() {
        _isButtonEnabled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.chevron_left,
          color: Color(0xff106FA4),
          size: 40,
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Lupa Kata Sandi',
                style: TextStyle(
                  color: Color(0xff202939),
                  fontSize: 20,
                  height: 30 / 20,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Ubah Kata Sandi Kamu',
                style: TextStyle(
                  color: Color(0xff697586),
                  fontSize: 16,
                  height: 24 / 16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'Email',
              style: TextStyle(
                fontSize: 14,
                height: 20 / 14,
                color: Color(0xff171717),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 44,
              child: TextField(
                controller: _controllerEmail,
                onChanged: (value) {
                  checkInputField();
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffCDD5DF),
                      strokeAlign: 1,
                    ),
                    gapPadding: 10,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.all(12.0),
                  hintText: 'Masukkan email',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    height: 20 / 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff9AA4B2),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isButtonEnabled
                    ? () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ConfirmPassword()));
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff3CBC13),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Kirim',
                  style: TextStyle(
                    fontSize: 16,
                    height: 24 / 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
