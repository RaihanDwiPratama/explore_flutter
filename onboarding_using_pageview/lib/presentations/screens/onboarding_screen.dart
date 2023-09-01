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

  List<String> _image = [
    'assets/images/splash1.png',
    'assets/images/splash2.png',
    'assets/images/splash3.png',
  ];

  List<String> _title = [
    'Selamat Datang di Aplikasi Dcoll!',
    'Kenali Fitur Utama Aplikasi Kami',
    'Selamat Datang di Aplikasi Dcoll!',
  ];

  List<String> _subtitle = [
    'Pengalaman baru dalam mengatur kunjungan dan peminjaman dengan mudah dan efisien.',
    'Pengalaman baru dalam mengatur kunjungan dan peminjaman dengan mudah dan efisien.',
    'Pelajari bagaimana aplikasi kami membantu mengelola aktivitas kunjungan anda.',
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: _image.length,
      itemBuilder: (context, index) {
        return SplashWidget(
          image: _image[index],
          title: _title[index],
          subtitle: _subtitle[index],
        );
      },
    );
  }
}
