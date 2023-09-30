import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/pelatihanku/list_pertemuan_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ViewCourseFix extends StatelessWidget {
  final bool isCompleted = false;

  final List<String> title = <String>[
    'Pelatihan Keterampilan Komunikasi',
    'Pelatihan Keterampilan Membaca',
    'Pelatihan Keterampilan Menulis',
    'Pelatihan Keterampilan Presentasi',
  ];

  final List<String> trainer = <String>[
    'Neneng Rohaye S.kom.',
    'Iqbal Ramadhan S.kom.',
    'Isnan Mulia S.kom., M.kom',
    'Rizky Darmawangsa S.kom., M.kom',
  ];

  final List<double> progress = <double>[
    0.3,
    0.5,
    0.86,
    0.65,
  ];

  ViewCourseFix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pelatihan-ku',
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
        padding: const EdgeInsets.only(top: 32.0),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListPertemuanPelatihanku(),
                )),
            child: Container(
              margin: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 16.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 16.0,
              ),
              height: 120,
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
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                          const SizedBox(height: 2),
                          Text(
                            trainer[index].toString(),
                            style: Style.textSks.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 8,
                        ),
                        height: 22,
                        color: ColorLxp.successLight,
                        child: Text(
                          '3 SKS',
                          style: Style.textSks.copyWith(
                            fontWeight: FontWeight.w400,
                            color: ColorLxp.successNormal,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          backgroundColor: ColorLxp.primaryLight,
                          borderRadius: BorderRadius.circular(10),
                          value: progress[index],
                          valueColor:
                              const AlwaysStoppedAnimation(ColorLxp.primary),
                          minHeight: 10,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${(progress[index] * 100).toStringAsFixed(0)}%',
                        style: Style.textIndicator.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 48,
        margin: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 16.0),
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorLxp.neutral300,
        ),
        child: Center(
          child: Text(
            'Selesai',
            style: Style.textButtonBlank.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}