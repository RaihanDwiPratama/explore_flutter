import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/views/first_list_content.dart';

class HeaderCourse extends StatelessWidget {
  const HeaderCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return const FirstListContent();
    
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     Text(
    //       '2',
    //       style: Style.textButtonBlank.copyWith(
    //         color: ColorLxp.neutral800,
    //         fontWeight: FontWeight.w500,
    //       ),
    //     ),
    //     const SizedBox(width: 12),
    //     Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Text(
    //           "Dasar Keterampilan Komunikasi",
    //           style: Style.textButtonBlank.copyWith(
    //             color: ColorLxp.neutral500,
    //             fontWeight: FontWeight.w500,
    //             fontSize: 15,
    //           ),
    //         ),
    //         Row(
    //           children: [
    //             const Icon(
    //               Icons.alarm,
    //               size: 18,
    //               color: ColorLxp.neutral500,
    //             ),
    //             const SizedBox(width: 4),
    //             Text(
    //               '8 Mnt',
    //               style: Style.textSks.copyWith(
    //                 fontWeight: FontWeight.w400,
    //               ),
    //             ),
    //           ],
    //         )
    //       ],
    //     ),
    //     const Spacer(),
    //     const CheckboxLxp(),
    //   ],
    // );
  }
}
