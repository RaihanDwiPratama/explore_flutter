import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_lxp_apps/features/authentication/presentation/login/screen/login_screen.dart';
import 'package:onboarding_lxp_apps/features/authentication/presentation/onboarding/widget/view_widget.dart';
import 'package:onboarding_lxp_apps/features/authentication/presentation/register/screen/register_screen.dart';

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
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                image.length,
                (index) => Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: currentPage.round() == index
                        ? const Color(0xff106FA4)
                        : const Color(0xffE5E5E5),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                if (currentPage == image.length - 1) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const RegisterScreen()));
                } else {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
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
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontSize: 14,
                        height: 21 / 14,
                        color: Color(0xff697586),
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        const TextSpan(
                          text: 'Sudah Punya Akun?',
                        ),
                        TextSpan(
                          text: ' Masuk',
                          style: const TextStyle(color: Color(0xff106FA4)),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen())),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
