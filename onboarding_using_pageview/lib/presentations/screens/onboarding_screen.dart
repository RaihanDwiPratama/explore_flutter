import 'package:flutter/material.dart';
import 'package:onboarding_using_pageview/presentations/widgets/splash_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // setting controller
  final _controller = PageController(
    initialPage: 0,
  );

  final List<String> _image = [
    'assets/images/splash1.png',
    'assets/images/splash2.png',
    'assets/images/splash3.png',
  ];

  final List<String> _title = [
    'Selamat Datang di Aplikasi Dcoll!',
    'Kenali Fitur Utama Aplikasi Kami',
    'Selamat Datang di Aplikasi Dcoll!',
  ];

  final List<String> _subtitle = [
    'Pengalaman baru dalam mengatur kunjungan dan peminjaman dengan mudah dan efisien.',
    'Pengalaman baru dalam mengatur kunjungan dan peminjaman dengan mudah dan efisien.',
    'Pelajari bagaimana aplikasi kami membantu mengelola aktivitas kunjungan anda.',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: _image.length,
        itemBuilder: (context, index) {
          return SplashWidget(
            image: _image[index],
            title: _title[index],
            subtitle: _subtitle[index],
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(45.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xff00636C),
                    ),
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xffD9E8E9),
                    ),
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xffD9E8E9),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  strokeAlign: 1,
                  color: const Color(0xff00636C),
                ),
              ),
              child: const Icon(
                Icons.chevron_right,
                color: Color(0xff00636C),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
