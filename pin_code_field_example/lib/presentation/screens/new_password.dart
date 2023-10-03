import 'package:flutter/material.dart';
import 'package:pin_code_field_example/presentation/utils/color.dart';
import 'package:pin_code_field_example/presentation/utils/style.dart';

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
          icon: Icon(
            Icons.chevron_left,
            color: ColorDcoll.grey,
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
              Text(
                'Password Baru',
                style: StyleDcoll.title,
              ),
              const SizedBox(height: 20),
              Text(
                'Password baru anda harus berbeda dari password sebelumnya.',
                style: StyleDcoll.description,
              ),
              const SizedBox(height: 40.0),
              Text(
                'Password Baru',
                style: StyleDcoll.newPassword,
              ),
              const SizedBox(height: 10),
              buildTextField('Masukkan password'),
              const SizedBox(height: 20),
              const Text(
                'Konfirmasi Password',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              buildTextField('Masukkan password'),
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

  Widget buildTextField(String hintText) {
    return TextField(
      obscureText: isPasswordObscured,
      onChanged: (value) {
        updateButtonState();
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorDcoll.greyModern,
          ),
        ),
        prefixIcon: Icon(
          Icons.lock,
          color: ColorDcoll.grayModern,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: ColorDcoll.grayModern,
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              isPasswordObscured = !isPasswordObscured;
            });
          },
          child: Icon(
            isPasswordObscured ? Icons.visibility : Icons.visibility_off,
            color: ColorDcoll.grayModern,
          ),
        ),
      ),
    );
  }
}
