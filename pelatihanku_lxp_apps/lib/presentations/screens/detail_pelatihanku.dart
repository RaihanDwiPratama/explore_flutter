import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/views/header_course.dart';

class DetailPelatihanku extends StatelessWidget {
  const DetailPelatihanku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(24.0, 60.0, 24.0, 16.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderCourse(),
            // SizedBox(height: 20),
            // FirstListContent(),
            // SizedBox(height: 30),
            // SecondListContent(),
          ],
        ),
      ),
    );
  }
}