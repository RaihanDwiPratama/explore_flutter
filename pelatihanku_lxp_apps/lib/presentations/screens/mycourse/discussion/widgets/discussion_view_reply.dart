import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DiscussionViewReply extends StatefulWidget {
  const DiscussionViewReply({super.key});

  @override
  State<DiscussionViewReply> createState() => _DiscussionViewReplyState();
}

class _DiscussionViewReplyState extends State<DiscussionViewReply> {
  bool isFavourite = false;
  int favouriteCount = 11;
  bool isComment = false;
  int commentCount = 3;
  bool isReplyComment = false;

  void toogleFavourite() {
    setState(() {
      if (isFavourite) {
        favouriteCount -= 1;
        isFavourite = false;
      } else {
        favouriteCount += 1;
        isFavourite = true;
      }
    });
  }

  void toogleComment() {
    setState(() {
      if (isComment) {
        commentCount -= 1;
        isComment = false;
      } else {
        commentCount += 1;
        isComment = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Diskusi - Pertemuan 1',
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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: Image.asset("assets/images/neneng.png"),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Neneng Rohaye, S.Kom',
                      style: Style.textTitleCourse.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Pengajar',
                      style: Style.textSks.copyWith(
                        color: ColorLxp.neutral800,
                      ),
                    ),
                    Text(
                      '23 September 2023, 12.30',
                      style: Style.textSks.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                trailing: const Icon(
                  Icons.more_horiz_outlined,
                  color: ColorLxp.neutral800,
                ),
              ),
              const SizedBox(height: 10),
              Image.asset(
                'assets/images/img_diskusi.png',
                width: 340,
              ),
              const SizedBox(height: 20),
              Text(
                'Apa yang dimaksud dengan pernyataan "Yang penting kamu mengerti" dalam konteks komunikasi?',
                style: Style.textTitleCourse.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => toogleFavourite(),
                        child: SvgPicture.asset(
                          isFavourite
                              ? 'assets/icons/Heart.svg'
                              : 'assets/icons/HeartRed.svg',
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text('$favouriteCount'),
                    ],
                  ),
                  const SizedBox(width: 24),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => toogleComment(),
                        child: SvgPicture.asset(
                          'assets/icons/ChatTeardrop.svg',
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text('$commentCount'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(
                color: ColorLxp.neutral200,
                thickness: 1,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
