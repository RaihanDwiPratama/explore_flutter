import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ReplyDiskusi extends StatefulWidget {
  const ReplyDiskusi({super.key});

  @override
  State<ReplyDiskusi> createState() => _ReplyDiskusiState();
}

class _ReplyDiskusiState extends State<ReplyDiskusi> {
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
                title: Text(
                  'Neneng Rohaye',
                  style: Style.textTitleCourse.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  '12.30',
                  style: Style.textSks.copyWith(
                    fontWeight: FontWeight.w500,
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
              ),
              const SizedBox(height: 10),
              const Divider(
                color: ColorLxp.neutral200,
                thickness: 1,
              ),
              const SizedBox(height: 10),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: const CircleAvatar(
                  child: CircleAvatar(
                    radius: 33.0,
                    backgroundImage: AssetImage("assets/images/aldi.png"),
                  ),
                ),
                title: Text(
                  'Aldi Taher',
                  style: Style.textTitleCourse.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  '13.00',
                  style: Style.textSks.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: const Icon(
                  Icons.more_horiz_outlined,
                  color: ColorLxp.neutral800,
                ),
              ),
              ListTile(
                leading: const VerticalDivider(
                  color: ColorLxp.neutral300,
                  thickness: 2,
                ),
                title: Column(
                  children: [
                    Text(
                      'Dalam konteks ini, yang menjadi fokus utama adalah pemahaman dan pengertian yang diperoleh oleh pendengar terhadap pesan yang disampaikan.',
                      style: Style.textTitleCourse.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () => toogleFavourite(),
                              child: Icon(
                                isFavourite
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
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
                                isComment
                                    ? Icons.comment
                                    : Icons.comment_outlined,
                                color: ColorLxp.neutral500,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text('$commentCount'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                color: ColorLxp.neutral200,
                thickness: 1,
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: const CircleAvatar(
                  child: CircleAvatar(
                    radius: 33.0,
                    backgroundImage: AssetImage("assets/images/owen.png"),
                  ),
                ),
                title: Text(
                  'Owen Arya',
                  style: Style.textTitleCourse.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  '13.00',
                  style: Style.textSks.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: const Icon(
                  Icons.more_horiz_outlined,
                  color: ColorLxp.neutral800,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 56.0),
                child: Text(
                  'Dalam konteks ini, yang menjadi fokus utama adalah pemahaman dan pengertian yang diperoleh oleh pendengar terhadap pesan yang disampaikan.',
                  style: Style.textTitleCourse.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 56.0),
                child: Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => toogleFavourite(),
                          child: Icon(
                            isFavourite
                                ? Icons.favorite
                                : Icons.favorite_outline,
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
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                color: ColorLxp.neutral200,
                thickness: 1,
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: const CircleAvatar(
                  child: CircleAvatar(
                    radius: 33.0,
                    backgroundImage: AssetImage("assets/images/bob.png"),
                  ),
                ),
                title: Text(
                  'Bob Marley',
                  style: Style.textTitleCourse.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  '13.00',
                  style: Style.textSks.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: const Icon(
                  Icons.more_horiz_outlined,
                  color: ColorLxp.neutral800,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 56.0),
                child: Image.asset(
                  'assets/images/img_reply_person.png',
                  width: 120,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 56.0),
                child: Text(
                  'Dengan kata lain, pesan ini menggambarkan bahwa tidak hanya berbicara yang penting, tetapi juga memastikan bahwa apa yang telah disampaikan oleh pembicara telah dipahami dengan benar oleh pendengar',
                  style: Style.textTitleCourse.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 56.0),
                child: Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => toogleFavourite(),
                          child: Icon(
                            isFavourite
                                ? Icons.favorite
                                : Icons.favorite_outline,
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
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                color: ColorLxp.neutral200,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
