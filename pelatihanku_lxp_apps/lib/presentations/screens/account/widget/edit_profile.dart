import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/neneng.png';

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          color: ColorLxp.primary,
          height: MediaQuery.of(context).size.height / 4,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 48.0,
          child: const CircleAvatar(
            radius: 35.0,
            backgroundColor: ColorLxp.white,
            child: CircleAvatar(
              radius: 33.0,
              backgroundImage: AssetImage(assetName),
            ),
          ),
        )
      ],
    );
  }
}
