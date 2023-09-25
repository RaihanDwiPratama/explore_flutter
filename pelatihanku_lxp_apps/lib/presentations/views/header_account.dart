import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class HeaderAccount extends StatelessWidget {
  const HeaderAccount({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/profile_img.svg';

    return ListTile(
      leading: CircleAvatar(
        child: SvgPicture.asset(
          assetName,
          semanticsLabel: 'Profile image',
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'John Snow',
            style: Style.textButtonBlank.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'jhonsnow@gmail.com',
            style: Style.textSks.copyWith(
              color: ColorLxp.neutral300,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
