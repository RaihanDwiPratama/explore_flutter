import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/add_comentar/widgets/add_comentar_post.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_view_reply.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DiscussionAddComentar extends StatefulWidget {
  const DiscussionAddComentar({super.key});

  @override
  State<DiscussionAddComentar> createState() => _DiscussionAddComentarState();
}

class _DiscussionAddComentarState extends State<DiscussionAddComentar> {
  bool _isEnabled = false;
  final _rangkuman = TextEditingController();

  final List<String> content = <String>[
    'Upload Foto',
    'Upload Video',
    'Upload File',
    'Kamera',
  ];

  final List<String> icons = <String>[
    'assets/icons/Image.svg',
    'assets/icons/FileVideo.svg',
    'assets/icons/File.svg',
    'assets/icons/Camera.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tambah Komentar',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AddComentarPost(),
              const SizedBox(height: 20),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/fauzi.png',
                    width: 40,
                  ),
                  Flexible(
                    child: TextField(
                      controller: _rangkuman,
                      maxLines: 10,
                      onChanged: (value) {
                        if (value.length >= 10) {
                          setState(() {
                            _isEnabled = true;
                          });
                        } else {
                          setState(() {
                            _isEnabled = false;
                          });
                        }
                      },
                      decoration: Style.nonBorder,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                child: ListView.builder(
                  itemCount: content.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                      horizontalTitleGap: 8.0,
                      visualDensity: const VisualDensity(vertical: -4.0),
                      leading: SvgPicture.asset(
                        icons[index],
                        width: 20,
                      ),
                      title: Text(
                        content[index],
                        style: Style.textTitleCourse.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DiscussionViewReply(),
          ),
        ),
        child: Container(
          height: 48.0,
          margin: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: _isEnabled ? ColorLxp.primary : ColorLxp.neutral300,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Kirim',
              style: Style.textButtonBlank.copyWith(
                color: ColorLxp.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
