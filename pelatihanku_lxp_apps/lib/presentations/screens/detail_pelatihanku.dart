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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(24.0, 60.0, 24.0, 16.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '2',
                  style: Style.textButtonBlank.copyWith(
                    color: ColorLxp.neutral800,
                  ),
                ),
                const SizedBox(width: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dasar Keterampilan Komunikasi",
                      style: Style.textButtonBlank.copyWith(
                        color: ColorLxp.neutral500,
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.alarm,
                          color: ColorLxp.neutral500,
                        ),
                        SizedBox(width: 4),
                        Text('8 Mnt', style: Style.textSks),
                      ],
                    )
                  ],
                ),
                const SizedBox(width: 44),
                checkBox(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget checkBox(BuildContext context) {
    return Expanded(
      child: IconButton(
        icon: isClicked
            ? const Icon(Icons.check_box)
            : const Icon(Icons.check_box_outline_blank),
        onPressed: () {
          setState(() {
            isClicked = !isClicked;
          });
        },
        color: ColorLxp.neutral500,
      ),
    );
  }
}
