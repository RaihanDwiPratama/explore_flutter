import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ViewCourse extends StatefulWidget {
  const ViewCourse({super.key});

  @override
  State<ViewCourse> createState() => _ViewCourseState();
}

class _ViewCourseState extends State<ViewCourse> {
  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/img_content.svg';

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pelatihan-ku',
          style: Style.title,
        ),
        centerTitle: true,
        leading: const Icon(Icons.chevron_left),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListTile(
            leading: SvgPicture.asset(
              assetName,
              semanticsLabel: 'Course Logo',
            ),
            trailing: const Column(
              children: [
                Text('Pelatihan Keterampilan Komunikasi'),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.assignment),
                        Text('3 SKS'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_circle),
                        Text('14 Video'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.person_add),
                        Text('80'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
