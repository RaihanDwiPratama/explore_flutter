import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/add_comentar/screen/discussion_add_comentar.dart';

class DiscussionLikeCommentReply extends StatefulWidget {
  const DiscussionLikeCommentReply({super.key});

  @override
  State<DiscussionLikeCommentReply> createState() =>
      _DiscussionLikeCommentReplyState();
}

class _DiscussionLikeCommentReplyState
    extends State<DiscussionLikeCommentReply> {
  bool isFavourite = false;
  int favouriteCount = 11;
  bool isComment = false;
  // int commentCount = 3;
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

  // void toogleComment() {
  //   setState(() {
  //     if (isComment) {
  //       commentCount -= 1;
  //       isComment = false;
  //     } else {
  //       commentCount += 1;
  //       isComment = true;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
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
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DiscussionAddComentar(),
                  )),
              child: SvgPicture.asset(
                'assets/icons/ChatTeardrop.svg',
              ),
            ),
            const SizedBox(width: 4),
            const Text('3'),
          ],
        ),
      ],
    );
  }
}
