import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ViewCourse extends StatefulWidget {
  const ViewCourse({super.key});

  @override
  State<ViewCourse> createState() => _ViewCourseState();
}

class _ViewCourseState extends State<ViewCourse> {
  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/blank_content.svg';

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pelatihan-ku',
          style: Style.title,
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.chevron_left)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 130,
            // color: Colors.amber,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  assetName,
                  semanticsLabel: 'Course Logo',
                  width: 102,
                ),
                const SizedBox(width: 16),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 185,
                      child: Text(
                        'Pelatihan Keterampilan Komunikasi',
                        style: Style.textTitleCourse,
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(
                      width: 185,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.assignment_outlined,
                                size: 16,
                                color: ColorLxp.infoNormal,
                              ),
                              SizedBox(width: 4),
                              Text('3 SKS', style: Style.textSks),
                            ],
                          ),
                          Row(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.play_circle_outline,
                                size: 16,
                                color: ColorLxp.infoNormal,
                              ),
                              SizedBox(width: 4),
                              Text('14 Video', style: Style.textSks),
                            ],
                          ),
                          Row(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.person_add_outlined,
                                size: 16,
                                color: ColorLxp.infoNormal,
                              ),
                              SizedBox(width: 4),
                              Text('80', style: Style.textSks),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      color: Colors.amber,
                      child: LinearProgressIndicator(
                        backgroundColor: ColorLxp.primaryLight,
                        borderRadius: BorderRadius.circular(10),
                        value: 0.1,
                        valueColor:
                            const AlwaysStoppedAnimation(ColorLxp.primary),
                        minHeight: 10,
                        semanticsLabel: '10%    ',
                      ),
                    ),
                    const Text(
                      '10%',
                      style: TextStyle(
                        fontFamily: 'Poppins_Regular',
                        fontSize: 10,
                        height: 18 / 10,
                        color: ColorLxp.neutral500,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
