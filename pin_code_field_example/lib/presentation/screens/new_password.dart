import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final _inputNewPassword = TextEditingController();
  final _inputConfirmPassword = TextEditingController();
  bool isButtonEnabled = false;
  bool isPasswordObscured = true;
  // ignore: unused_field
  String _errorText = '';

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
                'Password Baru',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Password baru anda harus berbeda dari password sebelumnya.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff697586),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 40.0),
              const SizedBox(
                height: 30,
                child: Text(
                  'Password Baru',
                  style: TextStyle(
                    fontSize: 14,
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
                  border: InputBorder.none,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffEEF2F6),
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xff9AA4B2),
                  ),
                  hintText: 'Masukkan password',
                  hintStyle: const TextStyle(
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
              const SizedBox(height: 20),
              const SizedBox(
                height: 30,
                child: Text(
                  'Konfirmasi Password',
                  style: TextStyle(
                    fontSize: 14,
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
                  border: InputBorder.none,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffEEF2F6),
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xff9AA4B2),
                  ),
                  hintText: 'Masukkan password',
                  hintStyle: const TextStyle(
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
            onPressed: isButtonEnabled
                ? () {
                    if (_inputNewPassword.text == _inputConfirmPassword.text) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewPassword(),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Password telah diperbarui'),
                        ),
                      );
                    } else {
                      setState(() {
                        _errorText = 'Password tidak cocok.';
                      });
                    }
                  }
                : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: isButtonEnabled
                  ? const Color(0xff00636C)
                  : const Color(0xffCDD5DF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Selanjutnya',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
