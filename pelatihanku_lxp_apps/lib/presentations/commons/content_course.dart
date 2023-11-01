// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ContentCourse extends StatelessWidget {
  final String title;
  final String trainee;

  const ContentCourse({
    Key? key,
    required this.title,
    required this.trainee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 180,
          child: Text(
            title,
            style: Style.textButtonBlank.copyWith(
              color: ColorLxp.neutral800,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 2,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 4, bottom: 8),
          child: Text(
            trainee,
            style: Style.textSks.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          width: 185,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/icons/Notebook.svg'),
                  const SizedBox(width: 4),
                  Text(
                    '3 SKS',
                    style: Style.textSks.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/PlayCircle.svg'),
                  const SizedBox(width: 4),
                  Text(
                    '14 Video',
                    style: Style.textSks.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/UsersThree.svg'),
                  const SizedBox(width: 4),
                  Text(
                    '80',
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
    );
  }
}
