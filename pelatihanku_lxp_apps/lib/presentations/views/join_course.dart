import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JoinCourse extends StatelessWidget {
  const JoinCourse({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/blank_content.svg';

    return Center(
      child: SvgPicture.asset(
        assetName,
        semanticsLabel: 'Join Course Logo',
      ),
    );
  }
}
