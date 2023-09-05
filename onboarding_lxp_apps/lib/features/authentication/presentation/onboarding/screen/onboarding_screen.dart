import 'package:flutter/material.dart';
import 'package:onboarding_lxp_apps/features/authentication/presentation/login/screen/login_screen.dart';
import 'package:onboarding_lxp_apps/features/authentication/presentation/onboarding/widget/view_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController pageController;
  double currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> image = [
      'assets/images/onboard1.svg',
      'assets/images/onboard2.svg',
    ];

    final List<String> title = [
      'Kesempatan Yang Sama',
      'Kesempatan Yang Sama',
    ];

    final List<String> description = [
      'Semua punya kesempatan yang sama untuk kuliah bersama Kampus Gratis!',
      'Semua punya kesempatan yang sama untuk kuliah bersama Kampus Gratis!',
    ];

    final onboardingWidget = List.generate(image.length, (index) {
      return ViewWidget(
        image: image[index],
        title: title[index],
        description: description[index],
      );
    });

    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: image.length,
        itemBuilder: (context, index) {
          return onboardingWidget[index];
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(45.0),
        child: GestureDetector(
          onTap: () {
            if (currentPage == image.length - 1) {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            } else {
              pageController.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
              );
            }
          },
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff3CBC13),
            ),
            child: const Center(
                child: Text(
              'Buat Akun',
              style: TextStyle(
                fontFamily: 'Poppins-Medium',
                fontSize: 16,
                color: Colors.white,
                height: 24 / 16,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
