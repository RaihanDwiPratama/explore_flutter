import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DetailPelatihanku extends StatefulWidget {
  const DetailPelatihanku({Key? key}) : super(key: key);

  @override
  State<DetailPelatihanku> createState() => _DetailPelatihankuState();
}

class _DetailPelatihankuState extends State<DetailPelatihanku> {
  bool isClicked = false;
  bool isContentVisible1 = false;
  bool isContentVisible2 = false;

  List<String> titleContent1 = [
    'Pengenalan 1',
    'Keterampilan Komunikasi 1',
    'Tugas - Pertemuan 1',
    'Quiz - Pertemuan 1',
  ];

  List<String> titleContent2 = [
    'Pengenalan 2',
    'Keterampilan Komunikasi 2',
    'Tugas - Pertemuan 2',
    'Quiz - Pertemuan 2',
  ];

  List<String> durationContent = [
    '8 Menit',
    '8 Menit',
    '2 Hari',
    '1 Minggu',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(24.0, 60.0, 24.0, 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2',
                  style: Style.textButtonBlank.copyWith(
                    color: ColorLxp.neutral800,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dasar Keterampilan Komunikasi",
                      style: Style.textButtonBlank.copyWith(
                        color: ColorLxp.neutral500,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.alarm,
                          size: 18,
                          color: ColorLxp.neutral500,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '8 Mnt',
                          style: Style.textSks.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                checkBox(),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isContentVisible1 = !isContentVisible1;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pertemuan 1 - Pengenalan',
                            style: Style.textTitleCourse.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '0/2',
                                style: Style.textSks
                                    .copyWith(color: ColorLxp.neutral800),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  '|',
                                  style: Style.textSks
                                      .copyWith(color: ColorLxp.neutral800),
                                ),
                              ),
                              const Icon(
                                Icons.alarm,
                                size: 18,
                                color: ColorLxp.neutral800,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '16 Mnt',
                                style: Style.textSks.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: ColorLxp.neutral800,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        child: isContentVisible1
                            ? Transform.rotate(
                                angle: -math.pi / 2,
                                child: const Icon(
                                  Icons.chevron_right,
                                  color: ColorLxp.neutral800,
                                ),
                              )
                            : Transform.rotate(
                                angle: math.pi / 2,
                                child: const Icon(
                                  Icons.chevron_right,
                                  color: ColorLxp.neutral800,
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: isContentVisible1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        titleContent1.length,
                        (index) {
                          return Row(
                            children: [
                              Text(
                                (index + 1).toString(),
                                style: Style.textButtonBlank.copyWith(
                                  color: ColorLxp.neutral800,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    titleContent1[index],
                                    style: Style.textButtonBlank.copyWith(
                                      color: ColorLxp.neutral500,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.alarm,
                                        size: 18,
                                        color: ColorLxp.neutral500,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        durationContent[index],
                                        style: Style.textSks.copyWith(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const Spacer(),
                              index == 3
                                  ? const Icon(
                                      Icons.lock,
                                      color: ColorLxp.neutral500,
                                    )
                                  : checkBox(),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30), // Spasi antara dua dropdown
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isContentVisible2 = !isContentVisible2;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pertemuan 2 - Komunikasi',
                            style: Style.textTitleCourse.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '0/2',
                                style: Style.textSks
                                    .copyWith(color: ColorLxp.neutral800),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  '|',
                                  style: Style.textSks
                                      .copyWith(color: ColorLxp.neutral800),
                                ),
                              ),
                              const Icon(
                                Icons.alarm,
                                size: 18,
                                color: ColorLxp.neutral800,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '16 Mnt',
                                style: Style.textSks.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: ColorLxp.neutral800,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        child: isContentVisible2
                            ? Transform.rotate(
                                angle: -math.pi / 2,
                                child: const Icon(
                                  Icons.chevron_right,
                                  color: ColorLxp.neutral800,
                                ),
                              )
                            : Transform.rotate(
                                angle: math.pi / 2,
                                child: const Icon(
                                  Icons.chevron_right,
                                  color: ColorLxp.neutral800,
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: isContentVisible2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        titleContent2.length,
                        (index) {
                          return Row(
                            children: [
                              Text(
                                (index + 1).toString(),
                                style: Style.textButtonBlank.copyWith(
                                  color: ColorLxp.neutral800,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    titleContent2[index],
                                    style: Style.textButtonBlank.copyWith(
                                      color: ColorLxp.neutral500,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.alarm,
                                        size: 18,
                                        color: ColorLxp.neutral500,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        durationContent[index],
                                        style: Style.textSks.copyWith(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const Spacer(),
                              index == 3
                                  ? const Icon(
                                      Icons.lock,
                                      color: ColorLxp.neutral500,
                                    )
                                  : checkBox(),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget checkBox() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: SizedBox(
        child: isClicked
            ? const Icon(
                Icons.check_box,
                color: ColorLxp.successNormal,
              )
            : const Icon(
                Icons.check_box_outline_blank,
                color: ColorLxp.neutral500,
              ),
      ),
    );
  }
}