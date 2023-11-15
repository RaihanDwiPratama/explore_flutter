import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';

class DetailQuizView extends StatelessWidget {
  const DetailQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.chevron_left),
        ),
        foregroundColor: ColorLxp.white,
        flexibleSpace: SvgPicture.asset(
          'assets/images/kuis.svg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
