import 'package:flutter/material.dart';
import 'package:onboarding_using_pageview/presentations/screens/login_screen.dart';
import 'package:onboarding_using_pageview/presentations/widgets/splash_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController controller;
  double currentPage = 0;

  @override
  void initState() {
    controller = PageController();
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> image = [
      'assets/images/splash1.png',
      'assets/images/splash2.png',
      'assets/images/splash3.png',
    ];

    final List<String> title = [
      'Selamat Datang di Aplikasi Dcoll!',
      'Kenali Fitur Utama Aplikasi Kami',
      'Selamat Datang di Aplikasi Dcoll!',
    ];

    final List<String> subtitle = [
      'Pengalaman baru dalam mengatur kunjungan dan peminjaman dengan mudah dan efisien.',
      'Pengalaman baru dalam mengatur kunjungan dan peminjaman dengan mudah dan efisien.',
      'Pelajari bagaimana aplikasi kami membantu mengelola aktivitas kunjungan anda.',
    ];

    final onboardWidget = List.generate(image.length, (index) {
      return SplashWidget(
        image: image[index],
        title: title[index],
        subtitle: subtitle[index],
      );
    });

    return Scaffold(
      body: PageView.builder(
        controller: controller,
        itemCount: image.length,
        itemBuilder: (context, index) {
          return onboardWidget[index];
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(45.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: List.generate(
                image.length,
                (index) => Container(
                  margin: const EdgeInsets.only(right: 6),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: currentPage.round() == index
                        ? const Color(0xff00636C)
                        : const Color(0xffD9E8E9),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (currentPage == image.length - 1) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                } else {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
