import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_like_comment_reply.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DiscussionReply extends StatelessWidget {
  const DiscussionReply({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          leading: Image.asset("assets/images/aldi.png"),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Aldi Taher',
                style: Style.textTitleCourse.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Siswa',
                style: Style.textSks.copyWith(
                  color: ColorLxp.neutral800,
                ),
              ),
              Text(
                '23 September 2023, 15.30',
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
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 28),
            SvgPicture.asset('assets/images/line.svg'),
            const SizedBox(width: 18),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 270,
                  child: Text(
                    'Dalam konteks ini, yang menjadi fokus utama adalah pemahaman dan pengertian yang diperoleh oleh pendengar terhadap pesan yang disampaikan.',
                    maxLines: 5,
                    style: Style.textTitleCourse.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const DiscussionLikeCommentReply(),
              ],
            ),
          ],
        ),

        const SizedBox(height: 10),
        const Divider(
          color: ColorLxp.neutral200,
          thickness: 1,
        ),
        // ListTile(
        //   contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        //   leading: const CircleAvatar(
        //     child: CircleAvatar(
        //       radius: 33.0,
        //       backgroundImage: AssetImage("assets/images/bob.png"),
        //     ),
        //   ),
        //   title: Text(
        //     'Bob Marley',
        //     style: Style.textTitleCourse.copyWith(
        //       fontWeight: FontWeight.w600,
        //     ),
        //   ),
        //   subtitle: Text(
        //     '13.00',
        //     style: Style.textSks.copyWith(
        //       fontWeight: FontWeight.w400,
        //     ),
        //   ),
        //   trailing: const Icon(
        //     Icons.more_horiz_outlined,
        //     color: ColorLxp.neutral800,
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 56.0),
        //   child: Image.asset(
        //     'assets/images/img_reply_person.png',
        //     width: 120,
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 56.0),
        //   child: Text(
        //     'Dengan kata lain, pesan ini menggambarkan bahwa tidak hanya berbicara yang penting, tetapi juga memastikan bahwa apa yang telah disampaikan oleh pembicara telah dipahami dengan benar oleh pendengar',
        //     style: Style.textTitleCourse.copyWith(
        //       fontWeight: FontWeight.w400,
        //     ),
        //   ),
        // ),
        // const SizedBox(height: 16),
        // Padding(
        //   padding: const EdgeInsets.only(left: 56.0),
        //   child: Row(
        //     children: [
        //       Row(
        //         children: [
        //           GestureDetector(
        //             onTap: () => toogleFavourite(),
        //             child: Icon(
        //               isFavourite ? Icons.favorite : Icons.favorite_outline,
        //               color: ColorLxp.dangerNormal,
        //             ),
        //           ),
        //           const SizedBox(width: 4),
        //           Text('$favouriteCount'),
        //         ],
        //       ),
        //       const SizedBox(width: 32),
        //       Row(
        //         children: [
        //           GestureDetector(
        //             onTap: () => toogleComment(),
        //             child: Icon(
        //               isComment ? Icons.comment : Icons.comment_outlined,
        //               color: ColorLxp.neutral500,
        //             ),
        //           ),
        //           const SizedBox(width: 4),
        //           Text('$commentCount'),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        // const SizedBox(height: 10),
        // const Divider(
        //   color: ColorLxp.neutral200,
        //   thickness: 1,
        // ),
        // ListTile(
        //   contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        //   leading: const CircleAvatar(
        //     child: CircleAvatar(
        //       radius: 33.0,
        //       backgroundImage: AssetImage("assets/images/aldi.png"),
        //     ),
        //   ),
        //   title: Text(
        //     'Aldi Taher',
        //     style: Style.textTitleCourse.copyWith(
        //       fontWeight: FontWeight.w600,
        //     ),
        //   ),
        //   subtitle: Text(
        //     '13.00',
        //     style: Style.textSks.copyWith(
        //       fontWeight: FontWeight.w400,
        //     ),
        //   ),
        //   trailing: const Icon(
        //     Icons.more_horiz_outlined,
        //     color: ColorLxp.neutral800,
        //   ),
        // ),
        // ListTile(
        //   leading: const VerticalDivider(
        //     color: ColorLxp.neutral300,
        //     thickness: 2,
        //   ),
        //   title: Column(
        //     children: [
        //       Text(
        //         'Dalam konteks ini, yang menjadi fokus utama adalah pemahaman dan pengertian yang diperoleh oleh pendengar terhadap pesan yang disampaikan.',
        //         style: Style.textTitleCourse.copyWith(
        //           fontWeight: FontWeight.w400,
        //         ),
        //       ),
        //       const SizedBox(height: 16),
        //       Row(
        //         children: [
        //           Row(
        //             children: [
        //               GestureDetector(
        //                 onTap: () => toogleFavourite(),
        //                 child: Icon(
        //                   isFavourite ? Icons.favorite : Icons.favorite_outline,
        //                   color: ColorLxp.dangerNormal,
        //                 ),
        //               ),
        //               const SizedBox(width: 4),
        //               Text('$favouriteCount'),
        //             ],
        //           ),
        //           const SizedBox(width: 32),
        //           Row(
        //             children: [
        //               GestureDetector(
        //                 onTap: () => toogleComment(),
        //                 child: Icon(
        //                   isComment ? Icons.comment : Icons.comment_outlined,
        //                   color: ColorLxp.neutral500,
        //                 ),
        //               ),
        //               const SizedBox(width: 4),
        //               Text('$commentCount'),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        // const SizedBox(height: 10),
        // const Divider(
        //   color: ColorLxp.neutral200,
        //   thickness: 1,
        // ),
      ],
    );
  }
}
