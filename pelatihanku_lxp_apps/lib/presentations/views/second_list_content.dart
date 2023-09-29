import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/checkbox_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/dropdown_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/model/duration_content.dart';
import 'package:pelatihanku_lxp_apps/presentations/model/title_content_two.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class SecondListContent extends StatefulWidget {
  const SecondListContent({super.key});

  @override
  State<SecondListContent> createState() => _SecondListContentState();
}

class _SecondListContentState extends State<SecondListContent> {
  bool isContentVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isContentVisible = !isContentVisible;
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
                        style:
                            Style.textSks.copyWith(color: ColorLxp.neutral800),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
              DropdownLxp(
                isContentVisible: isContentVisible,
                onVisibilityChanged: (value) {
                  setState(() {
                    isContentVisible = value;
                  });
                },
              ),
            ],
          ),
        ),
        Visibility(
          visible: isContentVisible,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                titleContent2.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
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
                            : const CheckboxLxp(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
