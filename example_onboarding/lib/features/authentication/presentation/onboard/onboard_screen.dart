import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int index = 1;
  final onboardingPagesList = [
    PageModel(
      widget: SingleChildScrollView(
        controller: ScrollController(),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                child: Image.asset('assets/images/hd-1.png'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Text(
                  'Selamat Datang di Aplikasi Dcoll!',
                  style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: 20,
                    color: Color(0xff1F2A37),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 10.0,
                ),
                child: Text(
                  'Pengalaman baru dalam mengatur kunjungan dan peminjaman dengan mudah dan efisien.',
                  style: TextStyle(
                    fontFamily: 'Poppins-Regular',
                    fontSize: 17,
                    color: Color(0xff697586),
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                child: Image.asset(
                  'assets/images/hd-2.png',
                  // color: pageImageColor,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Kenali Fitur Utama Aplikasi Kami',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 10.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Pengalaman baru dalam mengatur kunjungan dan peminjaman dengan mudah dan efisien.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              const SizedBox(height: 90.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                child: Image.asset(
                  'assets/images/hd-3.png',
                  // color: pageImageColor,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Selamat Datang di Aplikasi Dcoll!',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 10.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Pelajari bagaimana aplikasi kami membantu mengelola aktivitas kunjungan anda.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  Material _nextButton({void Function(int)? setIndex}) {
    final isLastPage = index == onboardingPagesList.length;

    return Material(
        borderRadius: defaultSkipButtonBorderRadius,
        color: isLastPage ? const Color(0xff00636C) : Colors.transparent,
        child: InkWell(
          borderRadius: defaultSkipButtonBorderRadius,
          onTap: () {
            if (setIndex != null && !isLastPage) {
              setIndex(index + 1);
            }
          },
          child: Icon(
            Icons.chevron_right,
            color: isLastPage ? Colors.white : const Color(0xff00636C),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        pages: onboardingPagesList,
        onPageChange: (int pageIndex) {
          index = pageIndex;
        },
        startPageIndex: 0,
        footerBuilder: (context, netDragDistance, pagesLength, setIndex) {
          return Padding(
            padding: const EdgeInsets.all(45.0),
            child: Row(
              children: [
                CustomIndicator(
                  netDragPercent: netDragDistance,
                  pagesLength: pagesLength,
                  indicator: Indicator(
                    activeIndicator: const ActiveIndicator(
                      color: Color(0xffD9E8E9),
                    ),
                    closedIndicator: const ClosedIndicator(
                      color: Color(0xff00636C),
                    ),
                    indicatorDesign: IndicatorDesign.polygon(
                      polygonDesign: PolygonDesign(
                        polygon: DesignType.polygon_circle,
                      ),
                    ),
                  ),
                ),
                index == pagesLength ? _nextButton() : const SizedBox()
              ],
            ),
          );
        },
      ),
    );
  }
}
