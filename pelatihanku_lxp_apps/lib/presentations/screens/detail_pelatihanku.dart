import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/list_pertemuan_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DetailPelatihanku extends StatelessWidget {
  const DetailPelatihanku({super.key});

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
        forceMaterialTransparency: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListPertemuanLxp(pertemuan: 'Pertemuan 1'),
              SizedBox(height: 20),
              ListPertemuanLxp(pertemuan: 'Pertemuan 2'),
              SizedBox(height: 20),
              ListPertemuanLxp(pertemuan: 'Pertemuan 3'),
              SizedBox(height: 20),
              ListPertemuanLxp(pertemuan: 'Pertemuan 4'),
              SizedBox(height: 20),
              ListPertemuanLxp(pertemuan: 'Pertemuan 5'),
              SizedBox(height: 20),
              ListPertemuanLxp(pertemuan: 'Pertemuan 6'),
              SizedBox(height: 20),
              ListPertemuanLxp(pertemuan: 'Pertemuan 7'),
            ],
          ),
        ),
      ),
    );
  }
}
