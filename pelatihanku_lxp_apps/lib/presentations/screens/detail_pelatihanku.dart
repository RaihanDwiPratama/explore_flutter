import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/checkbox_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';
import 'package:pelatihanku_lxp_apps/presentations/views/first_list_content.dart';
import 'package:pelatihanku_lxp_apps/presentations/views/second_list_content.dart';

class DetailPelatihanku extends StatefulWidget {
  const DetailPelatihanku({Key? key}) : super(key: key);

  @override
  State<DetailPelatihanku> createState() => _DetailPelatihankuState();
}

class _DetailPelatihankuState extends State<DetailPelatihanku> {
  bool isClicked = false;
  bool isContentVisible2 = false;

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
                const CheckboxLxp(),
              ],
            ),
            const SizedBox(height: 20),
            const FirstListContent(),
            const SizedBox(height: 30),
            const SecondListContent(),
          ],
        ),
      ),
    );
  }
}
