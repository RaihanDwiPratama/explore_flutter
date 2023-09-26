import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class HeaderAccount extends StatelessWidget {
  const HeaderAccount({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/profile_woman.jpg';

    return Container(
      color: ColorLxp.primary,
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 80.0,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 35.0,
                backgroundColor: ColorLxp.white,
                child: CircleAvatar(
                  radius: 33.0,
                  backgroundImage: AssetImage(assetName),
                ),
              ),
              const SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Anne Marry',
                    style: Style.textButtonBlank.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'annemarry@gmail.com',
                    style: Style.textSks.copyWith(
                      color: ColorLxp.neutral300,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ],
          ),
          Positioned(
            bottom: -120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 48.0,
                      height: 80,
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: ColorLxp.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 221, 228, 239),
                            blurRadius: 10.0,
                            // spreadRadius: 1,
                            offset: Offset(0, 1),
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Score',
                                style: Style.textSks.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: ColorLxp.black,
                                ),
                              ),
                              Text(
                                '14252',
                                style: Style.textPoint.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Transform.flip(
                                flipX: true,
                                child: const Icon(
                                  Icons.bar_chart_outlined,
                                  color: ColorLxp.neutral800,
                                  size: 28,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Rank',
                                style: Style.textSks.copyWith(
                                  color: ColorLxp.neutral800,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
