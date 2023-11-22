import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class TeacherAssignmentView extends StatelessWidget {
  const TeacherAssignmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Penilaian Pengajar',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        // leading: GestureDetector(
        //   onTap: () => Navigator.pop(context),
        //   child: const Icon(Icons.chevron_left),
        // ),
        forceMaterialTransparency: true,
      ),
    );
  }
}
