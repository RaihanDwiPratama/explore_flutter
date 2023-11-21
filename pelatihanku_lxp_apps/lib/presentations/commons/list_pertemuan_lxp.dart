import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/dropdown_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ListPertemuanLxp extends StatefulWidget {
  final String pertemuan;
  final VoidCallback onTapModul;
  final VoidCallback onTapKuis;
  final VoidCallback onTapTugas;
  final VoidCallback onTapDiskusi;
  final VoidCallback onTapMentoring;
  final VoidCallback onTapEksplorasi;
  final VoidCallback onTapPengajar;

  const ListPertemuanLxp({
    super.key,
    required this.pertemuan,
    required this.onTapModul,
    required this.onTapKuis,
    required this.onTapTugas,
    required this.onTapDiskusi,
    required this.onTapMentoring,
    required this.onTapEksplorasi,
    required this.onTapPengajar,
  });

  @override
  State<ListPertemuanLxp> createState() => _ListPertemuanLxpState();
}

class _ListPertemuanLxpState extends State<ListPertemuanLxp> {
  bool isContentVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isContentVisible = !isContentVisible;
            });
          },
          child: Container(
            color: isContentVisible ? ColorLxp.primary : null,
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 24.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.pertemuan,
                  style: isContentVisible
                      ? Style.textTitleCourse.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorLxp.white,
                        )
                      : Style.textTitleCourse.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                ),
                DropdownLxp(
                  isContentVisible: isContentVisible,
                  onVisibilityChanged: (value) {
                    setState(() {
                      isContentVisible = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: isContentVisible,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              GestureDetector(
                onTap: widget.onTapModul,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/Notebook.svg'),
                      const SizedBox(width: 8),
                      Text(
                        'Modul',
                        style: Style.textTitleCourse.copyWith(
                          color: ColorLxp.neutral500,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Divider(
                color: ColorLxp.neutral200,
                height: 1.0,
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: widget.onTapKuis,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/Exam.svg'),
                      const SizedBox(width: 8),
                      Text(
                        'Quiz',
                        style: Style.textTitleCourse.copyWith(
                          color: ColorLxp.neutral500,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Divider(
                color: ColorLxp.neutral200,
                height: 1.0,
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: widget.onTapTugas,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/Scroll.svg'),
                      const SizedBox(width: 8),
                      Text(
                        'Tugas',
                        style: Style.textTitleCourse.copyWith(
                          color: ColorLxp.neutral500,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Divider(
                color: ColorLxp.neutral200,
                height: 1.0,
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: widget.onTapDiskusi,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/Chats.svg'),
                      const SizedBox(width: 8),
                      Text(
                        'Diskusi',
                        style: Style.textTitleCourse.copyWith(
                          color: ColorLxp.neutral500,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Divider(
                color: ColorLxp.neutral200,
                height: 1.0,
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: widget.onTapMentoring,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/ChalkboardTeacher.svg'),
                      const SizedBox(width: 8),
                      Text(
                        'Live Mentoring',
                        style: Style.textTitleCourse.copyWith(
                          color: ColorLxp.neutral500,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Divider(
                color: ColorLxp.neutral200,
                height: 1.0,
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: widget.onTapEksplorasi,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/Shapes.svg'),
                      const SizedBox(width: 8),
                      Text(
                        'Refleksi Eksplorasi',
                        style: Style.textTitleCourse.copyWith(
                          color: ColorLxp.neutral500,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Divider(
                color: ColorLxp.neutral200,
                height: 1.0,
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: widget.onTapPengajar,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/Sidebar.svg'),
                      const SizedBox(width: 8),
                      Text(
                        'Penilaian Pengajar',
                        style: Style.textTitleCourse.copyWith(
                          color: ColorLxp.neutral500,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
