import 'package:flutter/material.dart';

class SplashWidget extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;

  const SplashWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(45.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.image,
              width: 263,
            ),
            const SizedBox(height: 40),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Poppins-Medium',
                fontSize: 20,
                color: Color(0xff1F2A37),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: 17,
                color: Color(0xff697586),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
