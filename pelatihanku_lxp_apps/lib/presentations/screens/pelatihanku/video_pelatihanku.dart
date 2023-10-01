import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class VideoPelatihanku extends StatelessWidget {
  const VideoPelatihanku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Video',
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
      body: const Center(
        child: Text('Video'),
      ),
    );
  }
}
