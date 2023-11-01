import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/reply_diskusi.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class AddComentar extends StatefulWidget {
  const AddComentar({super.key});

  @override
  State<AddComentar> createState() => _AddComentarState();
}

class _AddComentarState extends State<AddComentar> {
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
        child: Container(
          padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              ListTile(
                leading: const VerticalDivider(
                  color: ColorLxp.neutral200,
                  thickness: 2,
                ),
                title: Text(
                  'Apa yang dimaksud dengan pernyataan "Yang penting kamu mengerti" dalam konteks komunikasi?',
                  style: Style.textTitleCourse.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
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
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(12),
                  hintText: 'Buat rangkuman...',
                  hintStyle: Style.textTitleCourse.copyWith(
                    color: ColorLxp.neutral500,
                    fontWeight: FontWeight.w500,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    gapPadding: 6.0,
                    borderSide: BorderSide(
                      color: ColorLxp.neutral200,
                    ),
                  ),
                ),
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
            builder: (context) => const ReplyDiskusi(),
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
