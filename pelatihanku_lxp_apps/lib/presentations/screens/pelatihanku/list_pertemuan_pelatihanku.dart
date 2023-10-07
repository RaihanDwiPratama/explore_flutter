import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/list_pertemuan_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/pelatihanku/diskusi/blank_diskusi.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/pelatihanku/modul_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ListPertemuanPelatihanku extends StatelessWidget {
  const ListPertemuanPelatihanku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pertemuan',
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
      body: Container(
        margin: const EdgeInsets.only(top: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListPertemuanLxp(
                pertemuan: 'Pertemuan 1',
                onTapModul: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ModulPelatihanku(),
                    ),
                  );
                },
                onTapDiskusi: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BlankDiskusi(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    int pertemuanNumber = index + 1;
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 36.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pertemuan ${pertemuanNumber + 1}',
                            style: Style.textTitleCourse.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Icon(
                            Icons.lock,
                            color: ColorLxp.neutral500,
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
