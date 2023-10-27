import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/dasar_komunikasi.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ModulPelatihanku extends StatelessWidget {
  final bool isCompleted = false;

  final List<String> title = <String>[
    'Keterampilan Komunikasi',
    'Dasar Komunikasi',
    'Komunikasi Non-Verbal',
    'Presentasi dan Negosiasi',
    'Komunikasi Antarbudaya',
  ];

  final List<String> subtitle = <String>[
    'Modul 1 merupakan langkah awal dalam perjalanan ',
    'Modul 1 merupakan langkah awal dalam perjalanan ',
    'Modul 1 merupakan langkah awal dalam perjalanan ',
    'Modul 1 merupakan langkah awal dalam perjalanan ',
    'Modul 1 merupakan langkah awal dalam perjalanan ',
  ];

  ModulPelatihanku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Modul',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.chevron_left),
        ),
        forceMaterialTransparency: true,
      ),
      body: ListView.builder(
        itemCount: title.length,
        padding: const EdgeInsets.only(top: 24.0),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DasarKomunikasi(),
                )),
            child: Container(
              margin: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 16.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 16.0,
              ),
              height: 135,
              decoration: BoxDecoration(
                color: ColorLxp.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 223, 226, 231),
                    blurRadius: 20.0,
                    spreadRadius: 4,
                    offset: Offset(0, 1),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Book.svg',
                        height: 77,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 200,
                            child: Text(
                              title[index].toString(),
                              style: Style.textTitleCourse.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 2,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4, bottom: 8),
                            width: 190,
                            child: Text(
                              subtitle[index].toString(),
                              style: Style.textSks.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 185,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/Video.svg'),
                                    const SizedBox(width: 4),
                                    Text(
                                      '3 SKS',
                                      style: Style.textSks.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 16),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/FilePdf.svg'),
                                    const SizedBox(width: 4),
                                    Text(
                                      '14 Video',
                                      style: Style.textSks.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
