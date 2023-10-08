import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ReplyDiskusi extends StatefulWidget {
  const ReplyDiskusi({super.key});

  @override
  State<ReplyDiskusi> createState() => _ReplyDiskusiState();
}

class _ReplyDiskusiState extends State<ReplyDiskusi> {
  bool isFavourite = true;
  int favouriteCount = 11;
  bool isComment = true;
  int commentCount = 3;

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
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              leading: const CircleAvatar(
                child: CircleAvatar(
                  radius: 33.0,
                  backgroundImage:
                      AssetImage("assets/images/profile_woman.jpg"),
                ),
              ),
              title: Text(
                'Neneng Rohaye',
                style: Style.textTitleCourse.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                '12.30',
                style: Style.textSks.copyWith(
                  fontWeight: FontWeight.w400,
                ),
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
                      child: Icon(
                        isFavourite ? Icons.favorite : Icons.favorite_outline,
                        color: ColorLxp.dangerNormal,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text('$favouriteCount'),
                  ],
                ),
                const SizedBox(width: 32),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => toogleComment(),
                      child: Icon(
                        isComment ? Icons.comment : Icons.comment_outlined,
                        color: ColorLxp.neutral500,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text('$commentCount'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
