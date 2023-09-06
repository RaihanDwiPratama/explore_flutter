import 'package:flutter/material.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  final _inputNewPassword = TextEditingController();
  final _inputConfirmPassword = TextEditingController();
  bool isButtonEnabled = false;
  bool isPasswordObscured = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _inputNewPassword.dispose();
    _inputConfirmPassword.dispose();
    super.dispose();
  }

  // melakukan pengecekan apakah konfirmasi password sama dengan  password baru
  void updateButtonState() {
    final newPassword = _inputNewPassword.text;
    final confirmPassword = _inputConfirmPassword.text;

    setState(() {
      isButtonEnabled = newPassword.isNotEmpty &&
          confirmPassword.isNotEmpty &&
          newPassword == confirmPassword;
    });
  }

  void tooglePasswordVisibility() {
    setState(() {
      isPasswordObscured = !isPasswordObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.chevron_left,
            color: Color(0xff106FA4),
            size: 40,
          ),
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
            const Padding(
              padding: EdgeInsets.only(
                top: 32,
                bottom: 8,
              ),
              child: Text(
                'Kata Sandi',
                style: TextStyle(
                  fontSize: 14,
                  height: 20 / 14,
                  color: Color(0xff171717),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextField(
              controller: _inputNewPassword,
              obscureText: isPasswordObscured,
              onChanged: (value) {
                updateButtonState();
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
                hintText: 'Masukkan Kata Sandi',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  height: 20 / 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9AA4B2),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    tooglePasswordVisibility();
                  },
                  child: Icon(
                    isPasswordObscured
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: const Color(0xff9AA4B2),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 24,
                bottom: 8,
              ),
              child: Text(
                'Konfirmasi Kata Sandi',
                style: TextStyle(
                  fontSize: 14,
                  height: 20 / 14,
                  color: Color(0xff171717),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextField(
              controller: _inputConfirmPassword,
              obscureText: isPasswordObscured,
              onChanged: (value) {
                updateButtonState();
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
                hintText: 'Konfirmasi Kata Sandi',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  height: 20 / 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9AA4B2),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    tooglePasswordVisibility();
                  },
                  child: Icon(
                    isPasswordObscured
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: const Color(0xff9AA4B2),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isButtonEnabled
                    ? () {
                        if (_inputNewPassword.text ==
                            _inputConfirmPassword.text) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Password telah diperbarui'),
                            ),
                          );
                        }
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isButtonEnabled
                      ? const Color(0xff3CBC13)
                      : const Color(0xffCDD5DF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Atur ulang kata sandi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
